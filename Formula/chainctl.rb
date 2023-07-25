# typed: false
# frozen_string_literal: true

# This file was generated by GoReleaser. DO NOT EDIT.
class Chainctl < Formula
  desc "CLI for the Chainguard Platform"
  homepage "https://chainguard.dev"
  version "0.1.144"

  on_macos do
    if Hardware::CPU.intel?
      url "https://dl.enforce.dev/chainctl/0.1.144/chainctl_darwin_x86_64"
      sha256 "f4aa4bc0eff1446ca4a4382f661d5e3d85b1582f906bbcfab0fad4b52a9b90f0"

      def install
        bin.install "chainctl_darwin_x86_64" => "chainctl"
      end
    end
    if Hardware::CPU.arm?
      url "https://dl.enforce.dev/chainctl/0.1.144/chainctl_darwin_arm64"
      sha256 "fa3d3dfefd573e54ee4944f94ba01b18dbce3d20fc1a9c3a47b60126b181cbe4"

      def install
        bin.install "chainctl_darwin_arm64" => "chainctl"
      end
    end
  end

  on_linux do
    if Hardware::CPU.intel?
      url "https://dl.enforce.dev/chainctl/0.1.144/chainctl_linux_x86_64"
      sha256 "a4088cdae430d6ffe11ae9a0be5478d54f602d43a8a9667aa60a694fc9766bbb"

      def install
        bin.install "chainctl_linux_x86_64" => "chainctl"
      end
    end
    if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url "https://dl.enforce.dev/chainctl/0.1.144/chainctl_linux_arm64"
      sha256 "15c0428956c0f90c30f2422d2dfde69bb32fe7479570628bb1e0d21bfd34e267"

      def install
        bin.install "chainctl_linux_arm64" => "chainctl"
      end
    end
  end

  test do
    system "#{bin}/chainctl", "version"
  end
end
