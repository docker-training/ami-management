while read account; do
   while read ami; do
    docker container run --rm -v $(pwd)/creds:/root/.aws amazon/aws-cli ec2 modify-image-attribute --image-id $ami --launch-permission "Add=[{UserId=$account}]"
  done < amis
done < aws-accounts
