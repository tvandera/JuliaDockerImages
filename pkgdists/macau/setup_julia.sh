#!/bin/bash

apt-get -yu install hdf5-tools

echo ""
echo "Updating METADATA..."
julia -e "Pkg.update()"

CLONE_PACKAGES="https://github.com/jaak-s/BayesianDataFusion.jl.git"

for pkg in ${CLONE_PACKAGES}
do
    echo ""
    echo "Cloning package $pkg"
    julia -e "Pkg.clone(\"$pkg\")"
done

INSTALL_PACKAGES="HDF5 MAT"

for pkg in ${INSTALL_PACKAGES}
do
    echo ""
    echo "Adding package $pkg"
    julia -e "Pkg.add(\"$pkg\")"
done
