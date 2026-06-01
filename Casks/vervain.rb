cask "vervain" do
  version "1.0.0"
  sha256 "600c7c0bf55f4ee378ebccbeadc0a5264ba01260eec49089a69fe10c63039539"

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
