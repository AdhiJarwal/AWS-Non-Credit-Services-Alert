#!/bin/bash

EMAIL="your-email@example.com"

echo "🚀 Deploying Non-Credit Services Alert..."

aws cloudformation deploy \
  --template-file nonCreditServicesAlert.yaml \
  --stack-name non-credit-services-alert \
  --parameter-overrides emailAddress=$EMAIL \
  --region us-east-1

echo "Deployed!"
echo "Check email and confirm SNS subscriptions"
echo "⚠️  Monitoring 10 non-credit services > $0.0113 daily:"
echo "   • Marketplace, Support, Domain Registration"
echo "   • Reserved Instances, Savings Plans, Data Transfer"
echo "   • WorkSpaces, Connect, Chime, DirectConnect, Tax"
echo "📅 Credit expiry: April 29, 2026"