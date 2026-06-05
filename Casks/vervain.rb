cask "vervain" do
  version "1.1.0"
  sha256 "1842080728a52531ca4cc3b518004fe996b840b6fbcfca841a39a9c2637f3f29"

  url "https://github.com/yakupbulbul/Vervain/releases/download/v#{version}/Vervain-#{version}.dmg"
  name "Vervain"
  desc "Free, open-source macOS cleaner that respects your files and privacy"
  homepage "https://vervain.app"

  depends_on macos: ">= :sequoia"

  app "Vervain.app"

  zap trash: [
    "~/Library/Caches/app.vervain",
    "~/Library/Preferences/app.vervain.plist",
  ]
end
