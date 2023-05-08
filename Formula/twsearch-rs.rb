class TwsearchRs < Formula
  desc "Twisty Puzzle Search Program (Rust wrapper)."
  homepage "https://github.com/cubing/twsearch"
  head 'https://github.com/cubing/twsearch.git', :branch => 'main'

  depends_on "rust" => :build

  def install
    system "cargo", "install", *std_cargo_args

    generate_completions_from_executable(bin/"twsearch-rs", "completions")
  end
end
