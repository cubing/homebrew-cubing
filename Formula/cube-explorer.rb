class CubeExplorer < Formula
  desc "Cube Explorer by Herbert Kociemba."
  homepage "http://kociemba.org/cube.htm"
  url "http://kociemba.org/downloads/cube513.zip"
  version "5.13"
  sha256 "a75d36378951c4fdbf868e739962fbb6748c19cbcb2c0709c3cf9d4e66243d8a"

  depends_on "wine"

  patch :DATA

  def install
    prefix.install "AnimCube.jar"
    prefix.install "cube.ini"
    prefix.install "cube.chm"
    prefix.install "cube513htm.exe"
    bin.install "cube-explorer-htm"
    prefix.install "cube513qtm.exe"
    bin.install "cube-explorer-qtm"
  end

  test do
    system "false"
  end
end


__END__
new file mode 100755
--- /dev/null
+++ b/cube-explorer-htm
@@ -0,0 +1,4 @@
+#!/usr/bin/env bash
+
+wine HOMEBREW_PREFIX/Cellar/cube-explorer/5.13/cube513htm.exe
+

new file mode 100755
--- /dev/null
+++ b/cube-explorer-qtm
@@ -0,0 +1,4 @@
+#!/usr/bin/env bash
+
+wine HOMEBREW_PREFIX/Cellar/cube-explorer/5.13/cube513qtm.exe
+
