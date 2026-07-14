# 不会 Git 也能完成的 GitHub 发布步骤

以下步骤全部在浏览器中完成，不需要输入 Git 命令。

## 一、创建仓库

1. 登录 [GitHub](https://github.com/)。
2. 点击页面右上角的 **+**，选择 **New repository**。
3. Repository name 填写：`feng-ge-codex-pet`。
4. Description 可以填写：`峰哥高清 Q 版 Codex 自定义宠物`。
5. 分享给所有人时选择 **Public**；只给指定朋友时选择 **Private**，之后再邀请他们。
6. 不要勾选自动创建 README、`.gitignore` 或 License，因为这些文件已经准备好了。
7. 点击 **Create repository**。

## 二、上传准备好的仓库文件

1. 打开本机的 `feng-ge-codex-pet-repo` 文件夹。
2. 在新建的 GitHub 仓库页面点击 **Add file → Upload files**。
3. 把 `feng-ge-codex-pet-repo` 文件夹里面的全部文件和文件夹拖入上传区域。注意：上传的是里面的内容，不要再套一层同名目录。
4. 等待所有文件上传完毕。
5. Commit message 填写：`Initial release of Feng Ge Codex Pet`。
6. 选择直接提交到 `main` 分支，然后点击 **Commit changes**。

## 三、创建可下载的 Release

1. 回到仓库主页，在右侧点击 **Releases**。
2. 点击 **Create a new release**。
3. 点击 **Choose a tag**，输入 `v1.0.0`，然后选择创建这个新标签。
4. Release title 填写：`峰哥 Codex Pet v1.0.0`。
5. 描述可填写：`首次公开版本，包含完整 Codex v2 动画和一键安装脚本。`
6. 将我准备的 `feng-ge-pet-v1.0.0.zip` 拖到附件区域。
7. 点击 **Publish release**。

完成后，把下面这个地址发给朋友即可：

```text
https://github.com/你的用户名/feng-ge-codex-pet/releases/latest
```

朋友进入页面后，只需下载 ZIP、解压并运行对应系统的安装脚本。

## 四、以后更新版本

1. 在仓库中替换 `feng-ge/pet.json` 和 `feng-ge/spritesheet.webp`。
2. 更新 README 中的说明或截图。
3. 重新制作安装 ZIP。
4. 创建新的 Release，例如 `v1.0.1` 或 `v1.1.0`。

不要覆盖旧 Release；保留旧版本方便朋友回退。

## 五、公开前检查

- 确认仓库里没有密码、API Key、Cookie、账号信息或私人文件。
- 确认 `pet.json` 和 `spritesheet.webp` 同时存在。
- 确认 ZIP 解压后能看到 `install.ps1`、`install.sh` 和 `feng-ge` 文件夹。
- 确认你有权公开分享相关人物形象、台词和图标素材。
- 如果暂时只想给熟人测试，先创建 Private 仓库并邀请朋友，更稳妥。

GitHub 官方参考：[创建仓库](https://docs.github.com/en/repositories/creating-and-managing-repositories/creating-a-new-repository)、[上传项目](https://docs.github.com/en/get-started/start-your-journey/uploading-a-project-to-github)、[分享 Release](https://docs.github.com/en/repositories/releasing-projects-on-github/linking-to-releases)。
