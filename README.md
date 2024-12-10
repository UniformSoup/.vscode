# .vscode
My VS Code Environment for C++.


```bash
git submodule add https://github.com/UniformSoup/.vscode
```

You should use git for windows.

This setup assumes you have the latest version of [MSYS2](https://msys2.org/#installation).
With these packages installed:
```bash
pacman -S base-devel mingw-w64-x86_64-toolchain mingw-w64-x86_64-cmake mingw-w64-x86_64-ninja
```
Don't forget to add the following to /etc/fstab:
```
none /tmp usertemp binary,posix=0 0 0
```
Then restart all MSYS2 Processes, and type ```mount```

## TODO:
- Add clangformat capabilities (script looks in current dir first, then in default .vscode dir.)
