# AUDIT

## Cloudmapper

We run *cloudmapper* on the AWS cluster.

### Instructions to run successfully cloudmapper.
- Download the git folder from the GitHub repository of Cloudmapper.
- Follow the instructions to install Cloudmapper (for Kali, you need to install also `python3.9-venv`).
- Configure your AWS account with the command `aws configure`. Note: you need to insert the same region where the cluster has been deployed.
- Collect information about the AWS account with the collect option: `python cloudmapper.py collect --account my_account`. 
- Create a json file (e.g., config.json) and insert your account and AWS ID access key (ignore the cidr fields). You can copy the config.json.demo file and take inspiration from it.
- Prepare your results: `python cloudmapper.py prepare --account my_account`
- Create the report: `python cloudmapper.py report --account my_account `
- See the report (localhost:8000): `python cloudmapper.py webserver --public`
