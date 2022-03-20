# Vim configure
---
<!-- vim-markdown-toc GFM -->

* [環境配置](#環境配置)
    - [必備軟體安裝](#必備軟體安裝)
        + [coc-nvim](#coc-nvim)
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
        + [系統剪貼簿](#系統剪貼簿)
    - [分割視窗](#分割視窗)
    - [視窗操作](#視窗操作)
    - [文字編輯](#文字編輯)
        + [wildfire.vim](#wildfirevim)
        + [vim-sandwich](#vim-sandwich)
        + [nerdcommenter](#nerdcommenter)
    - [多光標模式](#多光標模式)
        + [vim-visual-multi](#vim-visual-multi)
    - [程式碼補全](#程式碼補全)
        + [coc-nvim](#coc-nvim-1)
        + [coc-snippets](#coc-snippets)
    - [翻譯](#翻譯)
        + [coc-translator](#coc-translator)
    - [代碼除錯](#代碼除錯)
        + [vimspector](#vimspector)
    - [Markdown 文件](#markdown-文件)
        + [markdown-snippets](#markdown-snippets)
        + [vim-table-mode](#vim-table-mode)
        + [vim-markdown-toc](#vim-markdown-toc)
        + [coc-markdown-preview-enhanced](#coc-markdown-preview-enhanced)
    - [版本管理](#版本管理)
        + [agit.vim](#agitvim)
        + [undotree](#undotree)

<!-- vim-markdown-toc -->
---------------
## 環境配置

### 必備軟體安裝

```shell
apt install -y git pip npm nodejs gdb
```
#### coc-nvim
- 升級 nodejs

```shell
npm install -g n
n install stable
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

| 快捷鍵 | 功能 |
|--------|------|
| `K`    | 上   |
| `J`    | 下   |
| `H`    | 左   |
| `L`    | 右   |

#### 插入模式移動

| 快捷鍵     | 功能 |
|------------|------|
| `Ctrl + c` | Home |
| `Ctrl + v` | End  |

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
| `z`    | 行移動         |


### 保存 / 退出

| 快捷鍵 | 功能 |
|--------|------|
| `S`    | 保存 |
| `Q`    | 退出 |

### 剪貼

#### 剪下

| 快捷鍵 | 功能                 |
|--------|----------------------|
| `dl`   | 剪下當前光標所在單字 |
| `dL`   | 剪下當前光標到行尾   |
| `X`    | 剪下當前行           |

#### 系統剪貼簿

| 快捷鍵     | 功能         |
|------------|--------------|
| `Ctrl` `c` | 複製到剪貼簿 |
| `Ctrl` `p` | 從剪貼簿貼上 |

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

### 文字編輯
#### [wildfire.vim](https://github.com/gcmt/wildfire.vim)
- 快速選取

| 快捷鍵       | 功能     |
|--------------|----------|
| `e`          | 擴張選取 |
| `E`          | 縮小選取 |
| `Leader` `s` | 快速選取 |

#### [vim-sandwich](https://github.com/machakann/vim-sandwich) 
- 括號修改

| 快捷鍵 | 功能     |
|--------|----------|
| `sa`   | 添加括號 |
| `sd`   | 刪除括號 |
| `sr`   | 替換括號 |

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
#### [coc-nvim](https://github.com/neoclide/coc.nvim) 
- lsp 自動補全

| 快捷鍵         | 功能         |
|----------------|--------------|
| `Ctrl + Space` | 調出自動補全 |
| `Tab`          | 切換自動補全 |
| `g[` `g]`      | 查看報錯     |
| `Leader` `qf`  | 自動修復報錯 |
| `gd`           | 查看定義     |
| `gy`           | 查看定義     |
| `gi`           | 查看定義     |
| `gr`           | 查看定義     |

#### [coc-snippets](https://github.com/neoclide/coc-snippets) 
- 代碼片段補全

| 快捷鍵        | 功能                   |
|---------------|------------------------|
| `Leader` `H`  | 顯示幫助文檔           |
| `Leader` `f`  | 格式化程式碼           |
| `Leader` `rn` | 重命名變數             |
| `Ctrl + l`    | 觸發 Snippet           |
| `Ctrl + j`    | 切換下個修改點         |
| `Ctrl + k`    | 切換上個修改點         |
| `Leader` `x`  | 添加選中片段到 Snippet |

### 翻譯
#### [coc-translator](https://github.com/voldikss/coc-translator) 
- 翻譯

| 快捷鍵 | 功能     |
|--------|----------|
| `ts`   | 翻譯文字 |

### 代碼除錯
#### [vimspector](https://github.com/puremourning/vimspector) 

- 安裝除錯器
  - debgpy 安裝所需

  ```shell
  pip install setuptools versioneer autopep8
  ```

- 安裝

```vim
VimspectorInstall ccls debugpy vscode-cpptools CodeLLDB --verbose
```

or


```shell
pip install debgpy
```

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

#### [undotree](https://github.com/mbbill/undotree) 
- 文件撤銷

| 快捷鍵 | 功能         |
|--------|--------------|
| `U`    | 打開撤銷歷史 |
| `j`    | 往更新的紀錄 |
| `k`    | 往更老的紀錄 |

