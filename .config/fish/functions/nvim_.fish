function __discord_get_ipc_index -a ipc_path
    for i in (seq 0 10)
        set -l sockpath "$ipc_path/discord-ipc-$i"
        if [ -e "$sockpath" ]
            echo $sockpath
            return
        end
    end
    echo "$ipc_path/discord-ipc-0"
end

function __discord_find_ipc_path
    for p in $XDG_RUNTIME_DIR $TMPDIR $TMP $TEMP "/tmp"
        if [ -d "$p" ]
            __discord_get_ipc_index $p
            return
        end
    end
end

function __discord_rpc_start -d 'redirects Discord RPC to Windows'
    set -l ipc_path (__discord_find_ipc_path)
    if [ ! -e "$ipc_path" ]
        socat UNIX-LISTEN:"$ipc_path",fork \
            EXEC:"npiperelay.exe //./pipe/discord-ipc-0"&; disown
    end
end


function nvim_
	__discord_rpc_start
    pidof socat > /dev/null; or socat UNIX-LISTEN:/tmp/discord-ipc-0,fork \
      EXEC:"npiperelay.exe //./pipe/discord-ipc-0"&
    command nvim $argv
end

