# Clone Upstream
git clone https://github.com/v1cont/yad -b v13.0
cp -rvf ./debian ./yad
cd ./yad

# Get build deps
apt-get build-dep ./ -y

# Build package
dpkg-buildpackage

# Move the debs to output
cd ../
mkdir -p ./output
mv ./*.deb ./output/
