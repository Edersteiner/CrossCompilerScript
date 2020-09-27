# CrossCompilerScript
A shell script for building GCC and Binutils for use in OS Development.

This script is made with [GevOS](https://github.com/KamalDevelopers/GevOS) in mind but should work on any Hobby OS with some tinkering.

You need to install the dependincies needed to compile GCC and Binutils, The table below contains package names in different distros.

| Debian              | Arch          | Fedora  |
| :-----------:       |:-------------:| :----:  |
| build-essential     | base-devel    | gcc     |
| bison               | ...           | bison   |
| flex                | ...           | flex    |
| libgmp3-dev         | gmp           | gmp-devel    |
| libmpc-dev          | libmpc        | libmpc-devel |
| libmpfr-dev         | mpfr          | mpfr-devel |
| texinfo             | ...           | texinfo |

---

1. clone the repo
```
git clone https://github.com/Edersteiner/CrossCompilerScript
```

2. Then cd into the repo
```
cd CrossCompilerScript
```
3. Run the script. It shouldn't need root priveleges.
```
./CCBuild.sh
```
Now wait for everything to compile. GCC might take up to an hour, but it probably wont take that long.

---

When it's finished you have the cross compiler located at: `$HOME/opt/cross/bin/$TARGET-gcc`



you can verify that it compiled correctly by running:
```
$HOME/opt/cross/bin/$TARGET-gcc --version
```
---

If you have any problems you are welcome to post an Issue
