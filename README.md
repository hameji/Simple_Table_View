## アルバイト活動用のポートフォリオ

シンプルな　 UITableView 　のサンプル

## Features

シンプルにアーキテクチャを用いずに TableView を作成

## Requirements

- Xcode 12.5
- compatible with iPhone, iPad (iOS 14.5~)
- Homebrew 3.3.6
- ruby 2.6.3p62
- rbenv 1.1.2
- Bundler version 2.2.3
- CocoaPods v1.11.2

## Installation

1. github からクローン
2. project フォルダに移動
3. Bundler の config に local path を設定
4. アプリと同 version の CocoaPods(v1.11.2)をインストール
5. アプリと同 version の CocoaPods(v1.11.2)でライブラリの導入

```
git clone https://github.com/hameji/Simple_UITableView
cd project
bundle config set --local path 'vendor/bundle'
bundle install
bundle exec pod install
```

## Libraries

## Author

[hameji](https://github.com/hameji)<br>
twitter @hameji001
