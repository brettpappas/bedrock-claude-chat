#!/bin/bash

cd backend
python3 -m venv .venv
source .venv/bin/activate
pip install -r ./requirements.txt

export TABLE_NAME=BedrockChatStack-DatabaseConversationTable03F3FD7A-1IGPLIOVUNNIX
export ACCOUNT=732550788067
export REGION=us-east-1
export BEDROCK_REGION=us-east-1
export DOCUMENT_BUCKET=bedrockchatstack-documentbucketae41e5a9-ekn274n60ig8
export LARGE_MESSAGE_BUCKET=bedrockchatstack-largemessagebucketad0c9b6b-vzlkvfkbqvva

uvicorn app.main:app --reload --host 0.0.0.0 --port 8000