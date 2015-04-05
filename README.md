# comp-neuro
Computational Neuroscience


A) Julia

1) Install Julia (http://julialang.org/downloads/)

B) MATLAB file support

1) Run julia REPL and add packages for reading matlab data files

    Pkg.add("HDF5")
    Pkg.add("MAT")

2) In Julia code:

    using MAT
    vars = matread("filename.mat")
    # vars is now a dictionary of the variables defined in filename.mat

For more MAT functions and documentation see
https://github.com/simonster/MAT.jl

C) iJulia

1) Download and install Anaconda

 a) http://continuum.io/downloads#py34

 b) Run installer. 

 c) Set tick boxes for: 

*Adding Anaconda to System path 
*Registering Anaconda as default Python version  

 d) Do not use Enthought Canopy/EPD

2) Update ipython (from command line)

    conda update conda
    conda update ipython ipython-notebook ipython-qtconsole

3) Run julia REPL and add pkgs for iJulia:

    Pkg.add("IJulia")
    Pkg.add("PyPlot")

4) Run julia REPL and start an iJulia notebook

    using IJulia
    notebook()
