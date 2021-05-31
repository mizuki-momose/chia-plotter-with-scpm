# chia-plotter-with-scpm
This is a simple program to run [Swar-Chia-Plot-Manager](https://github.com/swar/Swar-Chia-Plot-Manager) on a container.

## Startup
```
docker run --name <container-name> -d ghcr.io/mizuki-momose/chia-plotter-with-scpm/plotter:0.1 -v /path/to/plots:/plots -v /path/to/config.yaml:/Swar-Chia-Plot-Manager/config.yaml
```

## Configuration
Download `config.yaml.default` from [Swar-Chia-Plot-Manager](https://github.com/swar/Swar-Chia-Plot-Manager) and change the settings.

Please change the value of `chia_location` in `config.yaml` like this.
```
chia_location: /chia-blockchain/venv/bin/chia
```
