class Sq1opt < Formula
  desc "Square-1 optimal solver by Jaap Scherphuis."
  homepage "https://www.jaapsch.net/puzzles/square1.htm"
  url "https://www.jaapsch.net/puzzles/extra/sq1opt.zip"
  version "1"
  sha256 "6a6848fc943fc245615213618069c4f63a796c2fed3c9866580038850e3a060e"

  # The builtin `g++` on macOS will not allow the string literals in the macros
  # to be converted to char*. This seems to be the least painful way to deal
  # with the compiler error.
  patch "diff --git a/sq1opt.cpp b/sq1opt.cpp\n"\
        "index 200df77..b3835e8 100755\n"\
        "--- a/sq1opt.cpp\n"\
        "+++ b/sq1opt.cpp\n"\
        "@@ -6,13 +6,13 @@\n"\
        " #define NUMHALVES 13\r\n"\
        " #define NUMLAYERS 158\r\n"\
        " #define NUMSHAPES 7356\r\n"\
        "-#define FILESTT \"sq1stt.dat\"\r\n"\
        "-#define FILESCTE \"sq1scte.dat\"\r\n"\
        "-#define FILESCTC \"sq1sctc.dat\"\r\n"\
        "-#define FILEP1U  \"sq1p1u.dat\"\r\n"\
        "-#define FILEP2U  \"sq1p2u.dat\"\r\n"\
        "-#define FILEP1W  \"sq1p1w.dat\"\r\n"\
        "-#define FILEP2W  \"sq1p2w.dat\"\r\n"\
        "+char FILESTT[] = \"sq1stt.dat\";\r\n"\
        "+char FILESCTE[] = \"sq1scte.dat\";\r\n"\
        "+char FILESCTC[] = \"sq1sctc.dat\";\r\n"\
        "+char FILEP1U[] = \"sq1p1u.dat\";\r\n"\
        "+char FILEP2U[] = \"sq1p2u.dat\";\r\n"\
        "+char FILEP1W[] = \"sq1p1w.dat\";\r\n"\
        "+char FILEP2W[] = \"sq1p2w.dat\";\r\n"\
        " \r\n"\
        " const char* errors[]={\r\n"\
        "    \"Unrecognised command line switch.\", //1\r\n"\
        ""

  def install
    system "g++", "sq1opt.cpp", "-o", "sq1opt"
    bin.install "sq1opt"
  end

  test do
    system "false"
  end
end
