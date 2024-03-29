class Algexplorer < Formula
  desc "A command-line utility that sorts a list of algorithms by how usable they are for speedsolving."
  homepage "https://github.com/johnli0135/AlgExplorer"
  url "https://github.com/johnli0135/AlgExplorer/archive/09b463eab27a4875cb7d66027704ae2edca93025.zip"
  version "2"
  sha256 "62370e27e0881a9efa2acb8a4e4ef29f1c35f2c664b66cb60e26164f888b2255"

  patch :DATA

  def install
    prefix.install Dir["*.py"]
    prefix.install "trained.txt"
    bin.install "algexplorer"
  end
end


__END__
diff --git a/algexplorer b/algexplorer
new file mode 100755
index 0000000..89ba27c
--- /dev/null
+++ b/algexplorer
@@ -0,0 +1,3 @@
+#!/usr/bin/env bash
+
+python HOMEBREW_PREFIX/Cellar/algexplorer/2/algexplorer.py "$@"
