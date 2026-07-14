# 峰哥 Codex Pet

一个适用于 Codex 桌面版和兼容 Codex CLI 的高清 Q 版自定义宠物。


## 功能

- Codex宠物图集：`1536 × 2288`、11 行动画、透明 WebP
- 目前包含三种状态特定情形，其余状态暂未定制化处理
- `waiting`：向上翻白眼，并显示“最烦学生了”
- `failed`：坏笑，并显示“妈呀，这是好事儿啊”，具体为什么是好事儿，可以给峰哥刷一个水晶球子问问
- `review`：手持粉色祝福转盘
- 包含 16 个顺时针视线方向

## 最简单的安装方法

1. 在本仓库右侧打开 **Releases**，下载最新的 `feng-ge-pet-v1.0.0.zip`。
2. 解压 ZIP。
3. 按你的系统运行安装脚本：

### Windows

在解压目录空白处右键选择“在终端中打开”，然后运行：

```powershell
powershell -ExecutionPolicy Bypass -File .\install.ps1
```

### macOS / Linux

在解压目录打开终端，然后运行：

```bash
chmod +x install.sh
./install.sh
```

安装脚本会把已有的同名宠物备份为带时间戳的目录，然后安装新版本。

## 手动安装

将仓库中的整个 `feng-ge` 文件夹复制到：

- Windows：`%USERPROFILE%\.codex\pets\feng-ge\`
- macOS / Linux：`${CODEX_HOME:-$HOME/.codex}/pets/feng-ge/`

目标目录中必须同时存在：

```text
feng-ge/
├─ pet.json
└─ spritesheet.webp
```

随后重启 Codex，或打开 **Settings → Pets → Refresh**，再选择“峰哥”。Codex CLI 用户可以输入 `/pets` 打开宠物选择器。

## 兼容性

- 推荐：最新版 Codex/ChatGPT 桌面应用。
- Codex CLI：需要支持 Kitty graphics、Sixel，或 iTerm2 3.6+；tmux 和 Zellij 内不可用。
- IDE 扩展：目前没有宠物选择器或悬浮宠物。

详见 [OpenAI Pets 文档](https://learn.chatgpt.com/docs/pets)。

## 文件校验

发布文件的 SHA-256 值见 [SHA256SUMS.txt](SHA256SUMS.txt)。

## 发布者说明

本项目仅供个人娱乐和非商业用途。禁止销售、付费分发、广告推广、引流变现，以及其他任何直接或间接的盈利行为。分享时请保留原仓库链接和本声明。

