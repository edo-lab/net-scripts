#!/usr/bin/env python

"""
Swiss knife for hack3rs
With this tool you have fast access to a variety of useful functions
"""

import random

def genWinName():
	""" Generate a windows like hostname
	"""
	a = "ABCDEFGHIJKLMNOPQRSTUVWXYZ0123456789"
	print("DESKTOP-",end= "")
	for i in range(0,7):
		print(a[random.randrange(0,35)], end="")
	print()


def genMacAddr():
	""" Generate a random mac addr
	"""
	#hexNum = hex(random.getrandbits(48)).lstrip("0x").rstrip("L")
	macaddr = ":".join([hex(random.getrandbits(48)).lstrip("0x").rstrip("L")[i:i+2] for i in range(0,12,2)])
	print(macaddr)

def genIPv4():
	""" Generate a random ipv4 addr
	"""
	ip = ".".join([str(random.randrange(0,256)) for i in range(0,4)])
	print(ip)

def main():
	help = """
1. Gen a random Windows like hostname
2. Gen a random MAC address
3. Gen a random IPv4 address
4. Gen a random IPv6 address
"""
	inp = "help"
	while(True):
		if inp == "1":
			genWinName()
		elif inp == "2":
			genMacAddr()
		elif inp == "3":
			genIPv4()
		elif inp == "9": 
			print(help)
		elif inp == "0":
			break
		inp = input("> ")

if __name__ == '__main__':
	main()
