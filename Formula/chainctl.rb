# typed: false
# frozen_string_literal: true

# This file was generated by GoReleaser. DO NOT EDIT.
class Chainctl < Formula
  desc "CLI for the Chainguard Platform"
  homepage "https://chainguard.dev"
  version "0.2.30"

  on_macos do
    if Hardware::CPU.intel?
      url "https://dl.enforce.dev/chainctl/0.2.30/chainctl_darwin_x86_64"
      sha256 "1ec18583c31a6c5bc0fad59e493c4a63ad6a7a510cc4e95c659dfc54fb7fd851"

      def install
        bin.install "chainctl_darwin_x86_64" => "chainctl"
      end
    end
    if Hardware::CPU.arm?
      url "https://dl.enforce.dev/chainctl/0.2.30/chainctl_darwin_arm64"
      sha256 "adef31bbb04561cf3bc0fe70bf11ef5159dabc6f783ebbfceddbf737d9dddc43"

      def install
        bin.install "chainctl_darwin_arm64" => "chainctl"
      end
    end
  end

  on_linux do
    if Hardware::CPU.intel?
      if Hardware::CPU.is_64_bit?
        url "https://dl.enforce.dev/chainctl/0.2.30/chainctl_linux_x86_64"
        sha256 "d7a9523b8495bef9429aacc5ff5b625c7e4fb245f5b9d89c62dc6fd7d8ccca09"

        def install
          bin.install "chainctl_linux_x86_64" => "chainctl"
        end
      end
    end
    if Hardware::CPU.arm?
      if Hardware::CPU.is_64_bit?
        url "https://dl.enforce.dev/chainctl/0.2.30/chainctl_linux_arm64"
        sha256 "ebacbc4d7c6193119990fce66427d0f7cffaa7414ceb08ad5914c4c4ee781067"

        def install
          bin.install "chainctl_linux_arm64" => "chainctl"
        end
      end
    end
  end

  test do
    system "#{bin}/chainctl", "version"
  end
end
