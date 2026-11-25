# mps-terminal-skeletons

Project skeleton templates of the [my-perfect-system (mps)](https://github.com/my-perfect-system) terminal stack, installed system-wide to `/etc/mps/skeletons`.

## Install

| Method | Command / Notes |
| --- | --- |
| Default | `bootstrap.sh` clones to the system-wide mps repo dir and runs `install.sh` (sudo) |
| Ansible | can be used by installing via the `odem.terminal.skeletons` role of [odem-terminal](https://github.com/my-perfect-system/odem-terminal) |
| Standalone | clone the repo, then run `sudo ./install.sh` inside it |

### Install (Default)

```bash
curl -fsSL https://raw.githubusercontent.com/my-perfect-system/mps-terminal-skeletons/main/bootstrap.sh | bash
```

All methods copy `skeletons/` to `${MPS_SKELETONS_DIR:-/etc/mps/skeletons}` (files 0644, dirs 0755; re-run to update).

## Usage

```bash
ls /etc/mps/skeletons            # available skeletons
cp -r /etc/mps/skeletons/python-project myproject   # start a project from a skeleton
```