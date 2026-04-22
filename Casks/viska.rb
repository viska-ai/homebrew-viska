cask "viska" do
  version "0.185.29"
  sha256 "22563cefb10b078146b15cdc77655232a39ae0a28cd6e2198c0ce0c0abfffe33"

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
