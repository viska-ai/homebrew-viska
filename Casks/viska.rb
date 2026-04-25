cask "viska" do
  version "1.0.2"
  sha256 "e3793b11b99515042129f0358c64de0c8f55e69a6a030a62f3920dc0bff9c950"

  url "https://dl.viska-ai.com/Viska-#{version}.pkg"
  name "Viska"
  desc "Voice-to-text transcription with AI formatting"
  homepage "https://viska-ai.com"

  depends_on macos: ">= :sonoma"


  pkg "Viska-#{version}.pkg"

  uninstall quit:    "com.viska-ai.app",
            pkgutil: "com.viska-ai.app"

  zap trash: [
    "~/Library/Application Support/com.viska-ai",
    "~/Library/Caches/com.viska-ai",
    "~/Library/Preferences/com.viska-ai.app.plist",
  ]
end
