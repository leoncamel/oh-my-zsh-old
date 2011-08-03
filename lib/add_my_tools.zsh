
################
#  Function    : add_my_tools ($my_toolset_root)
#  Description : We manipulate the following directory structure.
#  Author      : Leon Zhang
#
# $my_tool_root
# |-- bin
# |-- include
# |-- lib
# |   `-- pkgconfig
# `-- share
#     |-- info
#     `-- man
##
function add_my_tools() {
    local my_toolset_root=$1
    if [ ! -d "$my_toolset_root" ]; then
        echo "The path you specified \"$my_toolset_root\" is not existed"
        echo "    Please check it"

        return
    fi

    if [ -d "$my_toolset_root/bin/" ]; then
        export PATH="$my_toolset_root/bin:$PATH"
    fi
    if [ -d "$my_toolset_root/sbin/" ]; then
        export PATH="$my_toolset_root/sbin:$PATH"
    fi
    if [ -d "$my_toolset_root/share/man/" ]; then
        export MANPATH="$my_toolset_root/share/man:$MANPATH"
    fi
    if [ -d "$my_toolset_root/share/info/" ]; then
        export INFOPATH="$my_toolset_root/share/info:$INFOPATH"
    fi

    # TODO: check if there is a valid "lib*.so" from $my_toolset_root/lib/
    if [ -d "$my_toolset_root/lib/" ]; then
        export LD_LIBRARY_PATH="$my_toolset_root/lib/:$LD_LIBRARY_PATH"
    fi
    if [ -d "$my_toolset_root/lib/pkgconfig" ]; then
        export PKG_CONFIG_PATH="$my_toolset_root/lib/pkgconfig/:$PKG_CONFIG_PATH"
    fi

    # TODO: Python lib path
    if [ -d "$my_toolset_root/lib/python2.7/site-packages/" ]; then 
        export PYTHONPATH="$my_toolset_root/lib/python2.7/site-packages/:$PYTHONPATH"
    elif [ -d "$my_toolset_root/lib/python2.6/site-packages/" ]; then
        export PYTHONPATH="$my_toolset_root/lib/python2.6/site-packages/:$PYTHONPATH"
    fi
}

## END OF FILE #################################################################
# vim:filetype=zsh foldmethod=marker autoindent expandtab shiftwidth=4
# Local variables:
# mode: sh
# End:
