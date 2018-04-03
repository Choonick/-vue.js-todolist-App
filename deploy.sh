npm run build
aws s3 cp ./dist s3://vuejs-todolist --recursive --acl public-read
