resource "aws_s3_bucket" "my_bucket" {
  bucket = "ruthu-buckets-123"  # MUST be globally unique
 
  tags = {
    Name        = "MyBucket"
    Environment = "Dev"
  }
}