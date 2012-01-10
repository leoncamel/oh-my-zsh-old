
export GIT_ASKPASS=

##############################################################
# add my utilities from $HOME/bin
##############################################################
if [ -d "$HOME/bin/" ]; then
    export PATH=$HOME/bin/:$PATH
fi

# Leon's Misc Utilities
add_my_tools "$HOME/bin/proxytunnel-1.9/"

# ghc
add_my_tools "$HOME/bin/ghc-7.2.2/"
add_my_tools "$HOME/.cabal/"

#
add_my_tools "$HOME/bin/emacs-git"
alias ec="emacsclient -n"
