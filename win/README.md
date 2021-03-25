# Windows configs

- Shortcuts (brings Czech linux keyboard layout to Windows)
  - Install [AutoHotkey](https://www.autohotkey.com/)
  - Run `setup.cmd`
- WSL
  - [Enable it in Windows](https://docs.microsoft.com/en-us/windows/wsl/install-win10)
  - Install [Windows Terminal](https://github.com/Microsoft/Terminal)
  - [Disable that annoying beep](https://stackoverflow.com/a/36726662/1392034) - add `set bell-style none` to `/etc/inputrc`
- Add to `.ssh/config`

```
Host *
   AddKeysToAgent yes
```

- Add to `.bashrc`

```bash
# ssh-agent autostart
SSH_ENV="$HOME/.ssh/agent-env"

function start_agent {
    echo "Starting new ssh-agent..."
    ssh-agent | sed 's/^echo/#echo/' > "$SSH_ENV"
    chmod +x "$SSH_ENV"
    . "$SSH_ENV" > /dev/null
}

# Source SSH settings, if applicable

if [ -f "$SSH_ENV" ]; then
    . "$SSH_ENV" > /dev/null
    ps $SSH_AGENT_PID > /dev/null || start_agent;
else
    start_agent;
fi
```

- Install missing packages

```
sudo zypper in bash-completion vim-data
```
