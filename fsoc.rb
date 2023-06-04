# typed: false
# frozen_string_literal: true

# This file was generated by GoReleaser. DO NOT EDIT.
class Fsoc < Formula
  desc "Cisco FSO Platform Developer's Control Tool"
  homepage "https://github.com/cisco-open/fsoc"
  version "0.43.0"
  license "Apache-2.0"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/Neo2308/fsoc/releases/download/v0.43.0/fsoc-darwin-arm64.tar.gz"
      sha256 "fe53a49353dcb72e9c53e27b2f7558b6fc0bbd3decb3471a33cd25df61bdf791"

      def install
        Dir.glob("fsoc-*-*") do |f|
          bin.install f => "fsoc"
        end
      end
    end
    if Hardware::CPU.intel?
      url "https://github.com/Neo2308/fsoc/releases/download/v0.43.0/fsoc-darwin-amd64.tar.gz"
      sha256 "1a51973aedd4cc134c715a12bbd7ce3d5e5d83757d43483200a9d574f9b0c5ee"

      def install
        Dir.glob("fsoc-*-*") do |f|
          bin.install f => "fsoc"
        end
      end
    end
  end

  on_linux do
    if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url "https://github.com/Neo2308/fsoc/releases/download/v0.43.0/fsoc-linux-arm64.tar.gz"
      sha256 "37f9939f4c1bb51ec005a3932a4ddb5cf050f5ce708e4d1d98c89faa2bdcae51"

      def install
        Dir.glob("fsoc-*-*") do |f|
          bin.install f => "fsoc"
        end
      end
    end
    if Hardware::CPU.intel?
      url "https://github.com/Neo2308/fsoc/releases/download/v0.43.0/fsoc-linux-amd64.tar.gz"
      sha256 "88f6d2145403b2d23f65449df549ea032f8743fd71849a6063f447b6cf38d391"

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
