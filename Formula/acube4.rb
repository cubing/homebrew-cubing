class Acube4 < Formula
  desc "Josef Jelinek's ACube 4."
  homepage "https://github.com/josef-jelinek/acube/"
  url "https://github.com/josef-jelinek/acube/archive/521c946a53d13f609a8d83d1550cd4c6754c27b0.zip"
  version "v4.0a8"
  sha256 "c03f45d24d9ea218f10322140901eb79e9f262dca4ed53066121b3a28e27dd3c"

  # TODO: Either add a semantic Java dependency (turn this into a cask?) or
  # print a notification about it.
  # depends_on cask: "java"

  patch :DATA

  def install
    system "make"
    prefix.install "ACube4.jar"
    bin.install "acube4"
  end
end


__END__
diff --git a/Makefile b/Makefile
new file mode 100644
index 0000000..8ab0b78
--- /dev/null
+++ b/Makefile
@@ -0,0 +1,5 @@
+ACube4.jar:
+	rm -rf ./build
+	mkdir -p ./build
+	javac -d ./build `find ACube -name "*.java"`
+	cd build && jar cfe ../ACube4.jar acube.console.ACube .
diff --git a/acube4 b/acube4
new file mode 100755
index 0000000..ccac18d
--- /dev/null
+++ b/acube4
@@ -0,0 +1,3 @@
+#!/usr/bin/env bash
+
+java -jar HOMEBREW_PREFIX/Cellar/acube4/v4.0a8/ACube4.jar $@
