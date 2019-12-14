# This file was generated by GoReleaser. DO NOT EDIT.
class BlackboxOs < Formula
  desc "A pluggable platform for multi-chain deployments."
  homepage "https://crypdex.io/"
  version "0.2.31"
  bottle :unneeded

  if OS.mac?
    url "https://github.com/crypdex/blackbox/releases/download/0.2.31/blackbox-os_0.2.31_darwin_amd64.tar.gz"
    sha256 "1a42988e4adf731397eaf4cad050289b0fa49096d623ba36c17e715716c6a496"
  elsif OS.linux?
    if Hardware::CPU.intel?
      url "https://github.com/crypdex/blackbox/releases/download/0.2.31/blackbox-os_0.2.31_linux_amd64.tar.gz"
      sha256 "bc5bcd97a96f3aea38eecac2b987e6611d5fd69388d37e81560bf4067f86565f"
    end
    if Hardware::CPU.arm?
      if Hardware::CPU.is_64_bit?
        url "https://github.com/crypdex/blackbox/releases/download/0.2.31/blackbox-os_0.2.31_linux_arm64.tar.gz"
        sha256 "f239d2dff1aab4657913a7e463da9e171b771576bf9c5633329d98c24293993f"
      else
      end
    end
  end

  def install
    bin.install "blackbox"
  end
end
