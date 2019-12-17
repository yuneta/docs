System wide C change on Ubuntu
==============================

sudo update-alternatives --config cc
sudo update-alternatives --config c++

export CC="musl-gcc -static -Os"
cmake ..
make

::

    #------------------------------------------
    #  musl
    #  http://git.etalabs.net/cgit/musl/
    #------------------------------------------
    echo "===================== MUSL ======================="
    cd build/musl-1.1.24
    ./configure CC=clang \
        --prefix=/yuneta/development/output/musl \
        --disable-shared \
        --enable-warnings

    make
    make install

    cd ../..
