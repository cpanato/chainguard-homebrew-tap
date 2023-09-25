# typed: false
# frozen_string_literal: true

# This file was generated by GoReleaser. DO NOT EDIT.
class Chainctl < Formula
  desc "CLI for the Chainguard Platform"
  homepage "https://chainguard.dev"
  version "0.1.173"

  on_macos do
    if Hardware::CPU.intel?
      url "https://dl.enforce.dev/chainctl/0.1.173/chainctl_darwin_x86_64"
      sha256 "85e8495dabf9c313ee3f95acf93e75ae2ac8710f742d9bf04a3de5c0d4ebcec7"

      def install
        bin.install "chainctl_darwin_x86_64" => "chainctl"
      end
    end
    if Hardware::CPU.arm?
      url "https://dl.enforce.dev/chainctl/0.1.173/chainctl_darwin_arm64"
      sha256 "11b1f225a1ba05204fdfc68c38c366a91ba9ff6ef1daf69565157259b28ec989"

      def install
        bin.install "chainctl_darwin_arm64" => "chainctl"
      end
    end
  end

  on_linux do
    if Hardware::CPU.intel?
      url "https://dl.enforce.dev/chainctl/0.1.173/chainctl_linux_x86_64"
      sha256 "765dfd76cbe63f7733239048db314aecc6877f5c4fb71b16a9cb145d96ebd42e"

      def install
        bin.install "chainctl_linux_x86_64" => "chainctl"
      end
    end
    if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url "https://dl.enforce.dev/chainctl/0.1.173/chainctl_linux_arm64"
      sha256 "6e1c8f8d08dbced27f086116fa2df9ae7976df8e8023147bdb7ffe11550d8907"

      def install
        bin.install "chainctl_linux_arm64" => "chainctl"
      end
    end
  end

  test do
    system "#{bin}/chainctl", "version"
  end
end
