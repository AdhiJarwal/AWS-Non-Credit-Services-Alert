# AWS Non-Credit Services Alert

🚨 **Monitor AWS services NOT covered by Community Builders credits and avoid unexpected charges!**

Get email alerts when non-credit services exceed $0.0113 daily (₹1 equivalent) + credit expiry reminder.

## 🚀 Quick Setup

1. **Update email address** in `deploy.sh`
2. **Deploy the stack:**
   ```bash
   chmod +x deploy.sh
   ./deploy.sh
   ```
3. **Confirm SNS subscriptions** in your email

## 📊 What This Monitors

**11 Non-Credit Services** (alerts when > $0.0113 daily):

- 🛒 **AWS Marketplace** - Paid software/AMIs
- 🎧 **Support Plans** - Developer/Business/Enterprise support
- 🌐 **Route53 Domain Registration** - Domain purchases/renewals
- 💰 **Reserved Instances** - EC2 reservation payments
- 📈 **AWS Savings Plans** - Compute savings commitments
- 📡 **Data Transfer** - CloudFront transfer beyond free tier
- 💻 **Amazon WorkSpaces** - Virtual desktop services
- ☎️ **Amazon Connect** - Contact center service
- 📹 **Amazon Chime** - Video conferencing
- 🔗 **AWS Direct Connect** - Dedicated network connection
- 💸 **Tax Charges** - Applicable taxes

**📅 Credit Expiry Reminder:**
- Email alert on **April 29, 2026** (1 day before $500 credits expire)
- Customizable date in CloudFormation template

## 📁 Repository Structure

```
aws-non-credit-services-alert/
├── nonCreditServicesAlert.yaml  # CloudFormation template
├── deploy.sh                    # Deployment script
├── README.md                    # This documentation
└── .gitignore                   # Git ignore file
```

## ⚙️ Configuration

**Before deployment, update:**
- Email address in `deploy.sh` (line 3)
- Credit expiry date in template (if different from April 30, 2026)

## ✅ What's Covered vs Not Covered

| ✅ **Covered by Credits (No Alerts)** | ❌ **NOT Covered (Will Alert)** |
|---------------------------------------|----------------------------------|
| EC2 Instances                         | AWS Marketplace                  |
| S3 Storage                            | Support Plans                    |
| Lambda Functions                      | Domain Registration              |
| RDS Databases                         | Reserved Instances               |
| CloudWatch (basic)                    | Data Transfer (excess)           |
| VPC, Security Groups                  | WorkSpaces, Connect, Chime       |

## 🔧 Requirements

- AWS CLI configured with appropriate permissions
- CloudFormation, SNS, CloudWatch, EventBridge permissions
- Valid email address for notifications

## 📝 Important Notes

- **Threshold:** $0.0113 = ₹1 (adjust in template if needed)
- **Frequency:** Daily monitoring (24-hour periods)
- **Region:** Deploy in `us-east-1` for billing metrics
- **Confirmation:** Must confirm both SNS subscriptions via email

## 🤝 Contributing

Perfect for AWS Community Builders! Feel free to:
- Add more non-credit services
- Improve alert thresholds
- Enhance documentation
- Submit issues/PRs

---

**💡 Pro Tip:** This setup costs virtually nothing and uses credit-eligible services to monitor non-credit services!