class Ksolvex < Formula
  desc "KSolve"
  homepage "https://github.com/cubing/ksolve"
  url "https://github.com/cubing/ksolve/archive/osx-parallel.zip"
  version "1.3a"
  sha256 "1ee0740d1074a5290d2cafa8b00ec93f0e4d7b211ba21bbf511e2fd5950c78ad"

  def install
    system "g++", "source/main.cpp", "-o", "source/ksolve+"
    bin.install "source/ksolve+"
  end
end
