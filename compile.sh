set -xe
cd submodules/capstone
make
cd ../..

cd submodules/unicorn
UNICORN_ARCHS="arm aarch64 x86" ./make.sh
cd ../..

cp submodules/capstone/libcapstone.a iblessing/iblessing/vendor/libs/
cp submodules/unicorn/libunicorn.a   iblessing/iblessing/vendor/libs/
