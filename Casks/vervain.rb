cask "vervain" do
  version "1.0.0"
  sha256 "c7fd130ffc4089da8db2ae702e3752a8126c248ece191b26d0a6002b244ef9fc"

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
