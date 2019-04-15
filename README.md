## Synopsis

This project implements 8 clear sky models in a common framework to compare
them with each other and with a reference model and reference measurements.

## License

This project is released under the BSD license.

## Customization for Windows

In order to make it running on Windows, I had made following modifications.
1. Use [gcem](https://github.com/kthohr/gcem) for compile time math.
2. CMake for project generation.
3. Add pre-built libRadtran executable. I leave external\libRadtran-2.0.1\data empty to save the space, you have to place it manually.
4. Add external sources directly instead of using git submodule, there are slightly modification to fix compiling errors in VS2017.
5. Fix file line end mode for libRadtran input files.
