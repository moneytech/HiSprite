#!/usr/bin/python

import sys,os,png

class Colors:
	black,magenta,green,orange,blue = range(5)



def main(argv):
	
	if len(argv)<1:
		printHorzontalLookup()
		exit(0)

	pngfile = sys.argv[1]

	reader = png.Reader(pngfile)
	try:
		pngdata = reader.asRGB8()
	except:
		usage()

	width = pngdata[0]
	height = pngdata[1]
	pixeldata = pngdata[2]	
	byteWidth = width/2+1+1	 # TODO: Calculate a power of two for this
	niceName = os.path.splitext(pngfile)[0].upper()
	
	disclaimer()
	
	print "%s: ;%d bytes per row" % (niceName,byteWidth)	
	print "\tSAVE_AXY"
	print "\tldy PARAM0"
	print "\tldx MOD7_2,y"
	print "\tjmp (%s_JMP,x)\n" % (niceName)
	
	print "%s_JMP:" % (niceName)	
	for shift in range(0,7):
		print "\t.addr %s_SHIFT%d" % (niceName,shift)

	print "\n"
	for shift in range(0,7):
		print "%s_SHIFT%d:" % (niceName,shift)
		print "\tldy PARAM0\n"
		print "\tldx PARAM1"
		print rowStartCalculatorCode();

		spriteChunks = layoutSpriteChunk(pixeldata,width,height,shift)
		
		for row in range(height):
			for chunkIndex in range(len(spriteChunks)):
				print spriteChunks[chunkIndex][row]
			
		print "\n"				
			
		
	

def layoutSpriteChunk(pixeldata,width,height,shift):

	bitmap = [[0 for x in range(width)] for y in range(height)]
	
	byteWidth = width/2+1+1	 # TODO: Calculate a power of two for this
	spriteChunks = [["" for y in range(height)] for x in range(byteWidth)]

	for row in range(height):
		pixelRow = bitmap[row]
		bitStream = ""
		
		for pixelIndex in range(width):
			pixel = pixelColor(pixeldata,row,pixelIndex)
			if pixel == Colors.black:
				bitStream += "00"
			else:
				if pixel == Colors.green or pixel == Colors.orange:
					bitStream += "01"
				else:
					bitStream += "10"
		
		bitStream = shiftStringRight(bitStream,shift)
		bitStream = bitStream[:byteWidth*8]
				
		bitPos = 0
		byteSplits = [0 for x in range(byteWidth)]
		
		for byteIndex in range(byteWidth):
			remainingBits = len(bitStream) - bitPos
				
			bitChunk = ""
			
			if remainingBits < 0:
				bitChunk = "0000000"
			else:	
				if remainingBits < 7:
					bitChunk = bitStream[bitPos:]
					bitChunk += fillOutByte(7-remainingBits)
				else:	
					bitChunk = bitStream[bitPos:bitPos+7]				
		
			bitChunk = bitChunk[::-1]
				
			highBit = "0"
			if pixel == Colors.orange or pixel == Colors.blue:
				highBit = "1"
				
			byteSplits[byteIndex] = highBit + bitChunk
			bitPos += 7
				
		for chunkIndex in range(len(byteSplits)):
			if (not byteSplits[chunkIndex].endswith("0000000")):			
				spriteChunks[chunkIndex][row] = \
				"\tlda #%%%s\n" % byteSplits[chunkIndex] + \
				"\tora (SCRATCH0),y\n" + \
				"\tsta (SCRATCH0),y\n";
			
			if chunkIndex == len(byteSplits)-1:
				spriteChunks[chunkIndex][row] += "\n"
			else:	
				spriteChunks[chunkIndex][row] += "\tiny"
	
		if row<height-1:
			spriteChunks[chunkIndex][row] += "\tinx\n" + rowStartCalculatorCode();
		else:
			spriteChunks[chunkIndex][row] += "\tRESTORE_AXY\n"
			spriteChunks[chunkIndex][row] += "\trts\n"
			
	return spriteChunks
				

def rowStartCalculatorCode():
	return \
	"\tlda HGRROWS_H,x\n" + \
	"\tsta SCRATCH1\n" + \
	"\tlda HGRROWS_L,x\n" + \
	"\tsta SCRATCH0\n" + \
	"\tldy PARAM0\n" + \
	"\tlda DIV7_2,y\n" + \
	"\ttay\n";		
			
def fillOutByte(numBits):
	filler = ""
	for bit in range(numBits):
		filler += "0"
	
	return filler


def shiftStringRight(string,shift):
	if shift==0:
		return string
	
	shift *=2	
	result = ""
	
	for i in range(shift):
		result += "0"
		
	result += string
	return result
				
				
def pixelColor(pixeldata,row,col):
	r = pixeldata[row][col*3]
	g = pixeldata[row][col*3+1]
	b = pixeldata[row][col*3+2]
	color = Colors.black
	
	if r==255 and g==0 and b==255:
		color = Colors.magenta
	else:
		if r==0 and g==255 and b==0:
			color = Colors.green
		else:
			if r==0 and g==0 and b==255:
				color = Colors.blue
			else:
				if r==255 and g>0 and b==0:
					color = Colors.orange

	return color
	

def printHorzontalLookup():
	disclaimer()
	
	print "DIV7_2:"
	for pixel in range(140):
		print "\t.byte $%02x" % ((pixel / 7)*2)

	print "\n\nMOD7_2:"
	for pixel in range(140):
		print "\t.byte $%02x" % ((pixel % 7)*2)
		
		
def usage():
	print '''
Usage: HiSprite <png file>

PNG file must not have an alpha channel!
'''
	sys.exit(2)
	

def disclaimer():
	print '''
; This file was generated by SpriteGenerator.py, a sprite generation tool by Quinn Dunki.
; If you feel the need to modify this file, you are probably doing it wrong.
'''
	return


if __name__ == "__main__":
	main(sys.argv[1:])
	