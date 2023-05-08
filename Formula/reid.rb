# Documentation: https://docs.brew.sh/Formula-Cookbook
#                https://rubydoc.brew.sh/Formula
# PLEASE REMOVE ALL GENERATED COMMENTS BEFORE SUBMITTING YOUR PULL REQUEST!
class Reid < Formula
  desc "Michael Reid's optimal solver."
  homepage "http://www.cflmath.com/~reid/Rubik/optimal_solver.html"
  url "http://www.cflmath.com/~reid/Rubik/optimal.tar.gz"
  version "2004-06-02"
  sha256 "eb2d089e94cdfc83c2034a2cb7ba0a2f04c5b230bf96071a888bfc00f2c97867"

  def install
    system "gcc", "-o", "reid-optimal", "-Wall", "-O2", "optimal.c"
    system "gcc", "-o", "reid-twist", "-Wall", "twist.c"
    bin.install "reid-optimal"
    bin.install "reid-twist"
  end
end
