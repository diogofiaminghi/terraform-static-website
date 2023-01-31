resource "aws_s3_bucket" "website" {
  bucket = random_pet.bucket_name.id
}

resource "aws_s3_bucket_acl" "website" {
  bucket = aws_s3_bucket.website.id
  acl    = "public-read"
}

resource "aws_s3_bucket_versioning" "website" {
  bucket = aws_s3_bucket.website.id
  versioning_configuration {
    status = "Enabled"
  }
}

resource "aws_s3_bucket_website_configuration" "website" {
  bucket = aws_s3_bucket.website.id

  index_document {
    suffix = "/html5up-hyperspace/index.html"
  }

//  error_document {
//    key = "error.html"
//  }

/*  routing_rule {
    condition {
      key_prefix_equals = "docs/"
    }
    redirect {
      replace_key_prefix_with = "documents/"
    }
  }
*/
}

resource "aws_s3_bucket_policy" "website" {
  bucket = aws_s3_bucket.website.id
  policy = "data.aws_iam_policy_document.allow_public_access.json"
}

data "aws_iam_policy_document" "allow_public_access" {
  statement {
    
    principals {
      type        = "*"
      identifiers = ["*"]
    }

    actions = [
        "s3:GetObject"
    ]

    resources = [
        "${aws_s3_bucket.website.arn}/*",
    ]
  }
}

/*
resource "aws_s3_bucket_object" "index_page" {
  bucket = aws_s3_bucket.website.id
  key    = "index.html"
  content_type = "text/html; charset=UTF-8"
  source = "../html5up-hyperspace/index.html"

  # The filemd5() function is available in Terraform 0.11.12 and later
  # For Terraform 0.11.11 and earlier, use the md5() function and the file() function:
  # etag = "${md5(file("path/to/file"))}"
  etag = filemd5("../html5up-hyperspace/index.html")
}
*/

resource "aws_s3_bucket_object" "html5up-hyperspace" {
  for_each = fileset("../html5up-hyperspace/", "*")

  bucket = aws_s3_bucket.website.id
  key    = each.value
  source = "../html5up-hyperspace/${each.value}"
  # etag makes the file update when it changes; see https://stackoverflow.com/questions/56107258/terraform-upload-file-to-s3-on-every-apply
  etag   = filemd5("../html5up-hyperspace/${each.value}")
}