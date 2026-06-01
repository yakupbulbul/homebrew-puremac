cask "vervain" do
  version "1.0.0"
  sha256 "29c6975a44e58690722f8e6142a7f84c3a4f55ac8f07abd9545badd0c43d8311"

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
