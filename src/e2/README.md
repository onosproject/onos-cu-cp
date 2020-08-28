## Build

```shell
$ mkdir build
$ cd build/
$ cmake ..
$ make
```

Install missingpackages if required:
```shell
$ sudo apt-get update
$ sudo apt-get install -y build-essential git cmake libsctp-dev lksctp-tools autoconf automake libtool bison flex libboost-all-dev
```
## Run
Start ricsim:
```shell
$ cd build
$ ./ricsim 127.0.0.1 36421
```
Start e2sim:
```shell
$ cd build
$ ./e2sim 127.0.0.1 36421
```
