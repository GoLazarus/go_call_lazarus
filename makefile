all:lazalib gocall

gocall:
	go build
	./go_call_lazarus

lazalib:
	lazbuild go_call_lazarus.lpi