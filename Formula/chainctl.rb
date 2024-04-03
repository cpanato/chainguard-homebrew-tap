# typed: false
# frozen_string_literal: true

# This file was generated by GoReleaser. DO NOT EDIT.
class Chainctl < Formula
  desc "CLI for the Chainguard Platform"
  homepage "https://chainguard.dev"
  version "0.1.268"

  on_macos do
    if Hardware::CPU.intel?
      url "https://dl.enforce.dev/chainctl/0.1.268/chainctl_darwin_x86_64"
      sha256 "c637fbf7c0d90bbf06275e30eb53636047a5e18727e4e84171ef4937865ee3c1"

      def install
        bin.install "chainctl_darwin_x86_64" => "chainctl"
      end
    end
    if Hardware::CPU.arm?
      url "https://dl.enforce.dev/chainctl/0.1.268/chainctl_darwin_arm64"
      sha256 "a4c9d73e2acdcce8dc6d6df4ee2ae913f159756f8f35e3630f60b47275314ff4"

      def install
        bin.install "chainctl_darwin_arm64" => "chainctl"
      end
    end
  end

  on_linux do
    if Hardware::CPU.intel?
      url "https://dl.enforce.dev/chainctl/0.1.268/chainctl_linux_x86_64"
      sha256 "092e72637e1d9f391c61e2788cfbc5a3b40616af0aa24836a3f51daf05a9abb7"

      def install
        bin.install "chainctl_linux_x86_64" => "chainctl"
      end
    end
    if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url "https://dl.enforce.dev/chainctl/0.1.268/chainctl_linux_arm64"
      sha256 "1fcca734e9d8be92d4c58e628c6075e4bd91647b1a916d6a672a8393360ebe9a"

      def install
        bin.install "chainctl_linux_arm64" => "chainctl"
      end
    end
  end

  test do
    system "#{bin}/chainctl", "version"
  end
end
