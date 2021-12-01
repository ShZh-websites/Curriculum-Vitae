<h1 align=center>Curriculum Vitáe</h1>

# Requirement

首先你需要一个Tex开发环境，建议使用带有官方性质的TUG（Tex Users Group）的TexLive（MacOS下为MacLive）。

虽然TexLive（MacLive）提供了常用的软件（比如本项目用到的xelatex和latexmk）、字体和文档，你依然需要下载额外的东西：

- **FontAwesome**：TexLive默认集成，但是你还是需要将FontAwesome字体文件安装到系统中。建议使用`tlmgr list --info fontawesome`找到相应路径后安装。
- **SourceHanSerif**：思源宋体。点击此[链接](https://github.com/adobe-fonts/source-han-serif/releases)选择安装。
- **SourceHanSans**：思源黑体。点击此[链接](https://github.com/adobe-fonts/source-han-sans/releases)选择安装。



# Usage

文档构建的指令：

```bash
# 构建英文文档
make en-US.pdf
# 构建中文文档
make zh-CN.pdf
# 构建全部的文档
make all
```

文档预览的指令（未提供PVC）：

```bash
# 预览英文文档
make view-en
# 预览中文文档
make view-cn
```

清除指令：

```bash
# 清理中间临时文件
make clean
# 清理临时文件和targets
make cleanall
```



# Citation

我个人的简历参考了以下的项目：

- [billryan](https://github.com/billryan)/[resume](https://github.com/billryan/resume)：参考了CV的格式。

- [sjtug](https://github.com/sjtug)/[SJTUThesis](https://github.com/sjtug/SJTUThesis)：参考了Makfile，latexmkrc以及workflow构建脚本。

🙏 感谢以上项目对于社区的卓越共享。



# License

[MIT LICENSE](LICENSE) 

Copyright ©️2021 Sh-Zh-7

