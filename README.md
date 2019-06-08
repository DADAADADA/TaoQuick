# 目录
- [TaoQuick](#taoquick)
  - [徽章预览](#%E5%BE%BD%E7%AB%A0%E9%A2%84%E8%A7%88)
    - [CI](#ci)
    - [Repo](#repo)
    - [Issue](#issue)
    - [Other status](#other-status)
  - [开发环境](#%E5%BC%80%E5%8F%91%E7%8E%AF%E5%A2%83)
  - [效果预览](#%E6%95%88%E6%9E%9C%E9%A2%84%E8%A7%88)
    - [启动界面](#%E5%90%AF%E5%8A%A8%E7%95%8C%E9%9D%A2)
    - [动态换皮肤](#%E5%8A%A8%E6%80%81%E6%8D%A2%E7%9A%AE%E8%82%A4)
    - [更多基础效果预览](#%E6%9B%B4%E5%A4%9A%E5%9F%BA%E7%A1%80%E6%95%88%E6%9E%9C%E9%A2%84%E8%A7%88)
    - [动画效果预览](#%E5%8A%A8%E7%94%BB%E6%95%88%E6%9E%9C%E9%A2%84%E8%A7%88)
  - [TaoQuick 安装和使用](#taoquick-%E5%AE%89%E8%A3%85%E5%92%8C%E4%BD%BF%E7%94%A8)
  - [联系方式](#%E8%81%94%E7%B3%BB%E6%96%B9%E5%BC%8F)
  - [赞助](#%E8%B5%9E%E5%8A%A9)
# TaoQuick

这是一个Qt/Qml组件库，集成了常用的QtQuick组件，并做了适当的属性封装、功能扩展，

以方便开发Qml程序。

实现原理可以参考[博客](https://jaredtao.github.io) 或者 [知乎专栏](https://zhuanlan.zhihu.com/TaoQt)

《Qml组件化编程》系列文章。

## 徽章预览
### CI
|[License][license-link]| [Ubuntu/MacOS][lin-link] | [Windows][win-link] |[Release][release-link]|[Download][download-link]|latest|
|:--:|:--:|:--:|:--:|:--:|:--:|
|![license-badge]| ![lin-badge]| ![win-badge]|![release-badge] |![download-badge]|![download-latest]|

[license-link]: https://github.com/jaredtao/TaoQuick/blob/master/LICENSE "LICENSE"
[license-badge]: https://img.shields.io/badge/license-MIT-blue.svg "MIT"

[lin-badge]: https://travis-ci.com/jaredtao/TaoQuick.svg?branch=master "Travis build status"
[lin-link]: https://travis-ci.com/jaredtao/TaoQuick "Travis build status"
[win-badge]: https://ci.appveyor.com/api/projects/status/ontim37g33hvfv72?svg=true "AppVeyor build status"
[win-link]: https://ci.appveyor.com/project/jiawentao/TaoQuick "AppVeyor build status"

[release-link]: https://github.com/jaredtao/TaoQuick/releases "Release status"
[release-badge]: https://img.shields.io/github/release/jaredtao/TaoQuick.svg?style=flat-square "Release status"
[download-link]: https://github.com/jaredtao/TaoQuick/releases/latest "Download status"
[download-badge]: https://img.shields.io/github/downloads/jaredtao/TaoQuick/total.svg "Download status"
[download-latest]: https://img.shields.io/github/downloads/jaredtao/TaoQuick/latest/total.svg "latest status"

### Repo 
|latest tag|languages|top language|code size|repo size|
|:--: |:--: |:--:|:--:|:--:|
|![tag-latest]|![languanges]|![taolanguage]|![code-size]|![repo-size]|

[languanges]: https://img.shields.io/github/languages/count/jaredtao/taoquick.svg "language count"
[taolanguage]: https://img.shields.io/github/languages/top/jaredtao/taoquick.svg "top language"
[code-size]: https://img.shields.io/github/languages/code-size/jaredtao/taoquick.svg "code size"
[repo-size]: https://img.shields.io/github/repo-size/jaredtao/taoquick.svg "repo-size"
[tag-latest]: https://img.shields.io/github/tag/jaredtao/taoquick.svg

### Issue
|[Issues][issues-link]|closed issue|pull request|pull closed|
|:--:|:--:|:--:|:--:|
|![issuse-badge]|![issue-closed]|![pull-request]|![pull-closed]|

[issues-link]: https://github.com/jaredtao/TaoQuick/issues 
[issuse-badge]: https://img.shields.io/github/issues/jaredtao/taoquick.svg?style=popout 
[issue-closed]: https://img.shields.io/github/issues-closed/jaredtao/taoquick.svg
[pull-request]: https://img.shields.io/github/issues-pr/jaredtao/taoquick.svg
[pull-closed]: https://img.shields.io/github/issues-pr-closed/jaredtao/taoquick.svg

### Other status

|commit-active|laste commit|release date|forks|stars|goto hit|
|:--:|:--:|:--:|:--:|:--:|:--:|
|![commit-active]|![commit-latest]|![release-date]|![forks-badge]|![stars-badge]|![goto-hit]|

[forks-badge]: https://img.shields.io/github/forks/jaredtao/taoquick.svg "forks"
[stars-badge]: https://img.shields.io/github/stars/jaredtao/taoquick.svg "stars"
[goto-hit]: https://img.shields.io/github/search/jaredtao/taoquick/goto.svg "goto-hit"
[commit-active]: https://img.shields.io/github/commit-activity/w/jaredtao/taoquick.svg
[commit-latest]: https://img.shields.io/github/last-commit/jaredtao/taoquick.svg
[release-date]: https://img.shields.io/github/release-date/jaredtao/taoquick.svg

## 开发环境

* Qt 5.12.x

## 效果预览

### 启动界面

![](Preview/Splash.gif)

### 动态换皮肤

![](Preview/Skin.gif)

预览效果太多，浏览器会卡，放进单独的Markdown
### 更多基础效果预览

[基础效果预览](Preview-normal.md)

### 动画效果预览

[动画效果预览](Preview-animation.md)

说明：动画效果暂不开源，博客有教程和核心代码，有需要请单独联系我。

## TaoQuick 安装和使用

[TaoQuick 安装和使用](Install.md)

## 联系方式

***

| 作者 | 涛哥                           |
| ---- | -------------------------------- |
|开发理念 | 弘扬鲁班文化，传承工匠精神 |
| 博客 | https://jaredtao.github.io/ |
|知乎专栏| https://zhuanlan.zhihu.com/TaoQt |
| 邮箱 | jared2020@163.com                |
| 微信 | xsd2410421                       |
| QQ、TIM | 759378563                      |

***

QQ(TIM)、微信二维码

<img src="https://github.com/jaredtao/jaredtao.github.io/blob/master/img/qq_connect.jpg?raw=true" width="30%" height="30%" /><img src="https://github.com/jaredtao/jaredtao.github.io/blob/master/img/weixin_connect.jpg?raw=true" width="30%" height="30%" />


****** 请放心联系我，乐于提供咨询服务，也可洽谈有偿技术支持相关事宜。

***
## 赞助
<img src="https://github.com/jaredtao/jaredtao.github.io/blob/master/img/weixin.jpg?raw=true" width="30%" height="30%" /><img src="https://github.com/jaredtao/jaredtao.github.io/blob/master/img/zhifubao.jpg?raw=true" width="30%" height="30%" />

****** 觉得分享的内容还不错, 就请作者喝杯奶茶吧~~
***

