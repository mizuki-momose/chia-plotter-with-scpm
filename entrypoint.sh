cd /chia-blockchain

. ./activate
chia init > /dev/null 2>&1
deactivate

cd /Swar-Chia-Plot-Manager

if [ ! -e "config.yaml" ]; then
    echo "Config file not exists."
    exit
fi

. ./venv/bin/activate
python manager.py start

while true; do sleep 30; done;