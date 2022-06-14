# learn-lambda-typescript

```shell
npm i -D typescript
tsc --init
npm i -D ts-node
npm i -D esbuild
npm i -D prettier
npm i -D eslint
npm init @eslint/config

npm i @aws-sdk/client-s3
npm i @aws-sdk/client-dynamodb @aws-sdk/lib-dynamodb
npm i @aws-sdk/client-lambda
npm i -D @types/aws-lambda

npm i base-64
npm i -D @types/base-64
```

https://docs.aws.amazon.com/lambda/latest/dg/images-create.html#images-create-from-base

```shell
docker build -t hello-ts .   
docker run -p 9000:8080 hello-ts
curl -XPOST "http://localhost:9000/2015-03-31/functions/function/invocations" -d '{}'
```


```shell
aws iam create-role \
  --role-name lambda-role \
  --assume-role-policy-document file://trust-policy.json

aws iam attach-role-policy \
  --role-name lambda-role \
  --policy-arn arn:aws:iam::aws:policy/service-role/AWSLambdaBasicExecutionRole
```

```shell
aws lambda create-function \
    --role arn:aws:iam::548250577290:role/lambda-role \
    --function-name learn-lambda-typescript \
    --package-type Image \
    --code "ImageUri=548250577290.dkr.ecr.ap-southeast-1.amazonaws.com/learn-lambda-typescript:latest"

aws lambda get-function --function-name learn-lambda-typescript
```

```shell
aws lambda invoke \
    --no-cli-pager \
    --function-name learn-lambda-typescript \
    response.json
cat response.json
```
