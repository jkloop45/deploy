docker build -t ivydom/gospel_dash .
docker run -itd -p 8089:8088 --name="gospel_dash" ivydom/gospel_dash
