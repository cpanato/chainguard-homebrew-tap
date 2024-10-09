# typed: false
# frozen_string_literal: true

# This file was generated by GoReleaser. DO NOT EDIT.
class Chainctl < Formula
  desc "CLI for the Chainguard Platform"
  homepage "https://chainguard.dev"
  version "0.1.398"

  on_macos do
    on_intel do
      url "https://dl.enforce.dev/chainctl/0.1.398/chainctl_darwin_x86_64"
      sha256 "a4c5d1ddd4fd79b151d079386616ba58b9085317d81d133d1e251143c6b2420d"

      def install
        bin.install "chainctl_darwin_x86_64" => "chainctl"
      end
    end
    on_arm do
      url "https://dl.enforce.dev/chainctl/0.1.398/chainctl_darwin_arm64"
      sha256 "f9685c4f6d6eeef6f3f27565f47283fba73d4282c2d469e75fe2f2a116f0dcaf"

      def install
        bin.install "chainctl_darwin_arm64" => "chainctl"
      end
    end
  end

  on_linux do
    on_intel do
      if Hardware::CPU.is_64_bit?
        url "https://dl.enforce.dev/chainctl/0.1.398/chainctl_linux_x86_64"
        sha256 "3581f80645c966b3e4a3b569a7b51ed6069e049b299c452cc50c59d123015a1c"

        def install
          bin.install "chainctl_linux_x86_64" => "chainctl"
        end
      end
    end
    on_arm do
      if Hardware::CPU.is_64_bit?
        url "https://dl.enforce.dev/chainctl/0.1.398/chainctl_linux_arm64"
        sha256 "46ed10433fb555714648262a064df0735033e447baa0c80050751eb63d7b5983"

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
