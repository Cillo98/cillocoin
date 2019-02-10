#!/usr/bin/env python

def main():
	for i in range(1,3):
		f = open("/home/thomas/cillocoin/configs/{}/debug.log".format(i), "r")
		print("\n\n\n*********************")
		print("*** OPENING NODE {}***".format(i))
		print("*********************\n")

		for line in f.readlines():
			if "libevent" not in line and line != "\n":
				print(line)

main()
