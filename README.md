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

```shell
aws iam create-role \
  --role-name lambda-role \
  --assume-role-policy-document file://trust-policy.json

aws iam attach-role-policy \
  --role-name lambda-role \
  --policy-arn arn:aws:iam::aws:policy/service-role/AWSLambdaBasicExecutionRole
```
