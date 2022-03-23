# how-to-use

## 初始状态

打开 **Swift_Playgrounds_Author_Template_for_Xcode** 的工程，可以正常直接使用。

~~`build` 或 `run` 命令之后不会产生 `.playgroundbook` 文件，原因未知。~~

新版本的 Xcode 会隐藏默认的 Production 目录，如果需要找到这个目录：`Product` -> `Show Build Folder in Finder` 。

如果需要生成 `.playgroundbook` 文件，可以在工程目录下执行 `xcodebuild -target PlaygroundBook` 。文件将生成在 **build** 文件夹中。

## 生成了新的模板

1. 需要在新的 **Swift_Playgrounds_Author_Template_for_Xcode** 的工程中引入 **AnotherPlaygroundSupport** 这个 Swift Package ，具体方法为 `Add Packages..` -> `add Local...`。

2. 将 `PlaygroundSupport/build/Release-iphoneos/PlaygroundSupport.framework` 这个文件复制替换 `Swift_Playgrounds_Author_Template_for_Xcode_xx.x/Template/SupportingContent/PlaygroundsFrameworks` 下所有的 `PlaygroundSupport.framework` 。

>  实际上只要替换 `iphoneos` 的即可。

## 生成 `PlaygroundSupport.framework`

在 **PlaygroundSupport** 工程目录下执行 `xcodebuild -target PlaygroundSupport` 。文件将生成在 **build** 文件夹中。

# 工程介绍

- **PlaygroundSupport** 用于生成 `PlaygroundSupport.framework` 用于打包 `.playgroundbook` 文件。

- **AnotherPlaygroundSupport** 用于在工程中模拟 `PlaygroundSupport.framework`。
