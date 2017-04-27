# Ubuntu Docker file for Julia with BayesianDataFusion
# Version:v0.5.1

# FROM julialang/juliaboxpkgdist:v0.3.12
FROM julialang/julia:v0.5.1

MAINTAINER Tom Vander Aa

ENV PATH /usr/local/texlive/2014/bin/x86_64-linux:/usr/local/bin:/usr/bin:/bin:/usr/games:/sbin:/usr/sbin:/opt/julia/bin
ADD setup_julia.sh /tmp/setup_julia.sh
RUN /tmp/setup_julia.sh

ENTRYPOINT /bin/bash
