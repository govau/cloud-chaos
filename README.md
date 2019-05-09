# cloud-chaos
set of [chaostoolkit](https://github.com/chaostoolkit/chaostoolkit/) scripts to test the resiliency of cloud.gov.au


Set the `CF_API_URL`, `AWS_ACCESS_KEY_ID`, `AWS_SECRET_ACCESS_KEY`, `AWS_REGION` and optionally `AWS_ASSUME_ROLE_ARN` environment variables and then run the chaos experiement.


```
CF_API_URL="https://api.system.example.com" \
AWS_ACCESS_KEY_ID=aaa \
AWS_SECRET_ACCESS_KEY=bbb \
AWS_REGION=ap-southeast-2 \
AWS_ASSUME_ROLE_ARN="arn:aws:iam::<account-id>:role/<role-with-terminate-perms>" \
chaos run experiment.json
```