class Acube444 < Formula
  desc "Josef Jelinek's ACube 4x4x4."
  homepage "http://software.rubikscube.info/"
  url "https://cubing.net/software/files/ACube%204x4x4.zip"
  version "2004"
  sha256 "ee7f1bd9f2325097041bdd6b75f56cf9a5933d465ba2a964d3ce3ade8d1136b9"

  # TODO: Either add a semantic Java dependency (turn this into a cask?) or
  # print a notification about it.
  # depends_on cask: "java"

  patch :DATA

  def install
    prefix.install "AQb4.jar"
    bin.install "acube444"
  end
end


__END__
diff --git a/acube444 b/acube444
new file mode 100755
index 0000000..65d74f0
--- /dev/null
+++ b/acube444
@@ -0,0 +1,3 @@
+#!/usr/bin/env bash
+
+java -cp HOMEBREW_PREFIX/Cellar/acube444/2004/AQb4.jar AQb4 $@
+
