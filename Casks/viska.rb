cask "viska" do
  version "0.180.0"
  sha256 "9d070a2365948a4889229525f1e7c2ae962f9c8bdaee266364a257faed3f25e1"

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
