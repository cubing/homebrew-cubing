# Documentation: https://docs.brew.sh/Formula-Cookbook
#                https://www.rubydoc.info/github/Homebrew/brew/master/Formula
# PLEASE REMOVE ALL GENERATED COMMENTS BEFORE SUBMITTING YOUR PULL REQUEST!
class Twsearch < Formula
  desc ""
  homepage "https://github.com/rokicki/twsearch"
  url "https://github.com/rokicki/twsearch/archive/e3ffccd085e13937595cb32de54308a55b94573e.zip"
  version "e3ffccd"
  sha256 "3bfe5584ed48f13b30a635e45502dfecbe308b78cd7b8afed4624459b5341809"

  def install
    system "make"
    bin.install "twsearch"
  end

  test do
    # `test do` will create, run in and delete a temporary directory.
    #
    # This test will fail and we won't accept that! For Homebrew/homebrew-core
    # this will need to be a test that verifies the functionality of the
    # software. Run the test with `brew test twsearch`. Options passed
    # to `brew install` such as `--HEAD` also need to be provided to `brew test`.
    #
    # The installed folder is not in the path, so use the entire path to any
    # executables being tested: `system "#{bin}/program", "do", "something"`.
    system "false"
  end
end
