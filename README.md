# Flask Docker example

```
# 디렉토리 구조
.
|____requirements.txt
|____Dockerfile
|____main.py
```

### 커스텀 도커 이미지를 만드는 예제  
도커의 베이스 이미지는 `python:3.9-slim-buster` 입니다.  
도커 이미지 내에서 필요한 라이브러리(Flask, gunicorn)을 설치하고 실행시킵니다.  

### HOW TO
```
# 도커파일을 빌드하여 이미지로 생성
# flask_ex:0.1 대신 원하는 이미지 이름과 태그로 기입
docker build . -t flask_ex:0.1

# 도커 이미지를 생성후 도커 컨테이너 실행
# -p 3000:3000 은 로컬 머신 포트와 컨테이너 내부의 포트를 매핑함을 의미
# -p local_port:container_port
# 컨테이너 포트를 3000 으로 한 이유는 도커파일에서 gunicorn 을 3000 으로 띄웠기 때문.
# flask_ex:0.1 대신 생성한 이미지:태그로 기입
docker run -p 3000:3000 flask_ex:0.1
```