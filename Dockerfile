# base 가 되는 도커 이미지
FROM python:3.9-slim-buster

# app 디렉토리 생성
RUN mkdir -p /app

#Docker 이미지 내부에서 명령이 실행될 디렉터리 설정
WORKDIR /app

# 현재 디렉터리에 있는 파일들을 이미지 내부 /app 디렉터리에 추가
ADD . /app

# requirements 에 정의된 라이브러리 설치
RUN pip install -r requirements.txt

# 컨테이너가 시작되었을 때 실행할 명령어
CMD exec gunicorn --bind :3000 --workers 1 --threads 2 --timeout 30 main:app