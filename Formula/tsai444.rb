class Tsai444 < Formula
  desc "4x4x4 solvers by Charles Tsai."
  homepage "https://www.jaapsch.net/puzzles/square1.htm"
  url "https://cubing.net/software/files/c_w_tsai.zip"
  version "2006"
  sha256 "24d2c0a8dc2bbd6810708a764437e1827c5c600efb9dfff18eb6cf4092d05d66"

  depends_on "wine"

  patch :DATA

  def install
    prefix.install "solver4x4x4/solver7v2.exe"
    bin.install "tsai444-7step-v2"
    prefix.install "solver4x4x4/solver8v2.exe"
    bin.install "tsai444-8step-v2"
  end

  test do
    system "false"
  end
end


__END__
new file mode 100755
--- /dev/null
+++ b/tsai444-7step-v2
@@ -0,0 +1,4 @@
+#!/usr/bin/env bash
+
+wine HOMEBREW_PREFIX/Cellar/tsai444/2006/solver7v2.exe
+

new file mode 100755
--- /dev/null
+++ b/tsai444-8step-v2
@@ -0,0 +1,4 @@
+#!/usr/bin/env bash
+
+wine HOMEBREW_PREFIX/Cellar/tsai444/2006/solver8v2.exe
+
