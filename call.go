package main

// #cgo CFLAGS: -I.
// #cgo LDFLAGS:-L. -lgo_call_lazarus
// void PrintMe(char* s);
// char* DemoFunction(char* s);
import "C"
import (
	"fmt"
)

func main() {
	C.PrintMe(C.CString("Golang"))
	var rs *C.char
	rs = C.DemoFunction(C.CString("GOGOGO"))
	C.PrintMe(rs)
	// fmt.Println(C.GoString(rs))
	fmt.Println("rs=", C.GoString(rs))
}
