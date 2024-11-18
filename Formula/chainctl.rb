# typed: false
# frozen_string_literal: true

# This file was generated by GoReleaser. DO NOT EDIT.
class Chainctl < Formula
  desc "CLI for the Chainguard Platform"
  homepage "https://chainguard.dev"
  version "0.2.9"

  on_macos do
    on_intel do
      url "https://dl.enforce.dev/chainctl/0.2.9/chainctl_darwin_x86_64"
      sha256 "8757a659de814aba5d7cd4e14679c0c099ee878205bcb6f8cec485b59918d6fc"

      def install
        bin.install "chainctl_darwin_x86_64" => "chainctl"
      end
    end
    on_arm do
      url "https://dl.enforce.dev/chainctl/0.2.9/chainctl_darwin_arm64"
      sha256 "b5550733d8e7de733e761fb793706bf1d183a58019bf1fa0f95250662ac4dbbb"

      def install
        bin.install "chainctl_darwin_arm64" => "chainctl"
      end
    end
  end

  on_linux do
    on_intel do
      if Hardware::CPU.is_64_bit?
        url "https://dl.enforce.dev/chainctl/0.2.9/chainctl_linux_x86_64"
        sha256 "0b51b803742378003a23500cdeaa7cdb42b83b99b1f2d5a4614d12a7339d68fc"

        def install
          bin.install "chainctl_linux_x86_64" => "chainctl"
        end
      end
    end
    on_arm do
      if Hardware::CPU.is_64_bit?
        url "https://dl.enforce.dev/chainctl/0.2.9/chainctl_linux_arm64"
        sha256 "a4dd4e86ef0250048b6c2e0b211875e07b0d802c9caf1bebc7ed3e45f59a233d"

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
