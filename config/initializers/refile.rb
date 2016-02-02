require "refile/s3"

aws = {
  access_key_id: ENV['HR_AWS_KEY'],
  secret_access_key: ENV['HR_AWS_SECRET'],
  region: ENV['HR_AWS_REGION'],
  bucket: ENV['HR_AWS_BUCKET'],
}
Refile.cache = Refile::S3.new(prefix: "cache", **aws)
Refile.store = Refile::S3.new(prefix: "store", **aws)


