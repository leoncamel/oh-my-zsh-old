#source $HOME/.oh-my-zsh/grml-zshrc
#source $HOME/.oh-my-zsh/leon-zshrc

# Path to your oh-my-zsh configuration.
export ZSH=$HOME/.oh-my-zsh

# Set name of the theme to load.
# Look in ~/.oh-my-zsh/themes/
# Optionally, if you set this to "random", it'll load a random theme each
# time that oh-my-zsh is loaded.
export ZSH_THEME="random"

# Set to this to use case-sensitive completion
# export CASE_SENSITIVE="true"

# Comment this out to disable weekly auto-update checks
export DISABLE_AUTO_UPDATE="true"

# Uncomment following line if you want to disable colors in ls
# export DISABLE_LS_COLORS="true"

# Uncomment following line if you want to disable autosetting terminal title.
# export DISABLE_AUTO_TITLE="true"

# Which plugins would you like to load? (plugins can be found in ~/.oh-my-zsh/plugins/*)
# Example format: plugins=(rails git textmate ruby lighthouse)
my_host_name="$(hostname)"
case "$(hostname)" in
    "Leon-no-MBP")
        export ZSH_THEME="robbyrussell"
        plugins=(osx macports svn rvm github switch-net-env dev-env host-configs splayerx)
        echo "Load Plugins for $my_host_name"
        echo "  Plugins: $plugins"
        ;;
    "leon-new-desktop")
        export ZSH_THEME="bira"
        plugins=(svn rvm github switch-net-env dev-env host-configs)
        echo "Load Plugins for $my_host_name"
        echo "  Plugins: $plugins"
        ;;
    "slsi177")
        export ZSH_THEME="afowler"
        plugins=(svn rvm github switch-net-env dev-env host-configs)
        echo "Load Plugins for $my_host_name"
        echo "  Plugins: $plugins"
        ;;
    *)
        plugins=(svn rvm github switch-net-env dev-env host-configs)
        echo "Load default plugins for Unknow-host"
        echo "  Plugins: $plugins"
        ;;
esac

source $ZSH/oh-my-zsh.sh

# Customize to your needs...

