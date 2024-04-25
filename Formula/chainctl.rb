# typed: false
# frozen_string_literal: true

# This file was generated by GoReleaser. DO NOT EDIT.
class Chainctl < Formula
  desc "CLI for the Chainguard Platform"
  homepage "https://chainguard.dev"
  version "0.1.287"

  on_macos do
    if Hardware::CPU.intel?
      url "https://dl.enforce.dev/chainctl/0.1.287/chainctl_darwin_x86_64"
      sha256 "5eaa5cfdcb9a72e0ff3e7ec2f785aed7a15bb3546cd506743454255127011e65"

      def install
        bin.install "chainctl_darwin_x86_64" => "chainctl"
      end
    end
    if Hardware::CPU.arm?
      url "https://dl.enforce.dev/chainctl/0.1.287/chainctl_darwin_arm64"
      sha256 "c2656f1d3840879249bfff83ba948ec45e258d6da50162d52cf6b463a6b87031"

      def install
        bin.install "chainctl_darwin_arm64" => "chainctl"
      end
    end
  end

  on_linux do
    if Hardware::CPU.intel?
      url "https://dl.enforce.dev/chainctl/0.1.287/chainctl_linux_x86_64"
      sha256 "52453c41a004dd34bb37b757b132f51387d9464c86d6dd9bab5d758b8325319c"

      def install
        bin.install "chainctl_linux_x86_64" => "chainctl"
      end
    end
    if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url "https://dl.enforce.dev/chainctl/0.1.287/chainctl_linux_arm64"
      sha256 "3841521947e5e03bb6d66d95b816a473ec991db483925f9e857f3e7b08b6dc6d"

      def install
        bin.install "chainctl_linux_arm64" => "chainctl"
      end
    end
  end

  test do
    system "#{bin}/chainctl", "version"
  end
end
