class RobTwophase < Formula
  desc "Towo-phase solver designed for robots."
  homepage "https://github.com/efrantar/rob-twophase"
  url "https://github.com/efrantar/rob-twophase/archive/36d33aa71492050afb187509041b220e5fb7d659.zip"
  version "2019-10-12"
  sha256 "d891310018438c33ee0596eeb09a8f97251dcb895ed588d309be2b093927ee15"

  def install
    system "make"
    mv "twophase", "rob-twophase"
    bin.install "rob-twophase"
  end

  test do
    system "false"
  end
end
