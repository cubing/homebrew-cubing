class CubeExplorer < Formula
  desc "Cube Explorer by Herbert Kociemba."
  homepage "http://kociemba.org/cube.htm"
  url "http://kociemba.org/downloads/cube514.zip"
  version "5.14"
  sha256 "ec622d6c67967beaf7cf4c72a9bba88e04161be347750fb839897e28a7d05019"

  # 😢 https://github.com/orgs/Homebrew/discussions/3163#discussioncomment-2526187
  # depends_on "homebrew/cask/wine-stable"

  patch :DATA

  def install
    prefix.install "AnimCube.jar"
    prefix.install "cube.ini"
    prefix.install "cube.chm"
    prefix.install "cube514htm.exe"
    bin.install "cube-explorer-htm"
    prefix.install "cube514qtm.exe"
    bin.install "cube-explorer-qtm"
  end

  def caveats
    <<~EOS

      The `wine` Homebrew dependency cannot be installed automatically (because it is a cask).
      Please install `wine` separately using:
      
          brew install homebrew/cask/wine-stable
          cube-explorer-htm # This works now.

    EOS
  end
end


__END__
new file mode 100755
--- /dev/null
+++ b/cube-explorer-htm
@@ -0,0 +1,4 @@
+#!/usr/bin/env bash
+
+wine HOMEBREW_PREFIX/Cellar/cube-explorer/5.14/cube514htm.exe
+

new file mode 100755
--- /dev/null
+++ b/cube-explorer-qtm
@@ -0,0 +1,4 @@
+#!/usr/bin/env bash
+
+wine HOMEBREW_PREFIX/Cellar/cube-explorer/5.14/cube514qtm.exe
+
