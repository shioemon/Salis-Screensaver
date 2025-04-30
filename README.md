![](https://raw.githubusercontent.com/op5no29/Salis-Screensaver/refs/heads/main/Brooklyn/Resources/title.png)

# Salis Screensaver

> <a href="https://twitter.com/pedrommcarrasco" target="_blank">Pedro Carrasco</a>により制作された**<a href="https://www.youtube.com/watch?v=bfHEnw6Rm-4" target="_blank">Appleスペシャルイベント</a>**(2018年10月30日)のブルックリン音楽アカデミー、ハワード・ギルマン・オペラハウスで発表されたアニメーションに基づくスクリーンセーバー「Brooklyn」を改良したバージョンです。

## なぜSalis版を作ったのか

最新のmacOS（Sequoia、Sonoma、Ventura）では、オリジナルのBrooklynスクリーンセーバーに互換性の問題がありました。具体的には以下のような問題が発生していました：

- Appleロゴが正しい位置に表示されず、右上に表示される
- スクリーンセーバーの開始が遅延する
- 全体的な動作が不安定

Salis版ではこれらの問題を解決するために、最新のmacOSのレンダリングエンジンの変更に対応し、安定した動作を実現するようにコードを修正しています。

<p align="center">
    <img src="https://github.com/pedrommcarrasco/Brooklyn/blob/master/Design/showcase.gif?raw=true" alt="例"/>
</p>

## 機能 ✅

* インターネット接続不要
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

1. <a href="https://github.com/op5no29/Salis-Screensaver/releases/latest/download/Salis.saver.zip" target="_blank">こちらをクリックしてダウンロード</a>
2. **Salis.saver**を開く（ダブルクリック）
3. 「"Salis.saver"は開発元が未確認のため開けません」というメッセージが表示されたら、`OK`をクリック
4. `環境設定`を開く
5. `セキュリティとプライバシー`を選択
6. `一般`タブを選択
7. 下部にある`とにかく開く`をクリック

## アンインストール 🗑️

### 手動 :hand:

- システム環境設定でSalisを右クリックして`Salisを削除`を選択、または
- `/Library/Screen Savers`または`/Users/ユーザー名/Library/Screen Savers`にある`Salis.saver`を削除

## 互換性 🔧

OS X El Capitan (10.11)以降が必要です。

## トラブルシューティング 🤕

Salisスクリーンセーバーは、システムによって悪意のあるソフトウェアとしてブロックされる場合があります。macOS Big Sur以降では、`セキュリティとプライバシー`で`とにかく開く`をクリックしても問題が解決しないことがあります。

Appleによる検疫を回避するには、ターミナルで以下のコマンドを使用してください：

```shell
sudo xattr -d com.apple.quarantine ~/"Library/Screen Savers/Salis.saver"
```

## クレジット ❤️

本スクリーンセーバーは<a href="https://twitter.com/pedrommcarrasco" target="_blank">Pedro Carrasco</a>氏の<a href="https://github.com/pedrommcarrasco/Brooklyn" target="_blank">Brooklyn</a>をベースに改良したものです。オリジナル版の開発者をサポートしたい場合は、以下のリンクをご利用ください：

* <a href="https://github.com/users/pedrommcarrasco/sponsorship" target="_blank">GitHub Sponsors</a>
* <a href="https://www.buymeacoffee.com/pedrommcarrasco" target="_blank">Buy Me A Coffee</a>
* <a href="https://www.paypal.me/pedrommcarrasco" target="_blank">PayPal</a>

## 貢献  🙌 

このプロジェクトに<a href="https://github.com/op5no29/Salis-Screensaver/issues" target="_blank">アイデア</a>を提供したり、新機能や既存の問題を解決する<a href="https://github.com/op5no29/Salis-Screensaver/pulls" target="_blank">プルリクエスト</a>を開いたりして、自由に貢献してください。

## ライセンス ⛔

SalisはMITライセンスの下で利用可能です。詳細については<a href="https://github.com/op5no29/Salis-Screensaver/blob/main/LICENSE" target="_blank">LICENSE</a>ファイルを参照してください。ロゴ＆オリジナルアニメーションはApple社の所有物です。

## コンタクト 📨

質問や提案がある場合は、Xまたはディスコードでお気軽にご連絡ください。

* <a href="https://x.com/c_y_l_i" target="_blank">X / Twitter</a>
* <a href="https://discord.com/users/323041740963446785" target="_blank">Discord</a>

---

# English Version

![](https://github.com/pedrommcarrasco/Brooklyn/blob/master/Design/logo.jpg?raw=true)

# Salis Screensaver

> A modified version of "Brooklyn" screen saver by <a href="https://twitter.com/pedrommcarrasco" target="_blank">Pedro Carrasco</a> based on the animations presented during **<a href="https://www.youtube.com/watch?v=bfHEnw6Rm-4" target="_blank">Apple Special Event</a>** (October 30, 2018) from the Brooklyn Academy of Music, Howard Gilman Opera House.

## Why Salis Version was created

On the latest macOS versions (Sequoia, Sonoma, and Ventura), the original Brooklyn screensaver had compatibility issues, including:

- Apple logo appearing in the wrong position (upper right corner)
- Delayed startup of the screensaver
- General instability issues

Salis Version was created to address these issues by updating the code to be compatible with the rendering engine changes in recent macOS versions, ensuring stable performance.

<p align="center">
    <img src="https://github.com/pedrommcarrasco/Brooklyn/blob/master/Design/showcase.gif?raw=true" alt="Example"/>
</p>

## Features ✅

* Doesn't require internet connection
* Light & Dark theme
* Select which animations you want to see
* Loop each animation how many times you want
* Make the animations' order random

<p align="center">
    <img src="https://github.com/pedrommcarrasco/Brooklyn/blob/master/Design/preferenceMenu.png?raw=true" alt="Example"/>
</p>

## Installation 📦

Independently of how you install **Salis Screensaver**, please **close your System Preferences**.

Screen savers can be set programmatically with this Terminal command:

```shell
defaults -currentHost write com.apple.screensaver moduleDict -dict moduleName Salis path "$HOME/Library/Screen Savers/Salis.saver"
```

### Manual :hand:

1. <a href="https://github.com/op5no29/Salis-Screensaver/releases/latest/download/Salis.saver.zip" target="_blank">Click here to Download</a>
2. Open **Salis.saver** (double click)
3. `"Salis.saver" can't be opened because it is from an unidentified developer` will appear, press `OK`
4. Open `Preferences`
5. Select `Security & Privacy`
6. Select `General`
7. On the bottom side, select `Open Anyway`

## Uninstallation 🗑️

### Manual :hand:

- Right-click on Salis in System Preferences and select `Delete Salis`, or
- Delete `Salis.saver` either in `/Library/Screen Savers` or `/Users/USERNAME/Library/Screen Savers`. 

## Compatibility 🔧

Requires OS X El Capitan (10.11) or above.

## Troubleshooting 🤕

The Salis screen saver can be blocked by the system as malicious software. Sometimes on macOS Big Sur and newer, clicking `Open Anyway` in `Security & Privacy` is not fixing the issue.

To bypass this quarantine made by Apple, you can use this command in your terminal:

```shell
sudo xattr -d com.apple.quarantine ~/"Library/Screen Savers/Salis.saver"
```

## Credits ❤️

This screensaver is a modified version of <a href="https://github.com/pedrommcarrasco/Brooklyn" target="_blank">Brooklyn</a> by <a href="https://twitter.com/pedrommcarrasco" target="_blank">Pedro Carrasco</a>. If you'd like to support the original developer, please consider:

* <a href="https://github.com/users/pedrommcarrasco/sponsorship" target="_blank">GitHub Sponsors</a>
* <a href="https://www.buymeacoffee.com/pedrommcarrasco" target="_blank">Buy Me A Coffee</a>
* <a href="https://www.paypal.me/pedrommcarrasco" target="_blank">PayPal</a>

## Contributing  🙌 

Feel free to contribute to this project by providing <a href="https://github.com/op5no29/Salis-Screensaver/issues" target="_blank">ideas</a> or opening <a href="https://github.com/op5no29/Salis-Screensaver/pulls" target="_blank">pull requests</a> with new features or solving an existing issue.

## License ⛔

Salis is available under the MIT license. See the <a href="https://github.com/op5no29/Salis-Screensaver/blob/main/LICENSE" target="_blank">LICENSE</a> file for more information. Logo & original animations are Apple's property.

## Contact 📨

Looking for a way to reach us? Feel free to connect via X or Discord:

* <a href="https://x.com/c_y_l_i" target="_blank">X / Twitter</a>
* <a href="https://discord.com/users/323041740963446785" target="_blank">Discord</a>
