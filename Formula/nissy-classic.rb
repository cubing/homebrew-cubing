class NissyClassic < Formula
  desc "Nissy Classic"
  homepage "https://git.tronto.net/nissy-classic/"
  url "https://git.tronto.net/nissy-classic.zip"
  version "2.0.4"
  sha256 "cc824b3a3df440d27d61e4ab8c1a588c43f90e1a7416c704c987ea16faf11fca"

  def install
    system "make"
    bin.install "nissy" => "nissy-classic"
  end
end
