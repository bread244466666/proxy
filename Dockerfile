FROM teddysun/xray:latest

# 將同目錄下的 config.json 複製到容器內的 Xray 設定路徑
COPY config.json /etc/xray/config.json

# 告知容器服務將使用 10000 連接埠
EXPOSE 10000

# 啟動 Xray 服務並載入設定檔
CMD ["xray", "run", "-c", "/etc/xray/config.json"]
