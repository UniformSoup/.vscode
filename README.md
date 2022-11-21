# VSCodeWorkspace
My VS Code Environment for C++.

To use you can run in an MSYS2 shell:
```bash
curl -L https://github.com/UniformSoup/VSCodeWorkspace/tarball/main | tar --exclude='README.md' --exclude='LICENSE' --strip=1 -zx
```
If the directory is empty you can just run in the MSYS2 shell instead:
```bash
git clone https://github.com/UniformSoup/VSCodeWorkspace.git . && rm -rf .git LICENSE README.md
```

You should use git for windows.

This setup assumes you have the latest version of [MSYS2](https://msys2.org/#installation).
With these packages installed:
```bash
pacman -S base-devel mingw-w64-x86_64-toolchain mingw-w64-x86_64-cmake mingw-w64-x86_64-ninja
```

It also requires the [C/C++ Extension](https://github.com/microsoft/vscode-cpptools) for VS Code.
