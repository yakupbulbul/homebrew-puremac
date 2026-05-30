cask "puremac" do
  version "1.0.0"
  sha256 "600c7c0bf55f4ee378ebccbeadc0a5264ba01260eec49089a69fe10c63039539"

  url "https://github.com/yakupbulbul/PureMac/releases/download/v#{version}/PureMac-#{version}.dmg"
  name "PureMac"
  desc "Free, open-source macOS cleaner that respects your files and privacy"
  homepage "https://puremac.app"

  depends_on macos: ">= :sequoia"

  app "PureMac.app"

  zap trash: [
    "~/Library/Caches/app.puremac",
    "~/Library/Preferences/app.puremac.plist",
  ]
end
