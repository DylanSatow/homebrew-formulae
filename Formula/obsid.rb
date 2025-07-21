class Obsid < Formula
  desc "Automatically track programming work in Obsidian daily notes"
  homepage "https://github.com/DylanSatow/obsid"
  url "https://github.com/DylanSatow/obsid/archive/refs/tags/v1.0.0.tar.gz"
  sha256 "e48d148ec77ed561d1905a5a3511d2d42340419017b0d18158496ad0f5c7de2d"
  license "MIT"

  depends_on "go" => :build

  def install
    system "go", "build", *std_go_args(ldflags: "-s -w"), "-o", bin/"obsid"
  end

  test do
    system "#{bin}/obsid", "--version"
  end
end