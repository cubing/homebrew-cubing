class TwsearchCppWrapper < Formula
  desc "Twisty Puzzle Search Program (Rust wrapper for C++)."
  homepage "https://github.com/cubing/twsearch"
  head 'https://github.com/cubing/twsearch.git', :branch => 'main'

  depends_on "rust" => :build
  depends_on "rustup" => :build

  def install
    ENV.prepend_path "PATH", Formula["rustup"].bin
    system "rustup", "toolchain", "install", "nightly-2025-10-01"

    # TODO: `twsearch-cpp-wrapper` disables the `simd` flag on `twsearch`, so using nightly should not be necessary.
    # Also see: https://github.com/cubing/twsearch/issues/152
    system "cargo", "+nightly-2025-10-01", "install", *std_cargo_args(path: "src/cpp")

    generate_completions_from_executable(bin/"twsearch-cpp-wrapper", "completions")
  end
end
