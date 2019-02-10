no_list = {"tor:", "getblocktemplate", " ping ", " pong "}
for i in range(1, 5):
	with open("Desktop/"+str(i)+".log", "r") as r:
		with open("Desktop/"+str(i)+"-clean.log", "a+") as w:
			for line in r:
				if not any(s in line for s in no_list):
					w.write(line)
