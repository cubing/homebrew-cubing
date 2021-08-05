class Twsearch < Formula
  desc "Twisty Puzzle Search Program."
  homepage "https://github.com/cubing/twsearch"
  url "https://github.com/cubing/twsearch/archive/131f661c9b22b00ccae579caadbccfa035d16a0a.zip"
  version "131f661"
  sha256 "4a159eb4246be7171861121bbdac45aed1355164b14c4bc49881d2fce2e0e109"

  head do
    url "https://github.com/cubing/twsearch/archive/main.zip"
  end

  def install
    system "make"
    bin.install "twsearch"
  end

  test do
    system "false"
  end
end
