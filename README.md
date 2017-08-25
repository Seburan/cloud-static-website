# Static Website on the Cloud
Scripts and templates to host a static website on the Cloud.

Currently for :
* Amazon Web Services

In progress for :
* Google Cloud Platform
* Microsoft Azure

# Solution Architecture

## Amazon Web Services (AWS)
* S3 Buckets

### Issues
1. AWS::S3::BucketPolicy Principal & Group

My initial idea was to create 2 BucketPolicy resources : 1 for the Public Access, and 1 for the Site Admin to update the content. The first one was working fine as per the book,  but for the second one,
It took me a dozen of tries and retries before I finally pinpoint the problem. Actually you **cannot** specify a **group** as the principal of a BucketPolicy. This is documented in the documentation *reference_policies_elements* (see link below) but this is quite counter intuitive.

So finally I had to create a standard IAM policy attached to the group to grant s3 full access to the S3SiteBucket to SiteAdmin group.
### References :

* [AWS Website Hosting](http://docs.aws.amazon.com/AmazonS3/latest/dev/WebsiteHosting.html)
* [Setting up a Static Website Using a Custom Domain](http://docs.aws.amazon.com/AmazonS3/latest/dev/website-hosting-custom-domain-walkthrough.html)
* [QuickStart: Create S3 Bucket for Site Hosting](http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/quickref-s3.html)
* [aws-properties-s3-bucket](http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-s3-bucket.html)
* [reference_policies_elements](http://docs.aws.amazon.com/IAM/latest/UserGuide/reference_policies_elements.html#Principal)
* [aws-resource-iam-policy](http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-iam-policy.html)

## Google Cloud Platform

WIP

## Microsoft Azure

WIP