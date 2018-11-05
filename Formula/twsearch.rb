class Twsearch < Formula
  desc "Twisty Puzzle Search Program."
  homepage "https://github.com/rokicki/twsearch"
  url "https://github.com/rokicki/twsearch/archive/e3ffccd085e13937595cb32de54308a55b94573e.zip"
  version "e3ffccd"
  sha256 "3bfe5584ed48f13b30a635e45502dfecbe308b78cd7b8afed4624459b5341809"

  devel do
    url "https://github.com/rokicki/twsearch/archive/master.zip"
    version "devel"
  end

  def install
    system "make"
    bin.install "twsearch"
  end

  test do
    system "false"
  end
end
