class Twsearch < Formula
  desc "Twisty Puzzle Search Program."
  homepage "https://github.com/cubing/twsearch"
  head 'https://github.com/cubing/twsearch.git', :branch => 'main'

  depends_on "rust" => :build
  depends_on "rustup" => :build

  def install
    ENV.prepend_path "PATH", Formula["rustup"].bin
    system "rustup", "toolchain", "install", "nightly-2025-10-01"

    system "cargo", "+nightly-2025-10-01", "install", *std_cargo_args(path: "src/rs")

    generate_completions_from_executable(bin/"twsearch", "completions")
  end
end
