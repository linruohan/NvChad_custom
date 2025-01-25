

# starter

Starter config for NvChad


## 配置详解
A starting point for Neovim that is:

### 安装 Neovim

nvchad_custom.nvim targets *only* the latest
['stable'](https://github.com/neovim/neovim/releases/tag/stable) and latest
['nightly'](https://github.com/neovim/neovim/releases/tag/nightly) of Neovim.
If you are experiencing issues, please make sure you have the latest versions.

### 额外依赖
External Requirements:
- Basic utils: `git`, `make`, `unzip`, C Compiler (`gcc`)
- [ripgrep](https://github.com/BurntSushi/ripgrep#installation)
- Clipboard tool (xclip/xsel/win32yank or other depending on platform)
- A [Nerd Font](https://www.nerdfonts.com/): optional, provides various icons
  - if you have it set `vim.g.have_nerd_font` in `init.lua` to true
- Language Setup:
  - If you want to write Typescript, you need `npm`
  - If you want to write Golang, you will need `go`
  - etc.


Neovim的配置位于以下路径下，具体取决于您的操作系统：

| OS                   | PATH                                      |
| -------------------- | ----------------------------------------- |
| Linux, MacOS         | `$XDG_CONFIG_HOME/nvim`, `~/.config/nvim` |
| Windows (cmd)        | `%localappdata%\nvim\`                    |
| Windows (powershell) | `$env:LOCALAPPDATA\nvim\`                 |

### 克隆 nvchad_custom.nvim 

<details open=""><summary> Linux 和 Mac  </summary>

```bash
git clone https://github.com/linruohan/nvchad_custom.git  "${XDG_CONFIG_HOME:-$HOME/.config}"/nvim
```

<details open=""><summary>Windows  </summary>
<p dir="auto">如果您使用的是  <code>cmd.exe</code>： </p>

```bash
git clone https://github.com/linruohan/nvchad_custom.git  "%localappdata%\nvim"
```
如果您使用的是  `powershell.exe`
```bash
git clone https://github.com/linruohan/nvchad_custom.git  "${env:LOCALAPPDATA}\nvim"
```
### 安装后 
启动 Neovim 
```
nvim
```
就是这样！Lazy 将安装您拥有的所有插件。用  `:Lazy` 查看 当前插件状态。打  `q` 以关闭窗口。 

通读  `init.lua` file （更多） 有关扩展和探索 Neovim 的信息。这还包括 添加广受请求的插件的示例。 

## 备注
### windows wsl
```
wsl --install
wsl
sudo add-apt-repository ppa:neovim-ppa/unstable -y
sudo apt update
sudo apt install make gcc ripgrep unzip git xclip neovim
```
</details>

### Linux Install
<details><summary>Ubuntu Install Steps</summary>

```
sudo add-apt-repository ppa:neovim-ppa/unstable -y
sudo apt update
sudo apt install make gcc ripgrep unzip git xclip neovim
```
</details>
<details><summary>Debian Install Steps</summary>

```
sudo apt update
sudo apt install make gcc ripgrep unzip git xclip curl

# Now we install nvim
curl -LO https://github.com/neovim/neovim/releases/latest/download/nvim-linux64.tar.gz
sudo rm -rf /opt/nvim-linux64
sudo mkdir -p /opt/nvim-linux64
sudo chmod a+rX /opt/nvim-linux64
sudo tar -C /opt -xzf nvim-linux64.tar.gz

# make it available in /usr/local/bin, distro installs to /usr/bin
sudo ln -sf /opt/nvim-linux64/bin/nvim /usr/local/bin/
```
</details>
<details><summary>Fedora Install Steps</summary>

```
sudo dnf install -y gcc make git ripgrep fd-find unzip neovim
```
</details>

<details><summary>Arch Install Steps</summary>

```
sudo pacman -S --noconfirm --needed gcc make git ripgrep fd unzip neovim
```
</details>



