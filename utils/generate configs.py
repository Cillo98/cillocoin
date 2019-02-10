import os

conf = "server=1\ngen=1\nrpcbind=0.0.0.0\nrpcuser=rpcuser\nrpcpassword=111111\nrpcallowip=127.0.0.1\nrpcallowip=0.0.0.0/0\ndnsseed=0"
gen_path = "cillocoin/configs/"
i_from = 1
i_to = 10

for i in range(5, i_to):
	path = gen_path + str(i)
	if not os.path.exists(path):
		os.makedirs(path)
	f = open(path+"/cillocoin.conf", "a+")
	f.write(conf)
	f.write("\nport=" + str(5000+i*2))
	f.write("\nrpcport=" + str(4999+i*2))
	f.write("\nlisten=1\ndebug=1")
	f.write("\naddnode=127.0.0.1:" + str(4998+i*2))


