liblfds-android
===

Description
---
This is an unofficial utility to build the [liblfds](http://www.liblfds.org/) for Android.

How to build?
---

#### 1. Initialize & update "liblfds" submodule

```
$ git submodule init
$ git submodule update
```

#### 2. Build liblfds

```
$ export PATH=$PATH:<ndk-dir>
$ cd <repo-top-dir>/liblfds
$ ./build.sh [shared|static]
```

#### 3. Make test binary

```
$ export PATH=$PATH:<ndk-dir>
$ cd <repo-top-dir>/tests
$ ./build.sh [shared|static]
```


How to run the test binary?
---

See the following stackoverflow's thread;

- [stackoverflow - How can i run C binary (executable file) in Android from Android Shell](http://stackoverflow.com/questions/9868309/how-can-i-run-c-binary-executable-file-in-android-from-android-shell)


Remarks
---

- MIPS64 and ARM64 architectures are not supported (original liblfds doesn't support them)
- Current test code is NOT IMPLEMENTED PROPERLY, because Andorid doesn't support pthread_attr_setaffinity_np() function.

License
---

Inherits the liblfds library's policy, so there is no license.  You are free to use this code in any way.

