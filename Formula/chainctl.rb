# typed: false
# frozen_string_literal: true

# This file was generated by GoReleaser. DO NOT EDIT.
class Chainctl < Formula
  desc "CLI for the Chainguard Platform"
  homepage "https://chainguard.dev"
  version "0.2.16"

  on_macos do
    if Hardware::CPU.intel?
      url "https://dl.enforce.dev/chainctl/0.2.16/chainctl_darwin_x86_64"
      sha256 "8f0eef7c24af78d087953fff051fb2509fab1e7c00c1d31905bf5d617cc541d5"

      def install
        bin.install "chainctl_darwin_x86_64" => "chainctl"
      end
    end
    if Hardware::CPU.arm?
      url "https://dl.enforce.dev/chainctl/0.2.16/chainctl_darwin_arm64"
      sha256 "70ee6257eacfc25818997f753a29952055213425fae70b01da841c4799a72ced"

      def install
        bin.install "chainctl_darwin_arm64" => "chainctl"
      end
    end
  end

  on_linux do
    if Hardware::CPU.intel?
      if Hardware::CPU.is_64_bit?
        url "https://dl.enforce.dev/chainctl/0.2.16/chainctl_linux_x86_64"
        sha256 "7b05542bfde73845ba147a2893290a205a275b11ccfb7bee395c3db1bc5943a2"

        def install
          bin.install "chainctl_linux_x86_64" => "chainctl"
        end
      end
    end
    if Hardware::CPU.arm?
      if Hardware::CPU.is_64_bit?
        url "https://dl.enforce.dev/chainctl/0.2.16/chainctl_linux_arm64"
        sha256 "3b05086537d381e1c32a121c5ded9c6690feea0b64be67ddcfa559e8540622e0"

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
