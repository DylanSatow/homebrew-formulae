class Obsid < Formula
  desc "Automatically track programming work in Obsidian daily notes"
  homepage "https://github.com/DylanSatow/obsid"
  url "https://github.com/DylanSatow/obsid/archive/refs/heads/main.tar.gz"
  sha256 :no_check
  license "MIT"

  depends_on "go" => :build

  def install
    system "go", "build", *std_go_args(ldflags: "-s -w"), "-o", bin/"obsid"
  end

  test do
    system "#{bin}/obsid", "--version"
  end
end