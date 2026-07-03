# Picolibc Build

These are convience scripts and build files for configuring and building Picolibc for lab projects. Prebuilt binaries for each configuration are included in the repository; however, you can customize and run the scripts per your use cases.

Picolibc is a submodule; you can clone it with this command:

```
git submodule update --init --recursive
```

## Building

The main script is `build-picolibc.sh`. This should work for most use cases; just run it from the project root.

By default it builds all included configurations. You can open it up and disable or add what you want/don't want.

Architecture files and build scripts are in the `/scripts` folder. If you want to modify these configurations or add your own, simply refer to whats in that directory and add accordingly.


## Installing

There are two included install options:
* `install-home.sh` -> This will copy the ./bin folder to `$HOME/picolibc`.
* `install-opt.sh` -> This will copy the ./bin folder to `/opt/picolibc`.

**Note**: If you are using my FORTE projects that depend on Picolibc, they will most likely expect the `/opt` path.


## MSP430 GCC

Download from here: https://www.ti.com/tool/MSP430-GCC-OPENSOURCE

The scripts expect that it is install in `/opt/msp430-gcc`. If for whatever reason you have a problem with that, you will need to update the scripts.
