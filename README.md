# zsh-update-plugin
custom oh-my-zsh plugin
This plugin updates custom plugins via git
# installation
1. Clone repo:
   `rm -f ~/.oh-my-zsh/custom/plugins/zsh-update-plugin && git clone https://github.com/AndrewHaluza/zsh-update-plugin.git ~/.oh-my-zsh/custom/plugins/zsh-update-plugin/`
2. Open your `~/.zshrc` file and enable the `zupdate-plugin` plugin:
```zsh
plugins=( ... zupdate-plugin)
```
## Usage
- `zupdate ls`
- `zupdate some-plugin`
- `zupdate`

## Available protocol values:
| Command               | Result                                                           |
| -------               | ---------------------------------------------------------------- |
| `zupdate`             | Trying to update (git pull) every in .oh-my-zsh/custom/plugins/* |
| `zupdate ls`          | Returns list of available custom plugins                         |
| `zupdate some-plugin` | Trying pull some-plugin from git                                 |


## Dependencies
Fully compatible with ubuntu 20.04
