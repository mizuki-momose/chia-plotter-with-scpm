# chia-plotter-with-scpm
これは [Swar-Chia-Plot-Manager](https://github.com/swar/Swar-Chia-Plot-Manager) をコンテナで動かすための簡単なプログラムです。

他の言語で読む: [English](README.md), [日本語](README.ja.md)

## 動かし方
```
docker run --name <container-name> -d ghcr.io/mizuki-momose/chia-plotter-with-scpm/plotter:0.1 -v /path/to/plots:/plots -v /path/to/config.yaml:/Swar-Chia-Plot-Manager/config.yaml
```

## 設定方法
`config.yaml.default` を [Swar-Chia-Plot-Manager](https://github.com/swar/Swar-Chia-Plot-Manager) からダウンロードして、設定を必要に応じて変更してください。

`config.yaml` の `chia_location` は下記のように設定する必要があります。
```
chia_location: /chia-blockchain/venv/bin/chia
```
