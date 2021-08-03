## Bulk AWS AMI permission updater

Some people, particularly internal audiences and partners, might need access to some Training AMIs in order to follow on-demand training (specifically, the on demand training not including a Strigo environment). Follow these steps to bulk assign the correct permissions between a list of AMIs and a list of Amazon user accounts.

1. Place the AMI IDs in the file `amis`, one per line. The default content of this file are the relevant AMIs at the time of writing, but you can change these to anything you like.

2. Place the AWS account IDs of the people you want to grant access to in the file `aws-accounts`, one per line. This contains a couple of dummy account numbers by default; delete them when you add real data in.

3. In the file `creds/credentials`, replace the last three lines with a fresh AWS access key, secret key, and session token for AWS account 656880214520. You can get these credentials from https://mirantis.awsapps.com/start#/ by choosing 'Command Line or Programmatic Access'.

4. From a bash shell on a machine with Docker installed, do: `bash perm-ami.sh`. Wait a minute; perms will be assigned correctly.
