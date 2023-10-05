class Twsearch < Formula
  desc "Twisty Puzzle Search Program."
  homepage "https://github.com/cubing/twsearch"
  head 'https://github.com/cubing/twsearch.git', :branch => 'main'

  depends_on "rust" => :build

  def install
    system "cargo", "install", *std_cargo_args(path: "src/rs")

    generate_completions_from_executable(bin/"twsearch", "completions")
  end
end
