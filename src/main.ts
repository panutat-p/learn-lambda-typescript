import { ListBucketsCommand, S3Client } from '@aws-sdk/client-s3';

const client = new S3Client({ region: 'ap-southeast-1' });

const command = new ListBucketsCommand({});

try {
  const response = await client.send(command);
  console.log(`Total: ${response.Buckets?.length}`)
  console.log(response.Buckets);
} catch (e) {
  console.log(e);
}
