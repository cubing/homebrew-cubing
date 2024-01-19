  url "http://kociemba.org/downloads/cube514.zip"
  version "5.14"
  sha256 "ec622d6c67967beaf7cf4c72a9bba88e04161be347750fb839897e28a7d05019"
  # 😢 https://github.com/orgs/Homebrew/discussions/3163#discussioncomment-2526187
  # depends_on "homebrew/cask/wine-stable"
    prefix.install "cube514htm.exe"
    prefix.install "cube514qtm.exe"

  def caveats
    <<~EOS

      The `wine` Homebrew dependency cannot be installed automatically (because it is a cask).
      Please install `wine` separately using:
      
          brew install homebrew/cask/wine-stable
          cube-explorer-htm # This works now.

    EOS
  end
+wine HOMEBREW_PREFIX/Cellar/cube-explorer/5.14/cube514htm.exe
+wine HOMEBREW_PREFIX/Cellar/cube-explorer/5.14/cube514qtm.exe