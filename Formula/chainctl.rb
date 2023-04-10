# typed: false
# frozen_string_literal: true

# This file was generated by GoReleaser. DO NOT EDIT.
class Chainctl < Formula
  desc "CLI for the Chainguard Platform"
  homepage "https://chainguard.dev"
  version "0.1.98"

  on_macos do
    if Hardware::CPU.intel?
      url "https://dl.enforce.dev/chainctl/0.1.98/chainctl_darwin_x86_64"
      sha256 "247dfdcf034c8238eafcabac7f788742d4ca1d0de67f6298744f8ea9326e9394"

      def install
        bin.install "chainctl_darwin_x86_64" => "chainctl"
      end
    end
    if Hardware::CPU.arm?
      url "https://dl.enforce.dev/chainctl/0.1.98/chainctl_darwin_arm64"
      sha256 "f95d77bc8db913b61567d70ca1994ce4f2e0b464ade831d59463a996f91ff9a1"

      def install
        bin.install "chainctl_darwin_arm64" => "chainctl"
      end
    end
  end

  on_linux do
    if Hardware::CPU.intel?
      url "https://dl.enforce.dev/chainctl/0.1.98/chainctl_linux_x86_64"
      sha256 "ec7b31c7c90c3a9f53b3acb38e5c0f91968295e07ae89f85361700ef5cee36ee"

      def install
        bin.install "chainctl_linux_x86_64" => "chainctl"
      end
    end
    if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url "https://dl.enforce.dev/chainctl/0.1.98/chainctl_linux_arm64"
      sha256 "0ae313926a371f16d3e8708e4a77d70e40f047342f425436bd1f066d6b2960d4"

      def install
        bin.install "chainctl_linux_arm64" => "chainctl"
      end
    end
  end

  test do
    system "#{bin}/chainctl", "version"
  end
end
