[Unit]
Description=NFC Ready
After=local-fs.target
ConditionPathExists=/home/pi/auto

[Service]
Type=simple
ExecStart=/home/pi/auto/nfc_ready.sh

[Install]
WantedBy=multi-user.target
