#!/bin/bash

#Set HTTP and HTTPS Web Proxy settings with bypass domains
#Used to block access to the internet on managed machines while still allowing access to some resources
networksetup -setwebproxy "Wi-Fi" 127.0.0.1 3128
networksetup -setsecurewebproxy "Wi-Fi" 127.0.0.1 3129
networksetup -setproxybypassdomains "Wi-Fi" "*.domain.com" "*.domain.com"
networksetup -setwebproxystate "Wi-Fi" on

echo "Proxy Set"
