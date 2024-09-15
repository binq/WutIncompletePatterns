# Steps to Reproduce

```
$ docker compose run console bash
```

```
[+] Creating 1/0
 ✔ Network wutincompletepatterns_default  Created                                                                                                                     0.0s 
[+] Building 43.7s (9/9) FINISHED                                                                                                                     docker:desktop-linux
 => [console internal] load build definition from Dockerfile                                                                                                          0.0s
 => => transferring dockerfile: 394B                                                                                                                                  0.0s
 => [console internal] load metadata for docker.io/library/ubuntu:20.04                                                                                               0.7s
 => [console auth] library/ubuntu:pull token for registry-1.docker.io                                                                                                 0.0s
 => [console internal] load .dockerignore                                                                                                                             0.0s
 => => transferring context: 2B                                                                                                                                       0.0s
 => CACHED [console 1/3] FROM docker.io/library/ubuntu:20.04@sha256:fa17826afb526a9fc7250e0fbcbfd18d03fe7a54849472f86879d8bf562c629e                                  0.0s
 => => resolve docker.io/library/ubuntu:20.04@sha256:fa17826afb526a9fc7250e0fbcbfd18d03fe7a54849472f86879d8bf562c629e                                                 0.0s
 => [console 2/3] RUN true                                                && apt-get update                                   && apt-get install -y                  33.8s
 => [console 3/3] WORKDIR /app                                                                                                                                        0.0s 
 => [console] exporting to image                                                                                                                                      9.2s 
 => => exporting layers                                                                                                                                               7.8s 
 => => exporting manifest sha256:814272dc9b3be7eb27459258c6ff50be7dd9ad2cd3ff700ded5088477974f37f                                                                     0.0s 
 => => exporting config sha256:a209c6a9f20110e530e21f0258ff413ce2c6729e669b966b3a1c5445afd3aa51                                                                       0.0s 
 => => exporting attestation manifest sha256:2c2a6914d99d67f380f1fd70b6daf96f654a4ad4411828dc621e8cc5cb4d05a9                                                         0.0s 
 => => exporting manifest list sha256:2d590e2f871e2c483bccc862e2bb6d75621ac42cc8895e62cdb76bea95aaaadf                                                                0.0s
 => => naming to docker.io/library/wutincompletepatterns-console:latest                                                                                               0.0s
 => => unpacking to docker.io/library/wutincompletepatterns-console:latest                                                                                            1.3s
 => [console] resolving provenance for metadata file                                                                                                                  0.0s
```

```
# stack build
```

```
Preparing to install GHC (tinfo6-libc6-pre232) to an isolated location. This will not interfere with any system-level installation.
Downloaded ghc-tinfo6-libc6-pre232-9.8.2.                                      
ar: conftest.a: No such file or directory                                                     
Installed GHC.     
[1 of 3] Compiling Main             ( /root/.stack/setup-exe-src/setup-DY68M0FN.hs, /root/.stack/setup-exe-src/setup-DY68M0FN.o )
[2 of 3] Compiling StackSetupShim   ( /root/.stack/setup-exe-src/setup-shim-DY68M0FN.hs, /root/.stack/setup-exe-src/setup-shim-DY68M0FN.o )
[3 of 3] Linking /root/.stack/setup-exe-cache/aarch64-linux-tinfo6-libc6-pre232/tmp-Cabal-simple_DY68M0FN_3.10.2.0_ghc-9.8.2
Wut> configure (lib + exe)
Configuring Wut-0.1.0.0...
Wut> build (lib + exe) with ghc-9.8.2
Preprocessing library for Wut-0.1.0.0..
Building library for Wut-0.1.0.0..
[1 of 2] Compiling Paths_Wut
[2 of 2] Compiling Wut

/app/Wut/src/Wut.hs:7:1: error: [GHC-62161] [-Wincomplete-patterns (in -Wextra), Werror=incomplete-patterns]
    Pattern match(es) are non-exhaustive
    In an equation for `doneVsItems':
        Patterns of type `[Int]' not matched: []
  |
7 | doneVsItems [] = putStrLn "Done"
  | ^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^...

Error: [S-7282]
       Stack failed to execute the build plan.
       
       While executing the build plan, Stack encountered the error:
       
       [S-7011]
       While building package Wut-0.1.0.0 (scroll up to its section to see the error) using:
       /root/.stack/setup-exe-cache/aarch64-linux-tinfo6-libc6-pre232/Cabal-simple_DY68M0FN_3.10.2.0_ghc-9.8.2 --verbose=1 --builddir=.stack-work/dist/aarch64-linux-tinfo6-libc6-pre232/ghc-9.8.2 build lib:Wut exe:Wut --ghc-options " -fdiagnostics-color=always"
       Process exited with code: ExitFailure 1 
```
