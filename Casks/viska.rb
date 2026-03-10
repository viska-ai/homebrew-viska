cask "viska" do
  version "0.148.0"
  sha256 "d4b3c7ce56ef1e3fa3de4699fea9074cc4ad4c8c39571294e08bac4ce1678579"

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
