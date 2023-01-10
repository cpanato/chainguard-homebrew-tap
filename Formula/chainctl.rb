# typed: false
# frozen_string_literal: true

# This file was generated by GoReleaser. DO NOT EDIT.
class Chainctl < Formula
  desc "CLI for the Chainguard Platform"
  homepage "https://chainguard.dev"
  version "0.1.51"

  on_macos do
    if Hardware::CPU.intel?
      url "https://dl.enforce.dev/chainctl/0.1.51/chainctl_darwin_x86_64"
      sha256 "1b688d911e755899a045cc2f1b15118bac9d6142ec51c6fdde1c70a80bf90e63"

      def install
        bin.install "chainctl_darwin_x86_64" => "chainctl"
      end
    end
    if Hardware::CPU.arm?
      url "https://dl.enforce.dev/chainctl/0.1.51/chainctl_darwin_arm64"
      sha256 "2b8a9075b937154ed9b3fb61fd1152d3683e5d5621805b0275099e5f00afd08b"

      def install
        bin.install "chainctl_darwin_arm64" => "chainctl"
      end
    end
  end

  on_linux do
    if Hardware::CPU.intel?
      url "https://dl.enforce.dev/chainctl/0.1.51/chainctl_linux_x86_64"
      sha256 "4cf761876efbb73188893eb8ddb7690800d5399b7e07ce6fc2bf771b4c0de86b"

      def install
        bin.install "chainctl_linux_x86_64" => "chainctl"
      end
    end
    if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url "https://dl.enforce.dev/chainctl/0.1.51/chainctl_linux_arm64"
      sha256 "da6516f2220d97735cb577824db394aeaba0099a4de4a10226a42ff416937c20"

      def install
        bin.install "chainctl_linux_arm64" => "chainctl"
      end
    end
  end

  test do
    system "#{bin}/chainctl", "version"
  end
end
