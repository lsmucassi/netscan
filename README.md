# Wifi Monitoring Tool

#### get your router/wifi IP Address
```
netstat -rn | grep default | head -n1 | awk '{print $2}'
```