
#
# My Developement Environment Settings
#

######
# Global Settings
#####
export PATH=/usr/local/cuda/bin:$PATH
export DYLD_LIBRARY_PATH=/usr/local/cuda/lib:$DYLD_LIBRARY_PATH

######
# CUDA
######
dev-env-cuda() {
    #export PATH=/usr/local/cuda/bin:$PATH
    #export DYLD_LIBRARY_PATH=/usr/local/cuda/lib:$DYLD_LIBRARY_PATH

    # CUDA SDK
    export PATH=/research/cuda/CUDA_SDK/C/bin/darwin/release/:$PATH
}

#####
# Matlabe 2010b
#####
dev-env-matlab() {
    export PATH=/Applications/Math-soft/MATLAB_R2010b.app/bin/:$PATH
}



