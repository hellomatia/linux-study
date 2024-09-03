## 날짜
**명령어**
```shell
date
```
**출력**
```shell
2024년 09월  3일 화 오후 11:04:56
```

## 현재 디렉토리 내의 파일 내역
**명령어**
```shell
ls
```
**출력**
```shell
 AppData/
 Apple/
'Application Data'@
 Contacts/
 Cookies@
...
```

## 화면을 깨끗이
**명령어**
```shell
clear
```
**출력**
```shell

```

## 패스워드 변경
**명령어**
```shell
passwd
```
**출력**
```shell
Changing password for user ec2-user.
Current password:
```

## 명령어 설명 보기
**명령어**
```shell
man date
```
**출력**
```shell
DATE(1)                                                                     User Commands                                                                    DATE(1)

NAME
       date - print or set the system date and time

SYNOPSIS
       date [OPTION]... [+FORMAT]
       date [-u|--utc|--universal] [MMDDhhmm[[CC]YY][.ss]]

DESCRIPTION
       Display the current time in the given FORMAT, or set the system date.

       Mandatory arguments to long options are mandatory for short options too.

```

## 현재 작업하는 디렉터리
**명령어**
```shell
pwd
```
**출력**
```shell
/home/ec2-user
```

## 새 디렉토리 생성
**명령어**
```shell
mkdir hello
```
**출력**
```shell
$ ls
hello
```

## 이동
**명령어**
```shell
cd hello
```
**출력**
```shell
$ pwd
/home/ec2-user/hello
```

## List size 확인
**명령어**
```shell
ls -s
```
**출력**
```shell
total 4
4 hello.txt
```

## 숨겨진 파일 보기
**명령어**
```shell
ls -a
```
**출력**
```shell
.  ..  hello.txt
```

## 파일 자세히 보기
**명령어**
```shell
ls -l
```
**출력**
```shell
total 4
-rw-r--r--. 1 root root 13 Sep  3 14:20 hello.txt
```

## 경로명
- ~ : 홈디렉토리
- . : 현재 디렉토리
- .. : 부모 디렉토리

