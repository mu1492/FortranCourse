# FORTRAN Course Samples

This repository contains the sources from the book
Nicolae N. Ursu - *PROGRAMARE*, Institutul Politehnic Cluj-Napoca, 1978

The most recent standard at the time of writing this book was FORTRAN 66.  The input data was taken from punched cards, while the output was sent to listing paper. For being usable on current systems, the original code dealing with `stdin` and `stdout` has been adapted for console and display. 

---

Sources `Prog_01.for` to `Prog_37.for` can be built as they are, with any modern Fortran compiler, and rely on the core instruction set.

---

`Prog_38.for`, `Prog_39.for`, and `Prog_40.for` showcased a few function calls from the mathematical library of FORTRAN 66.  Therefore, these three sources were required to be linked with `MATHLIB`. 

 - `RESOL` - system of equations solver (*Prog_38*)
 - `MRINV` and `MRMUL` - calculate the inverse of a matrix and the product of two matrices (*Prog_39*) 
 - `PORAB` - polynomial equations solver (*Prog_40*)
 
Modern HPC compilers, libraries, and toolchains include similar functions. Depending on the target application, below are a few possible choices:

- [AMD AOCC](https://www.amd.com/en/developer/aocc.html)
- [ARM Fortran Compiler](https://developer.arm.com/Tools%20and%20Software/Arm%20Fortran%20Compiler)
- [GNU Fortran](https://gcc.gnu.org/fortran/)
- [IBM Fortran Compiler](https://www.ibm.com/products/fortran-compiler-family)
- [ Intel oneAPI Fortran](https://www.intel.com/content/www/us/en/developer/tools/oneapi/fortran-compiler.html) and [MKL](https://www.intel.com/content/www/us/en/developer/tools/oneapi/onemkl.html)
- [LAPACK](https://www.netlib.org/lapack/)
- [nAG Fortran Compiler](https://nag.com/fortran-compiler/)
- [NVIDIA HPC Fortran](https://developer.nvidia.com/hpc-compilers#)
