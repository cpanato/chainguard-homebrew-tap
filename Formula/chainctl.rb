# typed: false
# frozen_string_literal: true

# This file was generated by GoReleaser. DO NOT EDIT.
class Chainctl < Formula
  desc "CLI for the Chainguard Platform"
  homepage "https://chainguard.dev"
  version "0.2.53"

  on_macos do
    if Hardware::CPU.intel?
      url "https://dl.enforce.dev/chainctl/0.2.53/chainctl_darwin_x86_64"
      sha256 "e1b5bf1067d4f2f86dca9cc6d4ca47b93c39301589a488d11997787b13b2e5f8"

      def install
        bin.install "chainctl_darwin_x86_64" => "chainctl"
      end
    end
    if Hardware::CPU.arm?
      url "https://dl.enforce.dev/chainctl/0.2.53/chainctl_darwin_arm64"
      sha256 "01fd78f449714b7be8c6981a1aca98c3a431b8ab80abc2c35d38c52e8950bd03"

      def install
        bin.install "chainctl_darwin_arm64" => "chainctl"
      end
    end
  end

  on_linux do
    if Hardware::CPU.intel?
      if Hardware::CPU.is_64_bit?
        url "https://dl.enforce.dev/chainctl/0.2.53/chainctl_linux_x86_64"
        sha256 "e2bfa9b2b31c691285052d4e62262be1e6b46e39380932ab033052664f6c3ef2"

        def install
          bin.install "chainctl_linux_x86_64" => "chainctl"
        end
      end
    end
    if Hardware::CPU.arm?
      if Hardware::CPU.is_64_bit?
        url "https://dl.enforce.dev/chainctl/0.2.53/chainctl_linux_arm64"
        sha256 "11022643c68acfb24a770e0e3c086a878aa2b87c6f46fd4aa1a17a2ddbb1380c"

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
