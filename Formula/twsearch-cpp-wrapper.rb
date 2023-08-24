class TwsearchCppWrapper < Formula
  desc "Twisty Puzzle Search Program (Rust wrapper for C++)."
  homepage "https://github.com/cubing/twsearch"
  head 'https://github.com/cubing/twsearch.git', :branch => 'main'

  depends_on "rust" => :build

  def install
    system "cargo", "install", *std_cargo_args(path: "src/cpp")

    generate_completions_from_executable(bin/"twsearch-cpp-wrapper", "completions")
  end
end
