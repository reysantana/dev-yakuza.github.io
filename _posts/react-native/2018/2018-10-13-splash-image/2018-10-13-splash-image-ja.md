---
layout: 'post'
permalink: '/react-native/splash-image/'
paginate_path: '/react-native/:num/splash-image/'
lang: 'ja'
categories: 'react-native'
comments: true

title: 'Splashイメージ'
description: 'generator-rn-toolboxを使ってSplashイメージを設定して見ましょう。'
image: '/assets/images/category/react-native/splash-image.jpg'
---


## 概要
mac osxで [generator-rn-toolbox](https://github.com/bamlab/generator-rn-toolbox){:rel="nofollow noreferrer" target="_blank" }を使ってsplashイメージを作る方法を説明します。

## ライブラリインストール
generator-rn-toolbox ライブラリインストールは前回のブログ[App icon]({{site.url}}/{{page.categories}}/app-icon/){:target="_blank"}をご参考してください。

## イメージ準備
splashイメージで使う2208x2208pxサイズのpsdファイルを準備します。

### sketchappからpsdファイル生成
私たちはデザインでsketchappを使ってます。sketchappをpsdファイルのエクスポートができないのでイメージ準備ができませんでしけど、下記のういすればpsdファイルを作ることができます。

1. sketchappでsplashイメージをデザインする。
1. デザインしたsplashイメージをpdfでエクスポートする。
1. ネットでpdf to psd converterを検索してオンライン変換ツールを探す。(私たちが使った[サイト](https://www.pdfconvertonline.com/pdf-to-psd-online.html){:rel="nofollow noreferrer" target="_blank" })

## splashイメージ設定
下記のコマンドで角osに合うsplashイメージを生成します。

{% include_relative common/usage.md %}

## 確認
splashイメージが生成されてプロジェクトへ反映されました。プロジェクトを実行してsplashイメージが反映されたかを確認します。

{% include_relative common/start_project.md %}

splashイメージがちゃんと表示されない時はシミュレーター/端末でアプリを削除してもう一度実行してください。

## エラー対応
アンドロイド(Android)でsplashイメージがフルサイズ表示できない問題が発生しました。それで```android/app/src/main/res/drawable/launch_screen_bitmap.xml```を下記のように修正して解決しました。

```xml
<bitmap
    android:src="@drawable/launch_screen"
    android:gravity="fill_horizontal|fill_vertical"/>
```

### イメージ生成ができない
下記のようにエラーがでってイメージが生成されない問題が発生しました。

```bash
Error: Command failed: identify: FailedToExecuteCommand `'gs'
```

下記のコマンドで```ghostscript```をインストールします。

```bash
brew install ghostscript
```

また、下記のコマンドを実行したら、正常に動作することを確認することができます。
다시 아래에 명령어를 실행할 경우, 정상 동작하는 것을 확인하실 수 있습니다.

{% include_relative common/usage.md %}


## 参考
- 公式サイト: [generator-rn-toolbox](https://github.com/bamlab/generator-rn-toolbox){:rel="nofollow noreferrer" target="_blank" }