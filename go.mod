module github.com/bdhood/vnc-recorder-server

go 1.13

require (
	github.com/amitbet/vnc2video v0.0.0-20190616012314-9d50b9dab1d9
	github.com/cpuguy83/go-md2man/v2 v2.0.0 // indirect
	github.com/google/uuid v1.2.0
	github.com/urfave/cli/v2 v2.2.0
)

replace github.com/amitbet/vnc2video => github.com/pczerkas/vnc2video v1.0.0
