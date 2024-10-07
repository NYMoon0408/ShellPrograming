#!/bin/bash

# Variable definition
LOGFILE=/var/log/messages   # 모니터링 대상 로그 파일
TIMEINTERVAL=10             # 비교 시간
TMP1=/tmp/tmp1              # 첫 번째 임시 파일
TMP2=/tmp/tmp2              # 두 번째 임시 파일
TMP3=/tmp/tmp3              # 새로 추가된 안 좋은 메시지 내용(메일 컨텐츠)

# 초기 임시 파일 생성
egrep -i 'warn|fail|error|crit|alert|emerg' $LOGFILE > $TMP1

# 초기 임시 파일과 새로운 임시 파일을 비교
while true
do
    # 비교 타임 인터벌(30 seconds) <- 1분이라면 crontab으로 만드는게 바람직
    sleep "$TIMEINTERVAL"

    # 새로운 임시 파일 생성
    egrep -i 'warn|fail|error|crit|alert|emerg' $LOGFILE > $TMP2

    # 초기 임시 파일과 새로운 임시 파일 비교
    # * 파일의 내용이 같으면 30초 쉬었다가 다시 비교
    # * 파일의 내용이 다르면 관리자에게 메일 전송
    diff $TMP1 $TMP2 > $TMP3 && continue

    # 관리자에게 메일 전송
    mailx -s '[ WARN ] 로그 파일 점검 요망' root < $TMP3

    # 로그 파일 다시 초기화
    egrep -i 'warn|fail|error|crit|alert|emerg' $LOGFILE > $TMP1

done
