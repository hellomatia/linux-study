#!/bin/bash

echo "# fork와 exec: 프로세스의 분신과 변신 데모"
echo
 
# 현재 프로세스 정보 출력 함수
show_process_info() {
    echo "프로세스 정보:"
    echo "  PID: $$"
    echo "  부모 PID: $PPID"
    echo "  실행 명령어: $0"
    echo
}

# fork 시뮬레이션 함수
simulate_fork() {
    echo "fork 수행 (프로세스 분신)..."
    echo "자식 프로세스 생성 중..."
    bash -c 'echo "  자식 프로세스 (PID: $$, 부모 PID: $PPID) 생성됨"'
    echo
}

# exec 시뮬레이션 함수
simulate_exec() {
    echo "exec 수행 (프로세스 변신)..."
    echo "현재 프로세스가 새로운 프로그램으로 대체됩니다."
    echo "새 프로그램: /bin/ls"
    echo "인자: -l /tmp"
    echo
    echo "exec 실행 결과:"
    exec ls -l /tmp
}

# 메인 스크립트 시작
echo "현재 스크립트 정보:"
show_process_info

echo "fork 시뮬레이션:"
simulate_fork

echo "실제 fork와 exec 데모:"
echo "1. 이 스크립트가 새로운 프로세스를 생성합니다 (fork)."
echo "2. 새 프로세스는 'ls' 명령을 실행합니다 (exec)."
echo
echo "실행 결과:"
bash -c 'echo "  자식 프로세스 (PID: $$) 생성됨"; ls -l'
echo

echo "exec 시뮬레이션:"
echo "주의: 이 부분이 실행되면 현재 스크립트가 종료됩니다."
echo "실행하려면 아무 키나 누르세요. 종료하려면 Ctrl+C를 누르세요."
read -n 1 -s
simulate_exec

# 이 부분은 exec가 성공하면 실행되지 않습니다.
echo "이 메시지는 표시되지 않습니다 (exec 성공 시)."
