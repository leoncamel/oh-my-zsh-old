# TODO : for my MacBook Pro
# coreutils alias
#alias find='gfind'
alias df='gdf -a'
alias rm='grm -i'
alias cp='gcp'
alias readlink='greadlink'
alias du='gdu'
alias sed='gsed'
alias pyv-activate='source ~/pyvirt/bin/activate'
alias ec='emacsclient -n'

# Mac OSX's alias
alias chrome_proxy='open -a /Applications/Internet/Google\ Chrome.app --args --proxy-server=133.9.49.250:8080 --proxy-bypass-list=localhost,127.0.0.0/8,*.local,192.168.0.0/16,13'
alias chrome_timel='open -a /Applications/Internet/Google\ Chrome.app --args --enable-extension-timeline-api'

alias mplayerx='open -a /Applications/MPlayerX.app'
alias splayerx='open -a /Applications/SPlayerX.app'

# TODO : fix this for my MacBook Pro
# these option are dumped from ubuntu
if [[ -x "/opt/local/bin/gls" ]]
then
    alias ls='gls --color=auto'
fi

######
# add "/usr/local/bin" to $PATH
######
export PATH=/usr/local/bin/:$PATH

##############################################################
# add my utilities from $HOME/bin
##############################################################
if [ -d "$HOME/bin/" ]; then
    export PATH=$HOME/bin/:$PATH
fi

# MacRuby : 
#    notes : 
#       [1] Built from "/Users/leoncamel/tmp/MacRuby/MacRuby-MacRuby-ed8b060"
#       [2] No "CFNetwork" wrapper. So, I comment this out.
# add_my_tools "/Library/Frameworks/MacRuby.framework/Versions/Current/usr"

# MacPorts root
add_my_tools "/opt/local/"

# ghc-6.12.3
#add_my_tools "$HOME/bin/ghc-6.12.3/"
# Cabal
export PATH="$HOME/Library/Haskell/bin:$PATH"
#add_my_tools "$HOME/.cabal/"

# node.js git version
#add_my_tools "$HOME/bin/node-git/"

# Leon's Misc Utilities
add_my_tools "$HOME/bin/proxytunnel-1.9.0/"
add_my_tools "$HOME/bin/cmucl-20b/"
add_my_tools "$HOME/bin/ccl-darwin-1.6/"

# plowshare supports:
# Megaupload, Rapidshare, 2Shared, 4Shared, ZShare, Badongo, Divshare.com,
# Depositfiles, Netload.in, Sendspace, Usershare, x7.to
# and some others file sharing services.
#
add_my_tools "$HOME/bin/plowshare-svn/"

# for Google's chromium
export PATH="$HOME/bin/depot_tools":$PATH

# Wireshark Commandline Utilities
export PATH="$HOME/bin/Wireshark_CMD/":$PATH

export PATH="$HOME/bin/GoogleAppEngine/":$PATH

# Allegro CL
export PATH="$HOME/bin/AllegroCL/":$PATH

# cmigemo
add_my_tools "$HOME/bin/cmigemo/"

# Macport's emacs : for "emacsclient"
#export PATH="/Applications/MacPorts/Emacs.app/Contents/MacOS/bin/":$PATH

# Erlang
add_my_tools "$HOME/bin/erlang-r14b04-by-kerl/"

# CUDA SDK
#export PATH=/usr/local/cuda/bin:$PATH
#export DYLD_LIBRARY_PATH=/usr/local/cuda/lib:$DYLD_LIBRARY_PATH

# RVM
[[ -s "$HOME/.rvm/scripts/rvm" ]] && . "$HOME/.rvm/scripts/rvm" # Load RVM function

# NVM : node version manager
[[ -s "$HOME/.nvm/nvm.sh" ]] && . "$HOME/.nvm/nvm.sh" # Load NVM function

##########
# homebrew
export HOMEBREW_EDITOR="emacsclient -n"

add_my_tools $HOME/bin/homebrew/
alias t='todo.sh'

#
# Texlive 2011
#
#export PATH=/usr/local/texlive/2011/bin/x86_64-darwin/:$PATH
