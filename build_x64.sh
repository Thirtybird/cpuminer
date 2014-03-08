#need to make sure LibCURL is built for x64 before running this

./configure --host=x86_64-w64-mingw32 CFLAGS="-O3 -march=nocona -DCPU_X86_FORCE_INTRINSICS"
make clean
make
x86_64-w64-mingw32-strip minerd.exe
mv minerd.exe minerd-x64-nocona.exe

./configure --host=x86_64-w64-mingw32 CFLAGS="-O3 -march=core2 -DCPU_X86_FORCE_INTRINSICS"
make clean
make
x86_64-w64-mingw32-strip minerd.exe
mv minerd.exe minerd-x64-core2.exe

./configure --host=x86_64-w64-mingw32 CFLAGS="-O3 -march=corei7 -DCPU_X86_FORCE_INTRINSICS"
make clean
make
x86_64-w64-mingw32-strip minerd.exe
mv minerd.exe minerd-x64-corei7.exe

./configure --host=x86_64-w64-mingw32 CFLAGS="-O3 -march=corei7-avx -DCPU_X86_FORCE_INTRINSICS"
make clean
make
x86_64-w64-mingw32-strip minerd.exe
mv minerd.exe minerd-x64-avx.exe

./configure --host=x86_64-w64-mingw32 CFLAGS="-O3 -march=core-avx-i -DCPU_X86_FORCE_INTRINSICS"
make clean
make
x86_64-w64-mingw32-strip minerd.exe
mv minerd.exe minerd-x64-avx-i.exe

./configure --host=x86_64-w64-mingw32 CFLAGS="-O3 -march=core-avx2 -DCPU_X86_FORCE_INTRINSICS"
make clean
make
x86_64-w64-mingw32-strip minerd.exe
mv minerd.exe minerd-x64-avx2.exe

./configure --host=x86_64-w64-mingw32 CFLAGS="-O3 -march=athlon-fx -DCPU_X86_FORCE_INTRINSICS"
make clean
make
x86_64-w64-mingw32-strip minerd.exe
mv minerd.exe minerd-x64-athlonfx.exe
