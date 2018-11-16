class Llminxsolver < Formula
  desc "A Megaminx LL solver by Lars Vandenbergh."
  homepage "https://github.com/johnli0135/AlgExplorer"
  url "http://hem.bredband.net/bunker7/llminxsolver-10.zip"
  version "1.0"
  sha256 ""

  # TODO: Either add a semantic Java dependency (turn this into a cask?) or
  # print a notification about it.
  # depends_on cask: "java"
  patch :DATA

  def install
    prefix.install "llminxsolver.jar"
    bin.install "llminxsolver-gui"
  end

  test do
    system "false"
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
+ -cp HOMEBREW_PREFIX/Cellar/llminxsolver/1.0/llminxsolver.jar \
+ -Xmx512m llminx.gui.LLMinxSolverMain
+
