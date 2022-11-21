# VSCodeWorkspace
My VS Code Environment for C++.

```bash
curl -L https://github.com/UniformSoup/VSCodeWorkspace/tarball/main | tar --exclude='README.md' --exclude='LICENSE' --strip=1 -zx
```

This setup assumes you have the latest version of [MSYS2](https://msys2.org/#installation).
With these packages installed:
```bash
pacman -S base-devel mingw-w64-x86_64-toolchain mingw-w64-x86_64-cmake mingw-w64-x86_64-ninja
```
It also requires the [C/C++ Extension](https://github.com/microsoft/vscode-cpptools) for VS Code.
