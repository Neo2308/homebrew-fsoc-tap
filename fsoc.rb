# typed: false
# frozen_string_literal: true

# This file was generated by GoReleaser. DO NOT EDIT.
class Fsoc < Formula
  desc "Cisco FSO Platform Developer's Control Tool"
  homepage "https://github.com/cisco-open/fsoc"
  version "0.43.1"
  license "Apache-2.0"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/Neo2308/fsoc/releases/download/v0.43.1/fsoc-darwin-arm64.tar.gz"
      sha256 "8152666d669b0728a1b45c5826446bca0f096a9271f2c2cac164ee198efa3ac8"

      def install
        Dir.glob("fsoc-*-*") do |f|
          bin.install f => "fsoc"
        end
      end
    end
    if Hardware::CPU.intel?
      url "https://github.com/Neo2308/fsoc/releases/download/v0.43.1/fsoc-darwin-amd64.tar.gz"
      sha256 "71337b911f649312b8c302ef162fd3f22d08b1b4ec4b436a9a70dc4a02f8b3c1"

      def install
        Dir.glob("fsoc-*-*") do |f|
          bin.install f => "fsoc"
        end
      end
    end
  end

  on_linux do
    if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url "https://github.com/Neo2308/fsoc/releases/download/v0.43.1/fsoc-linux-arm64.tar.gz"
      sha256 "4e3e1a23a5e6f0c257a01ec3d9984e18f1a213bfa7d33a73b77ed0a8a9fdbbb9"

      def install
        Dir.glob("fsoc-*-*") do |f|
          bin.install f => "fsoc"
        end
      end
    end
    if Hardware::CPU.intel?
      url "https://github.com/Neo2308/fsoc/releases/download/v0.43.1/fsoc-linux-amd64.tar.gz"
      sha256 "2136e460519d1513d278d8831593cff24da11342f46b64971c4b1876c042ddfe"

      def install
        Dir.glob("fsoc-*-*") do |f|
          bin.install f => "fsoc"
        end
      end
    end
  end

  test do
    system "#{bin}/fsoc version"
  end
end
