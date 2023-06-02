class Llminxsolver < Formula
  desc "A Megaminx LL solver by Lars Vandenbergh."
  homepage "https://github.com/jazzthief81/llminxsolver"
  url "https://github.com/jazzthief81/llminxsolver/releases/download/v1.0/llminxsolver-1.0.jar"
  version "1.0"
  sha256 ""

  # TODO: Either add a semantic Java dependency (turn this into a cask?) or
  # print a notification about it.
  # depends_on cask: "java"
  patch :DATA

  def install
    prefix.install "llminxsolver-1.0.jar"
    bin.install "llminxsolver-gui"
  end
end


__END__
diff --git a/llminxsolver-gui b/llminxsolver-gui
new file mode 100755
index 0000000..1111111
--- /dev/null
+++ b/llminxsolver-gui
@@ -0,0 +1,5 @@
+#!/usr/bin/env bash
+
+java \
+ -cp HOMEBREW_PREFIX/Cellar/llminxsolver/1.0/llminxsolver-1.0.jar \
+ -Xmx512m llminx.gui.LLMinxSolverMain
+
