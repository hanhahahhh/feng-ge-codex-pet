# 峰哥 Codex Pet

一个适用于 Codex 桌面版和兼容 Codex CLI 的高清 Q 版自定义宠物。

![峰哥动作总览](docs/contact-sheet.png)

## 功能

- Codex v2 宠物图集：`1536 × 2288`、11 行动画、透明 WebP
- `waiting`：向上翻白眼，并显示“最烦学生了”
- `failed`：坏笑，并显示“妈呀，这是好事儿啊”
- `review`：双手转动粉色祝福转盘
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
- 网页版：当前上传接口要求 `1536 × 1872`，因此这个 `1536 × 2288` 的完整 v2 图集不能直接上传。

详见 [OpenAI Pets 文档](https://learn.chatgpt.com/docs/pets)。

## 文件校验

发布文件的 SHA-256 值见 [SHA256SUMS.txt](SHA256SUMS.txt)。

## 发布者说明

如果你是仓库维护者，请按 [PUBLISHING.zh-CN.md](PUBLISHING.zh-CN.md) 完成第一次 GitHub 发布。

## 使用范围

本项目按 [NOTICE.md](NOTICE.md) 中的说明提供。公开发布前，请确认你有权分享其中涉及的人物形象、台词和图标素材。
