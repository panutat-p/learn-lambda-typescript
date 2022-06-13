aws ecr get-login-password --region ap-southeast-1 | docker login --username AWS --password-stdin 548250577290.dkr.ecr.ap-southeast-1.amazonaws.com
docker build -t learn-lambda-typescript .
docker tag learn-lambda-typescript:latest 548250577290.dkr.ecr.ap-southeast-1.amazonaws.com/learn-lambda-typescript:latest
docker push 548250577290.dkr.ecr.ap-southeast-1.amazonaws.com/learn-lambda-typescript:latest
