# Vim configure
---
<!-- vim-markdown-toc GFM -->

* [環境配置](#環境配置)
  - [必備軟體安裝](#必備軟體安裝)
    + [安裝 vim](#安裝-vim)
    + [coc-nvim](#coc-nvim)
    + [格式化](#格式化)
    + [Vimspector 除錯環境](#vimspector-除錯環境)
  - [新增 Nerd Fonts](#新增-nerd-fonts)
* [鍵位](#鍵位)
  - [移動](#移動)
    + [快速移動](#快速移動)
    + [插入模式移動](#插入模式移動)
    + [命令模式移動](#命令模式移動)
    + [vim-easymotion](#vim-easymotion)
  - [保存 / 退出](#保存--退出)
  - [剪貼](#剪貼)
    + [剪下](#剪下)
  - [選取](#選取)
    + [系統剪貼簿](#系統剪貼簿)
  - [分割視窗](#分割視窗)
  - [視窗操作](#視窗操作)
  - [文件管理](#文件管理)
    + [coc-explorer](#coc-explorer)
  - [文字編輯](#文字編輯)
    + [vim-expand-region](#vim-expand-region)
    + [vim-sandwich](#vim-sandwich)
    + [auto-pairs](#auto-pairs)
    + [nerdcommenter](#nerdcommenter)
  - [多光標模式](#多光標模式)
    + [vim-visual-multi](#vim-visual-multi)
  - [程式碼補全](#程式碼補全)
    + [coc.nvim](#cocnvim)
    + [coc-snippets](#coc-snippets)
    + [vim-autoformat](#vim-autoformat)
  - [翻譯](#翻譯)
    + [coc-translator](#coc-translator)
  - [代碼除錯](#代碼除錯)
    + [vimspector](#vimspector)
  - [Markdown 文件](#markdown-文件)
    + [markdown-snippets](#markdown-snippets)
    + [vim-table-mode](#vim-table-mode)
    + [vim-markdown-toc](#vim-markdown-toc)
    + [coc-markdown-preview-enhanced](#coc-markdown-preview-enhanced)
  - [標籤列表管理](#標籤列表管理)
    + [vista.vim](#vistavim)
    + [vim-signature](#vim-signature)
    + [coc-lists](#coc-lists)
  - [版本管理](#版本管理)
    + [agit.vim](#agitvim)
    + [coc-git](#coc-git)
    + [vim-gitgutter](#vim-gitgutter)
    + [undotree](#undotree)

<!-- vim-markdown-toc -->
---------------
## 環境配置

### 必備軟體安裝

```shell
apt install -y git pip npm nodejs gdb ripgrep
```

#### 安裝 vim

- 編譯依賴
```shell
sudo apt install -y libncurses5-dev libncurses-dev \
    libatk1.0-dev libcairo2-dev libx11-dev libxpm-dev libxt-dev \
    libx11-dev libxtst-dev libxt-dev libsm-dev libxpm-dev
```

```shell
git clone --branch v8.2.5172 --depth 1 https://github.com/vim/vim.git
cd vim/src
./configure --with-x \
    --enable-multibyte \
    --enable-gui=auto \
    --with-features=huge \
    --enable-luainterp \
    --enable-perlinterp \
    --enable-rubyinterp \
    --enable-python3interp
make
sudo make install
```

#### coc-nvim
- 升級 nodejs

```shell
npm install -g n
n install stable
```

- [bash-language-server](https://github.com/bash-lsp/bash-language-server)

```shell
npm install -g bash-language-server
```

- ccls

```shell
apt install -y ccls
```

- 更新 npm

```shell
npm install -g npm
```

<!-- #### vim-instant-markdown -->
<!--  -->
<!-- ```shell -->
<!-- npm install -g instant-markdown-d -->
<!-- ``` -->

#### 格式化
- clang-format

```shell
apt install -y clang-format
```

#### Vimspector 除錯環境
- 安裝除錯器
  - debgpy 安裝所需

  ```shell
  export PATH="$HOME/.local/bin:$PATH"
  pip install setuptools versioneer autopep8
  ```

- 安裝

```vim
VimspectorInstall debugpy vscode-cpptools CodeLLDB --verbose
```

or

```shell
pip install debgpy
```

### 新增 Nerd Fonts

- [Consolas nerd font](https://github.com/wclr/my-nerd-fonts/blob/master/Consolas%20NF/Consolas%20Nerd%20Font%20Complete%20Mono%20Windows%20Compatible.ttf)
 
- 字體位置 `/usr/local/share/fonts/`
 
- 重新讀取字體
  ```shell
  fc-cache -f -v
  ```

---

## 鍵位

### 移動

#### 快速移動

| 快捷鍵 | 功能     |
|--------|----------|
| `K`    | 上       |
| `J`    | 下       |
| `H`    | 左       |
| `L`    | 右       |
| `0`    | 頭尾移動 |

#### 插入模式移動

| 快捷鍵     | 功能 |
|------------|------|
| `Ctrl + a` | Home |
| `Ctrl + e` | End  |

#### 命令模式移動

| 快捷鍵     | 功能         |
|------------|--------------|
| `Ctrl + a` | Home         |
| `Ctrl + e` | End          |
| `Ctrl + k` | 上           |
| `Ctrl + j` | 下           |
| `Ctrl + h` | 左           |
| `Ctrl + l` | 右           |
| `Ctrl + u` | 跳到上個單字 |
| `Ctrl + o` | 跳到下個單字 |

#### [vim-easymotion](https://github.com/easymotion/vim-easymotion) 
- 字母移動

| 快捷鍵 | 功能           |
|--------|----------------|
| `,`    | 單字符搜索移動 |
| `.`    | 雙字符搜索移動 |


### 保存 / 退出

| 快捷鍵       | 功能       |
|--------------|------------|
| `S`          | 保存       |
| `Leader` `s` | 保存(sudo) |
| `Q`          | 退出       |

### 剪貼

#### 剪下

| 快捷鍵 | 功能                 |
|--------|----------------------|
| `dl`   | 剪下當前光標所在單字 |
| `dL`   | 剪下當前光標到行尾   |
| `X`    | 剪下當前行           |

### 選取

| 快捷鍵     | 功能 |
|------------|------|
| `Ctrl + a` | 全選 |

#### 系統剪貼簿

| 快捷鍵     | 功能         |
|------------|--------------|
| `Y`        | 複製到剪貼簿 |
| `Ctrl + p` | 從剪貼簿貼上 |

### 分割視窗

| 快捷鍵         | 功能     |
|----------------|----------|
| `Leader` `j`   | 往下移動 |
| `Leader` `k`   | 往上移動 |
| `Leader` `l`   | 往右移動 |
| `Leader` `h`   | 往左移動 |
| `Ctrl + Up`    | 直向放大 |
| `Ctrl + Down`  | 直向縮小 |
| `Ctrl + Right` | 橫向放大 |
| `Ctrl + Left`  | 橫向縮小 |
| `s=`           | 視窗等大 |
| `ss`           | 水平分割 |
| `sv`           | 垂直分割 |

### 視窗操作
- Tab

| 快捷鍵 | 功能     |
|--------|----------|
| `tn`   | 新視窗   |
| `tj`   | 下個視窗 |
| `tk`   | 上個視窗 |
| `tc`   | 關閉視窗 |
- Buffer

| 快捷鍵 | 功能        |
|--------|-------------|
| `bj`   | 下個 Buffer |
| `bk`   | 上個 Buffer |
| `bc`   | 關閉 Buffer |

- 指定

| 快捷鍵       | 功能            |
|--------------|-----------------|
| `Leader` `1` | 切到第 1 個視窗 |
| `Leader` `2` | 切到第 2 個視窗 |
| `Leader` `3` | 切到第 3 個視窗 |
| `Leader` `4` | 切到第 4 個視窗 |
| `Leader` `5` | 切到第 5 個視窗 |
| `Leader` `6` | 切到第 6 個視窗 |
| `Leader` `7` | 切到第 7 個視窗 |
| `Leader` `8` | 切到第 8 個視窗 |
| `Leader` `9` | 切到第 9 個視窗 |

### 文件管理
#### [coc-explorer](https://github.com/weirongxu/coc-explorer) 
- 檔案樹

| 快捷鍵     | 功能                |
|------------|---------------------|
| `i`        | 選取                |
| `l`        | 開啟文件/資料夾     |
| `Enter`    | 進入資料夾/開啟文件 |
| `I`        | 分割視窗後開啟      |
| `o`        | 開啟/關閉資料夾     |
| `O`        | 在新標籤中開啟文件  |
| `n`        | 關閉當前所在資料夾  |
| `h`        | 到上一層資料夾      |
| `yp`       | 複製檔案名和路徑    |
| `yn`       | 複製檔案名          |
| `yy`       | 複製檔案            |
| `dd`       | 剪下檔案            |
| `pp`       | 貼上檔案            |
| `dD`       | 刪除檔案            |
| `a`        | 新增檔案            |
| `A`        | 新增資料夾          |
| `cw`       | 重新命名            |
| `.` / `zh` | 切換隱藏資料夾顯示  |
| `R`        | 刷新                |
| `q`        | 退出                |
| `?`        | 查看幫助            |

### 文字編輯
#### [vim-expand-region](https://github.com/terryma/vim-expand-region)
- 快速選取

| 快捷鍵 | 功能     |
|--------|----------|
| `e`    | 擴張選取 |
| `E`    | 縮小選取 |

#### [vim-sandwich](https://github.com/machakann/vim-sandwich) 
- 括號修改

| 快捷鍵 | 功能     |
|--------|----------|
| `sa`   | 添加括號 |
| `sd`   | 刪除括號 |
| `sr`   | 替換括號 |

#### [auto-pairs](https://github.com/jiangmiao/auto-pairs) 
- 自動添加括號

| 快捷鍵(插入模式) | 功能           |
|------------------|----------------|
| `Ctrl + f`       | 跳轉到下個括號 |
| `Ctrl + o`       | 快速移動括號   |
| `Ctrl + h`       | 刪除成對括號   |

#### [nerdcommenter](https://github.com/preservim/nerdcommenter) 
- 自動註釋

| 快捷鍵 | 功能             |
|--------|------------------|
| `mm`   | 添加 / 刪除 註釋 |
| `mn`   | 添加註釋         |

### 多光標模式
#### [vim-visual-multi](https://github.com/mg979/vim-visual-multi) 

| 快捷鍵     | 功能                |
|------------|---------------------|
| `Ctrl + j` | 向下新增光標        |
| `Ctrl + k` | 向上新增光標        |
| `Ctrl + n` | 選取單字            |
| `n` / `N`  | 選取 下個 / 上個    |
| `[` / `]`  | 到 上個 / 下個 光標 |
| `q`        | 取消當前選取        |
| `Q`        | 退出選取            |
| `Esc`      | 退出多光標模式      |

### 程式碼補全
#### [coc.nvim](https://github.com/neoclide/coc.nvim) 
- lsp 自動補全

| 快捷鍵        | 功能         |
|---------------|--------------|
| `Tab`         | 切換自動補全 |
| `g[` `g]`     | 查看報錯     |
| `Leader` `qf` | 自動修復報錯 |
| `gd`          | 查看定義     |
| `gy`          | 查看定義     |
| `gi`          | 查看定義     |
| `gr`          | 查看定義     |

#### [coc-snippets](https://github.com/neoclide/coc-snippets) 
- 代碼片段補全

| 快捷鍵        | 功能                   |
|---------------|------------------------|
| `Leader` `H`  | 顯示幫助文檔           |
| `Leader` `rn` | 重命名變數             |
| `Ctrl + l`    | 觸發 Snippet           |
| `Ctrl + j`    | 切換 / 觸發下個修改點  |
| `Ctrl + k`    | 切換上個修改點         |
| `Leader` `x`  | 添加選中片段到 Snippet |

#### [vim-autoformat](https://github.com/vim-autoformat/vim-autoformat) 
- 自動格式化

| 快捷鍵 | 功能         |
|--------|--------------|
| `F7`   | 格式化程式碼 |

### 翻譯
#### [coc-translator](https://github.com/voldikss/coc-translator) 
- 翻譯

| 快捷鍵 | 功能     |
|--------|----------|
| `ts`   | 翻譯文字 |

### 代碼除錯
#### [vimspector](https://github.com/puremourning/vimspector) 
- 除錯 

| 快捷鍵        | 功能               |
|---------------|--------------------|
| `F5`          | 開始除錯           |
| `F3`          | 中止除錯           |
| `F4`          | 重新開始除錯       |
| `F6`          | 暫停除錯           |
| `F9`          | 添加中斷點         |
| `Leader` `F9` | 添加自定義中斷點   |
| `F8`          | 添加函數斷點       |
| `Leader` `F8` | 運行到光標處       |
| `F10`         | 完成步驟           |
| `F11`         | 下一步             |
| `F12`         | 跳出函數           |
| `Ctrl + c`    | 退出除錯           |
| `Leader` `di` | 獲取光標處詳細資訊 |

- 中斷點窗口

| 快捷鍵          | 功能                          |
|-----------------|-------------------------------|
| `t` / `F9`      | 切換中斷點狀態（啟用 / 禁用） |
| `T`             | 切換所有中斷點狀態            |
| `dd` / `Del`    | 刪除中斷點                    |
| `i` / `a` / `o` | 添加行中斷點                  |
| `I` / `A` / `O` | 添加函數中斷點                |
| `Enter`         | 跳轉到中斷點位置              |

- 變數窗口

| 快捷鍵           | 功能         |
|------------------|--------------|
| `Enter`          | 開啟 / 關閉  |
| `Leader` `Enter` | 修改變數     |
| `i`              | 顯示詳細資訊 |

- 觀察窗口

| 快捷鍵           | 功能       |
|------------------|------------|
| `i` / `a`        | 添加觀察項 |
| `dd` / `Del`     | 刪除觀察項 |
| `Leader` `Enter` | 修改觀察項 |

### Markdown 文件
#### markdown-snippets

| 快捷鍵     | 功能              |
|------------|-------------------|
| `Ctrl + j` | 跳到下一個 \<++\> |
| `Ctrl + k` | 跳到上一個 \<++\> |
| `,n`       | \<++\>            |
| `,b`       | **粗體** 文字     |
| `,s`       | ~~被劃去~~ 的文字 |
| `,i`       | *斜體* 文字       |
| `,d`       | `程式片段`        |
| `,c`       | 大的 `程式片段`   |
| `,m`       | - [ ] 清單        |
| `,p`       | 圖片              |
| `,a`       | [連結]()          |
| `,1`       | # H1              |
| `,2`       | ## H2             |
| `,3`       | ### H3            |
| `,4`       | #### H4           |
| `,l`       | ---               |

#### [vim-table-mode](https://github.com/dhruvasagar/vim-table-mode) 
- Markdown 表格生成

| 快捷鍵        | 功能                        |
|---------------|-----------------------------|
| `Leader` `tm` | 切換表格狀態（啟用 / 禁用） |
| `Leader` `tr` | 重新整理格                  |
| `Leader` `ti` | 往後添加列                  |
| `Leader` `tI` | 往前添加列                  |
| `Leader` `td` | 刪除列                      |

#### [vim-markdown-toc](https://github.com/mzlogin/vim-markdown-toc) 
- Markdown 自動標題

| 快捷鍵        | 功能     |
|---------------|----------|
| `Leader` `tg` | 創建標題 |


#### [coc-markdown-preview-enhanced](https://github.com/weirongxu/coc-markdown-preview-enhanced) 
- Markdown 網頁預覽

| 快捷鍵 | 功能 |
|--------|------|
| `F5`   | 啟動 |

### 標籤列表管理
#### [vista.vim](https://github.com/liuchengxu/vista.vim) 
| 快捷鍵 | 功能            |
|--------|-----------------|
| `T`    | 開啟 Vista 視窗 |


#### [vim-signature](https://github.com/kshenoy/vim-signature) 
- 書籤

| 快捷鍵          | 功能                 |
|-----------------|----------------------|
| `m` `<T>`       | 添加 `T` 標籤        |
| `m` `Leader`    | 添加 / 刪除標籤      |
| `m` `Backspace` | 刪除所有標籤         |
| `m` `.`         | 切換到下個標籤       |
| `m` `,`         | 切換到上個標籤       |
| `M` `>`         | 照字母順序到下個標籤 |
| `M` `<`         | 照字母順序到上個標籤 |
| `m` `/`         | 顯示所有標籤         |

#### [coc-lists](https://github.com/neoclide/coc-lists) 

| 快捷鍵        | 功能                       |
|---------------|----------------------------|
| `i` / `a`     | 進入插入模式(搜索)         |
| `Ctrl + o`    | 退出插入模式               |
| `Leader` `u`  | 跳到下個                   |
| `Leader` `i`  | 跳到上個                   |
| `Leader` `p`  | 開啟上次列表               |
| `Leader` `ce` | 開啟工作目錄下檔案列表     |
| `Leader` `ct` | 顯示標籤列表               |
| `Leader` `cg` | 搜尋工作目錄               |
| `Leader` `w`  | 在當前檔案, 搜尋單詞       |
| `Leader` `f`  | 在當前工作目錄內, 搜尋單詞 |


### 版本管理
#### [agit.vim](https://github.com/cohama/agit.vim) 
- Git 版本管理

| 快捷鍵     | 功能                            |
|------------|---------------------------------|
| `J`        | 向下滾動 agit-stat 窗口         |
| `K`        | 向上滾動 agit-stat 窗口         |
| `Ctrl` `j` | 向下滾動 agit-diff 窗口         |
| `Ctrl` `k` | 向上滾動 agit-diff 窗口         |
| `u`        | 重新加載緩衝區                  |
| `yh`       | 顯示游標下版本的哈希值          |
| `Ctrl` `g` | 顯示提交資訊                    |
| `q`        | 退出 agit                       |
| `C`        | 切換分支                        |
| `cb`       | 當前版本下創見分支              |
| `D`        | 刪除分支                        |
| `rs`       | 移動 HEAD 到當前版本            |
| `rm`       | 移動 HEAD 到當前版本,更新暫存區 |
| `rh`       | 移動 HEAD 到當前版本,更新工作區 |
| `rb`       | 不產生分支合併                  |
| `ri`       | 執行 "rebase -i" 在當前分支     |
| `di`       | 顯示當前文件版本的差異          |
| `dl`       | 顯示當前文件與本地之間的差異    |

#### [coc-git](https://github.com/neoclide/coc-git) 
- 文件的 git

| 快捷鍵        | 功能         |
|---------------|--------------|
| `]h`          | 下一個修改塊 |
| `[h`          | 上一個修改塊 |
| `]c`          | 下一個衝突塊 |
| `[c`          | 上一個衝突塊 |
| `gs`          | 顯示當前修改 |
| `Leader` `gs` | git status   |
| `Leader` `gc` | git commits  |

#### [vim-gitgutter](https://github.com/airblade/vim-gitgutter) 
- 文件的 git

| 快捷鍵        | 功能                   |
|---------------|------------------------|
| `Leader` `ga` | 添加當前塊修改到暫存區 |
| `Leader` `gu` | 取消當前塊的修改       |

#### [undotree](https://github.com/mbbill/undotree) 
- 文件撤銷

| 快捷鍵 | 功能         |
|--------|--------------|
| `U`    | 打開撤銷歷史 |
| `j`    | 往更新的紀錄 |
| `k`    | 往更老的紀錄 |

