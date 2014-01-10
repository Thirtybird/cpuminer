#need to make sure LibCURL is built for x86 before running this

./configure CFLAGS="-march=nocona -O3"
make clean
make
strip minerd.exe
mv minerd.exe minerd-x86-nocona.exe

./configure CFLAGS="-march=core2 -O3"
make clean
make
strip minerd.exe
mv minerd.exe minerd-x86-core2.exe

./configure CFLAGS="-march=corei7 -O3"
make clean
make
strip minerd.exe
mv minerd.exe minerd-x86-corei7.exe

./configure CFLAGS="-march=corei7-avx -O3"
make clean
make
strip minerd.exe
mv minerd.exe minerd-x86-avx.exe

./configure CFLAGS="-march=core-avx-i -O3"
make clean
make
strip minerd.exe
mv minerd.exe minerd-x86-avx-i.exe

./configure CFLAGS="-march=core-avx2 -O3"
make clean
make
strip minerd.exe
mv minerd.exe minerd-x86-avx2.exe

./configure CFLAGS="-march=athlon-fx -O3"
make clean
make
strip minerd.exe
mv minerd.exe minerd-x86-athlonfx.exe
