# Documentation: https://docs.brew.sh/Formula-Cookbook
#                https://rubydoc.brew.sh/Formula
# PLEASE REMOVE ALL GENERATED COMMENTS BEFORE SUBMITTING YOUR PULL REQUEST!
class AwsEsProxyByEc2 < Formula
  desc "Aws ES Proxy by EC2 MetaData"
  homepage "https://www.91the.top"
  url "https://github.com/jewdore/aws-es-proxy-by-ec2/releases/download/0.9/aws-es-proxy-0.9-mac-amd64"
  sha256 "cb68ba0c01c23a52ab09e93a864be31563596bbc5b647c9fb4a23d5ac9568656"

  # depends_on "cmake" => :build

  def install
    # ENV.deparallelize  # if your formula fails when building in parallel
    # Remove unrecognized options if warned by configure
    #system "./configure", "--disable-debug",
    #                      "--disable-dependency-tracking",
    #                      "--disable-silent-rules",
    #                      "--prefix=#{prefix}"
    # system "cmake", ".", *std_cmake_args
    system 'pwd'
    system 'mv aws-es-proxy-0.9-mac-amd64 aws-es-proxy-by-ec2'
    bin.install "aws-es-proxy-by-ec2"
  end

  test do
    # `test do` will create, run in and delete a temporary directory.
    #
    # This test will fail and we won't accept that! For Homebrew/homebrew-core
    # this will need to be a test that verifies the functionality of the
    # software. Run the test with `brew test aws-es-proxy-by-ec2`. Options passed
    # to `brew install` such as `--HEAD` also need to be provided to `brew test`.
    #
    # The installed folder is not in the path, so use the entire path to any
    # executables being tested: `system "#{bin}/program", "do", "something"`.
    system "#{bin}/aws-es-proxy-0.9-mac-amd64", "-h"
  end
end
