cask "viska" do
  version "0.112.0"
  sha256 "61d117cf579ea2bfc37254279d4d282e6197266e4395d9810bffe2f024e3c592"

  url "https://dl.viska-ai.com/Viska-#{version}.pkg"
  name "Viska"
  desc "Voice-to-text transcription with AI formatting"
  homepage "https://viska-ai.com"

  depends_on macos: ">= :sonoma"
  depends_on arch: :arm64

  pkg "Viska-#{version}.pkg"

  uninstall quit:    "com.viska-ai.app",
            pkgutil: "com.viska-ai.app"

  zap trash: [
    "~/Library/Application Support/com.viska-ai",
    "~/Library/Caches/com.viska-ai",
    "~/Library/Preferences/com.viska-ai.app.plist",
  ]
end
