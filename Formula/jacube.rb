class Jacube < Formula
  desc "Josef Jelinek's JACube (ACube 3.1)."
  homepage "http://software.rubikscube.info/"
  url "http://software.rubikscube.info/JACube/JACube31c.zip"
  version "3.1c"
  sha256 "93a53a19d6eb911199b572baf314aae9e563090c2cddd519fa49d61a31ec13ac"

  # TODO: Either add a semantic Java dependency (turn this into a cask?) or
  # print a notification about it.
  # depends_on cask: "java"

  patch :DATA

  def install
    prefix.install "ACube3.jar"
    bin.install "jacube"
  end
end


__END__
diff --git a/jacube b/jacube
new file mode 100755
index 0000000..65d74f0
--- /dev/null
+++ b/jacube
@@ -0,0 +1,3 @@
+#!/usr/bin/env bash
+
+java -cp HOMEBREW_PREFIX/Cellar/jacube/3.1c/Acube3.jar ACube $@
+
