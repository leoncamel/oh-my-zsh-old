
switch-net-env() {
    emulate -L zsh # Necessary or not ?
    local usage
    usage='switch-net-env {home,waseda,mitmproxy}'

    case $1 in
        ("")
            printf '%s\n\n' 'ERROR: No search string specified. Aborting.'
            printf '%s\n\n\n' ${usage} && return 1
            ;;
        (waseda)
            export http_proxy="http://133.9.49.250:8080/"
            export https_proxy="http://133.9.49.250:8080/"
            export ftp_proxy="http://133.9.49.250:8080/"
            export no_proxy="localhost,127.0.0.0/8,*.local,192.168.0.0/16,133.9.42.0/24"
            export ANT_OPTS="-Dhttp.proxyHost=133.9.49.250 -Dhttp.proxyPort=8080"
            export RSYNC_PROXY="133.9.49.250:8080"
            export GIT_PROXY_COMMAND=git-proxy.sh
            ;;
        (mitmproxy)
            export http_proxy="http://127.0.0.1:8080/"
            export https_proxy="http://127.0.0.1:8080/"
            export ftp_proxy="http://127.0.0.1:8080/"
            export no_proxy="localhost,127.0.0.0/8,*.local,192.168.0.0/16,133.9.42.0/24"
            export ANT_OPTS="-Dhttp.proxyHost=127.0.0.1 -Dhttp.proxyPort=8080"
            export RSYNC_PROXY="127.0.0.1:8080"
            export GIT_PROXY_COMMAND=git-proxy.sh
            ;;
        (home)
            unset http_proxy
            unset https_proxy
            unset ftp_proxy
            unset no_proxy
            unset ANT_OPTS
            unset RSYNC_PROXY
            unset GIT_PROXY_COMMAND
            ;;
        (*)
            printf '%s\n\n' 'Invalid parameter'
            printf '%s\n\n\n' ${usage} && return 1
            ;;
    esac
}

mac-proxy-net-env() {
    emulate -L zsh  # TODO: Necessary or not?
    local usage
    usage='osx-net-env {on,off}'

    case `uname -s` in
        ("Darwin")
            printf "Your OS is : '%s'\nContinue ...\n" `uname -s`
            ;;
        (*)
            printf "Your OS is not Mac OSX. Can NOT use this function.\n" && return 1
            ;;
    esac

    case $1 in
        ("")
            printf '%s\n' 'Enable/Disable proxy(http,https,ftp) settings on Ethernet.'
            printf '%s\n' 'Usage:'
            printf '\t\t%s\n\n\n' ${usage} && return 1
            ;;
        (on)
            # networksetup -setftpproxy Ethernet 133.9.49.250 8080 on
            # networksetup -setwebproxy Ethernet 133.9.49.250 8080 on
            # networksetup -setsecurewebproxystate Ethernet 133.9.49.250 8080 on
            networksetup -setftpproxystate Ethernet on
            networksetup -setwebproxystate Ethernet on
            networksetup -setsecurewebproxystate Ethernet on
            printf '%s\n\n' 'networksetup : Enable proxy setting on Ethernet'
            ;;
        (off)
            # networksetup -setftpproxy Ethernet 133.9.49.250 8080 off
            # networksetup -setwebproxy Ethernet 133.9.49.250 8080 off
            # networksetup -setsecurewebproxystate Ethernet 133.9.49.250 8080 off
            networksetup -setftpproxystate Ethernet off
            networksetup -setwebproxystate Ethernet off
            networksetup -setsecurewebproxystate Ethernet off
            printf '%s\n\n' 'networksetup : Disable proxy setting on Ethernet'
    esac
}

compdef 'compadd home waseda mitmproxy' switch-net-env
compdef 'compadd on off' mac-proxy-net-env

## END OF FILE #################################################################
# vim:filetype=zsh foldmethod=marker autoindent expandtab shiftwidth=4
# Local variables:
# mode: sh
# End:
