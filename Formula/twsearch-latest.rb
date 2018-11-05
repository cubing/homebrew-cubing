class TwsearchLatest < Formula
  desc ""
  homepage "https://github.com/rokicki/twsearch"
  url "https://github.com/rokicki/twsearch/archive/master.zip"
  version "e3ffccd"
  # sha256 "3bfe5584ed48f13b30a635e45502dfecbe308b78cd7b8afed4624459b5341809"

  conflicts_with "twsearch", :because => "latest development version of twsearch."

  def install
    system "make"
    bin.install "twsearch"
  end

  test do
    system "false"
  end
end
