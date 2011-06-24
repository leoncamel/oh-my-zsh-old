
if [ -d "$HOME/bin/" ]; then
    export PATH=$HOME/bin/:$PATH
fi


##############################################################
# add my utilities from $HOME/bin
##############################################################

# Homebrew : Emacs-23.3
add_my_tools "$HOME/bin/emacs-23.3/"

# ghc-6.12.3
#add_my_tools "$HOME/bin/ghc-6.12.3/"
add_my_tools "$HOME/bin/ghc-7.0.3/"
add_my_tools "$HOME/bin/haskell-platform-2011.2.0.1/"
# Cabal
add_my_tools "$HOME/.cabal/"

# node.js
add_my_tools "$HOME/bin/node-git/"

# gccsense
add_my_tools "$HOME/bin/gcc-code-assist/"

# Leon's Misc Utilities
#add_my_tools "$HOME/bin/proxytunnel-1.9.0/"
#add_my_tools "$HOME/bin/cmucl-20b/"
#add_my_tools "$HOME/bin/ccl-darwin-1.6/"
add_my_tools "$HOME/bin/global-5.9.5/"

# plowshare supports:
# Megaupload, Rapidshare, 2Shared, 4Shared, ZShare, Badongo, Divshare.com,
# Depositfiles, Netload.in, Sendspace, Usershare, x7.to
# and some others file sharing services.
#
#add_my_tools "$HOME/bin/plowshare-svn/"

# for Google's chromium
#export PATH="$HOME/bin/depot_tools":$PATH

export PATH="$HOME/bin/GoogleAppEngine/":$PATH

# Gephi: The Open Graph Viz Platform
add_my_tools "$HOME/bin/gephi/"

# CUDA SDK
#export PATH=/usr/local/cuda/bin:$PATH
#export DYLD_LIBRARY_PATH=/usr/local/cuda/lib:$DYLD_LIBRARY_PATH

# RVM
[[ -s "$HOME/.rvm/scripts/rvm" ]] && . "$HOME/.rvm/scripts/rvm" # Load RVM function

