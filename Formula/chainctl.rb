# typed: false
# frozen_string_literal: true

# This file was generated by GoReleaser. DO NOT EDIT.
class Chainctl < Formula
  desc "CLI for the Chainguard Platform"
  homepage "https://chainguard.dev"
  version "0.1.164"

  on_macos do
    if Hardware::CPU.intel?
      url "https://dl.enforce.dev/chainctl/0.1.164/chainctl_darwin_x86_64"
      sha256 "860ff0ccdd69227603e9be5b29d4bef0b98f907bed377c4a451ea94b802fbf83"

      def install
        bin.install "chainctl_darwin_x86_64" => "chainctl"
      end
    end
    if Hardware::CPU.arm?
      url "https://dl.enforce.dev/chainctl/0.1.164/chainctl_darwin_arm64"
      sha256 "8f7d4314b3e556aeb39c24f7da80f4172c2c6b782e37a7444597700728eed05b"

      def install
        bin.install "chainctl_darwin_arm64" => "chainctl"
      end
    end
  end

  on_linux do
    if Hardware::CPU.intel?
      url "https://dl.enforce.dev/chainctl/0.1.164/chainctl_linux_x86_64"
      sha256 "adaa4291a20c32f3b7b6c0a32d17d38fc852d49a38eb0613e105ff4a2fc0e340"

      def install
        bin.install "chainctl_linux_x86_64" => "chainctl"
      end
    end
    if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url "https://dl.enforce.dev/chainctl/0.1.164/chainctl_linux_arm64"
      sha256 "ef802946730ac371a03ad96bef117c3e93b14651685c7b513ef85d7bc84b767d"

      def install
        bin.install "chainctl_linux_arm64" => "chainctl"
      end
    end
  end

  test do
    system "#{bin}/chainctl", "version"
  end
end
