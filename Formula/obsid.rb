class Obsid < Formula
  desc "Automatically track programming work in Obsidian daily notes"
  homepage "https://github.com/DylanSatow/obsid"
  url "https://github.com/DylanSatow/obsid/archive/refs/tags/v1.0.0.tar.gz"
  sha256 "71fd3471243241031dcc4222cf83b0c3edfeb0afccf2db004b5e3fbf5df8100e"
  license "MIT"

  depends_on "go" => :build

  def install
    system "go", "build", *std_go_args(ldflags: "-s -w"), "-o", bin/"obsid"
  end

  test do
    system "#{bin}/obsid", "--version"
  end
end