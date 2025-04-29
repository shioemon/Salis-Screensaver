![](https://github.com/pedrommcarrasco/Brooklyn/blob/master/Design/logo.jpg?raw=true)

# Salis Screensaver

> [Pedro Carrasco](https://twitter.com/pedrommcarrasco)により制作された**[Appleスペシャルイベント](https://www.youtube.com/watch?v=bfHEnw6Rm-4)**(2018年10月30日)のブルックリン音楽アカデミー、ハワード・ギルマン・オペラハウスで発表されたアニメーションに基づくスクリーンセーバー「Brooklyn」を改良したバージョンです。

<p align="center">
    <img src="https://github.com/pedrommcarrasco/Brooklyn/blob/master/Design/showcase.gif?raw=true" alt="例"/>
</p>

## 機能 ✅

* インターネット接続不要
* Homebrewサポート
* ライト＆ダークテーマ
* 表示したいアニメーションを選択可能
* 各アニメーションの繰り返し回数を設定可能
* アニメーションのランダム再生

<p align="center">
    <img src="https://github.com/pedrommcarrasco/Brooklyn/blob/master/Design/preferenceMenu.png?raw=true" alt="設定画面"/>
</p>

## インストール方法 📦

**Salis Screensaver**をインストールする前に、「システム環境設定」を閉じてください。

スクリーンセーバーは以下のターミナルコマンドでプログラム的に設定することもできます：

```shell
defaults -currentHost write com.apple.screensaver moduleDict -dict moduleName Salis path "$HOME/Library/Screen Savers/Salis.saver"
```

### 手動インストール :hand:

1. [こちらをクリックしてダウンロード](https://github.com/shioemon/Salis-Screensaver/releases/download/1.0.0/Salis.saver.zip)
2. **Salis.saver**を開く（ダブルクリック）
3. 「"Salis.saver"は開発元が未確認のため開けません」というメッセージが表示されたら、`OK`をクリック
4. `環境設定`を開く
5. `セキュリティとプライバシー`を選択
6. `一般`タブを選択
7. 下部にある`とにかく開く`をクリック

### Homebrew 🍺

1. ターミナルを開く
2. `brew install --cask salis --no-quarantine`と入力（※Homebrewでの配布開始後に有効になります）

## アンインストール 🗑️

### 手動 :hand:

- システム環境設定でSalisを右クリックして`Salisを削除`を選択、または
- `/Library/Screen Savers`または`/Users/ユーザー名/Library/Screen Savers`にある`Salis.saver`を削除

### Homebrew 🍺

1. ターミナルを開く
2. `brew uninstall --cask salis`と入力（※Homebrewでの配布開始後に有効になります）

## 互換性 🔧

OS X El Capitan (10.11)以降が必要です。

## トラブルシューティング 🤕

Salisスクリーンセーバーは、システムによって悪意のあるソフトウェアとしてブロックされる場合があります。macOS Big Sur以降では、`セキュリティとプライバシー`で`とにかく開く`をクリックしても問題が解決しないことがあります。

Appleによる検疫を回避するには、ターミナルで以下のコマンドを使用してください：

```shell
sudo xattr -d com.apple.quarantine ~/"Library/Screen Savers/Salis.saver"
```

## クレジット ❤️

本スクリーンセーバーは[Pedro Carrasco](https://twitter.com/pedrommcarrasco)氏の[Brooklyn](https://github.com/pedrommcarrasco/Brooklyn)をベースに改良したものです。オリジナル版の開発者をサポートしたい場合は、以下のリンクをご利用ください：

* https://github.com/users/pedrommcarrasco/sponsorship
* https://www.buymeacoffee.com/pedrommcarrasco
* https://www.paypal.me/pedrommcarrasco

## 貢献  🙌 

このプロジェクトに[アイデア](https://github.com/shioemon/Salis-Screensaver/issues)を提供したり、新機能や既存の問題を解決する[プルリクエスト](https://github.com/shioemon/Salis-Screensaver/pulls)を開いたりして、自由に貢献してください。

## ライセンス ⛔

SalisはMITライセンスの下で利用可能です。詳細については[LICENSE](https://github.com/shioemon/Salis-Screensaver/blob/main/LICENSE)ファイルを参照してください。ロゴ＆オリジナルアニメーションはApple社の所有物です。
