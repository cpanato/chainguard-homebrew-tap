# typed: false
# frozen_string_literal: true

# This file was generated by GoReleaser. DO NOT EDIT.
class Melange < Formula
  desc "Build apk packages using declarative pipelines"
  homepage "https://github.com/chainguard-dev/melange"
  version "0.6.7"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/chainguard-dev/melange/releases/download/v0.6.7/melange_0.6.7_darwin_arm64.tar.gz"
      sha256 "6843178db428e40e834e12ef55417eaa4ff50a58b677b5ae21f75586f1edca00"

      def install
        bin.install "melange" => "melange"
      end
    end
    if Hardware::CPU.intel?
      url "https://github.com/chainguard-dev/melange/releases/download/v0.6.7/melange_0.6.7_darwin_amd64.tar.gz"
      sha256 "110812906e602badbe76a7808bd6bb769b839c2b886f5dcf986a5a55d74f8541"

      def install
        bin.install "melange" => "melange"
      end
    end
  end

  on_linux do
    if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url "https://github.com/chainguard-dev/melange/releases/download/v0.6.7/melange_0.6.7_linux_arm64.tar.gz"
      sha256 "3e99fb83e7fc5839a7e2986a92cc2900b1b8bba61c45168f466b152de0330a6c"

      def install
        bin.install "melange" => "melange"
      end
    end
    if Hardware::CPU.intel?
      url "https://github.com/chainguard-dev/melange/releases/download/v0.6.7/melange_0.6.7_linux_amd64.tar.gz"
      sha256 "4811fdd2e38fcad44968d183431d9355f7d158fd921468bea763e1b73d88d836"

      def install
        bin.install "melange" => "melange"
      end
    end
  end

  test do
    system "#{bin}/melange", "version"
  end
end
