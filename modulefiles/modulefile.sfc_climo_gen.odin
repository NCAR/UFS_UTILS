#%Module#####################################################
## Module file for sfc_climo_gen
#############################################################

#unset LD_LIBRARY_PATH

module load craype/2.6.2
module load craype-ivybridge
module load PrgEnv-intel
module swap intel/19.0.5.281
module load cray-mpich/7.7.10
module load cray-libsci
module load cray-netcdf-hdf5parallel
module load cray-parallel-netcdf
module load cray-hdf5-parallel

export NETCDF=/opt/cray/pe/netcdf-hdf5parallel/4.6.3.2/INTEL/19.0
export HDF5=/opt/cray/pe/hdf5-parallel/1.10.5.2/INTEL/19.0

module use -a /oldscratch/ywang/external/modulefiles

module load esmf/8.0.0

export FCOMP=ftn
export FFLAGS="-O3 -fp-model=precise -g -traceback -r8 -i4 -convert big_endian -I${NETCDF}/include"