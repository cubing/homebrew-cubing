class Twsearch < Formula
  desc "Twisty Puzzle Search Program."
  homepage "https://github.com/cubing/twsearch"
  head 'https://github.com/cubing/twsearch.git', :branch => 'main'

  def install
    system "make build"
    bin.install "./build/bin/twsearch"
  end
end
