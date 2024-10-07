#!/bin/bash
###################
# 1. telnet service
# 2. vsftpd service
# 3. ?
###################

source /root/shell/functions.sh

#######################################
# 1. telnet service
# 1) 패키지 설치 - telnet-server, telnet
# 2) 서비스 기동 - telnet.socket
# 3) 방화벽 등록 - telnet
#######################################
# 1) 패키지 설치 - telnet-server, telnet
PkgInstall telnet-server, telnet

# 2) 서비스 기동 - telnet.socket
# 3) 방화벽 등록 - telnet


# 2. vsftpd.service
# 1) 패키지 설치 - vsftpd, ftp
# 2) 서비스 설정 - /etc/vsftpd/{ftpusers,user_list}에서 root 유저 제거
# 3) 서비스 기동 - vsftpd.service
# 4) 방화벽 등록 - ftp

