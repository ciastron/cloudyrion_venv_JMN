NOTE: I've run all the commands from a (Kali) Linux terminal (where git is already installed by default). You can do it also from your MAC terminal but it is "trickier" because you need to install git on MacOS.

You can follow this instruction to write your daily report and get started with git:
- To download this repo you need to run the following command from your terminal: `git clone git@github.com:ciastron/cloudyrion_venv_JMN.git` . Note: you need to run this command only once AND you need to upload on your GitHub account a public RSA key.
- To modify something and upload your contents follow these commands:
    1. `git pull` to update your local repo with the new contents of the shared repo.
    2. `git add <modified_filename>`
    3. `git commit -m "Insert your comments here"`
    4. `git push` to push your updates on the shared repo.