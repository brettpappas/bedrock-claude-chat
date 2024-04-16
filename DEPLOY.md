# Deploy using CDK

## Setup

```sh
cd bedrock-claude-chat/cdk
npm ci
```

## Make sure we have AWS-CDK cli tool installed

```sh
npm i -g aws-cdk
```

## Bootstrap CDK

```sh
# This uses our scrippsnet-dev account id and credentials from the claude-chat profile.
cdk bootstrap aws://732550788067/us-east-1 --profile claude-chat
```

> If necessary, edit the following entries in cdk.json if necessary.
> bedrockRegion: Region where Bedrock is available. NOTE: Bedrock does NOT support all regions for now.
> allowedIpV4AddressRanges, allowedIpV6AddressRanges: Allowed IP Address range.

## Deploy the project

```sh
cdk deploy --require-approval never --all --profile claude-chat
```
