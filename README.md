# Docker/Singularity configuration for minimal gatk3 container

## Docker

Docker file based on alpine-glibc.


## Singularity

A [Singularity](http://singularity.lbl.gov) definition available at [https://www.singularity-hub.org/collections/3559](https://www.singularity-hub.org/collections/3559).

If [Singularity](http://singularity.lbl.gov) is installed locally, the container can be build (needs root access) locally like this:

```bash
sudo singularity build gatk3.sif Singularity > build.log 2>&1
```

The container can also be downloaded from [Singularity Hub](https://www.singularity-hub.org/) without root access to the local machine like this:

```bash
singularity pull --name "gatk3.sif" shub://sschmeier/container-gatk3
```

Then, it can be used, e.g.:

```bash
singularity exec gatk3.sif gatk --help
```
