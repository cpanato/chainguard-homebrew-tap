# typed: false
# frozen_string_literal: true

# This file was generated by GoReleaser. DO NOT EDIT.
class Chainctl < Formula
  desc "CLI for the Chainguard Platform"
  homepage "https://chainguard.dev"
  version "0.1.66"

  on_macos do
    if Hardware::CPU.intel?
      url "https://dl.enforce.dev/chainctl/0.1.66/chainctl_darwin_x86_64"
      sha256 "45ebafa22b72cb71a33525ab4c689ac1bad419a6266a6c2cfea8202ca146df15"

      def install
        bin.install "chainctl_darwin_x86_64" => "chainctl"
      end
    end
    if Hardware::CPU.arm?
      url "https://dl.enforce.dev/chainctl/0.1.66/chainctl_darwin_arm64"
      sha256 "c9a09144454c4492eebb5b9e8e780585d0c8bd92e51e3e87c72887a4b71f23d8"

      def install
        bin.install "chainctl_darwin_arm64" => "chainctl"
      end
    end
  end

  on_linux do
    if Hardware::CPU.intel?
      url "https://dl.enforce.dev/chainctl/0.1.66/chainctl_linux_x86_64"
      sha256 "2202a14c3ca494e56b22abf0246746e762a4fd5d97510518e5e6f520e8b5e5c5"

      def install
        bin.install "chainctl_linux_x86_64" => "chainctl"
      end
    end
    if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url "https://dl.enforce.dev/chainctl/0.1.66/chainctl_linux_arm64"
      sha256 "f8af0e78153808d0e9db12cab7e4e637e1b908d976c0f539db3ec740a1da1a10"

      def install
        bin.install "chainctl_linux_arm64" => "chainctl"
      end
    end
  end

  test do
    system "#{bin}/chainctl", "version"
  end
end
