class Twips < Formula
  desc "Twizzle Pattern Searcher."
  homepage "https://github.com/cubing/twips"
  head 'https://github.com/cubing/twips.git', :branch => 'main'

  depends_on "rust" => :build
  depends_on "rustup" => :build

  def install
    ENV.prepend_path "PATH", Formula["rustup"].bin
    system "rustup", "toolchain", "install", "nightly-2025-10-01"

    system "cargo", "+nightly-2025-10-01", "install", *std_cargo_args(path: "src/cli")

    generate_completions_from_executable(bin/"twips", "completions")
  end
end
