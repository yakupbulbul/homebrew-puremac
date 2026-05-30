cask "puremac" do
  version "1.0.0"
  sha256 "58841aca43745a28ada03e8a434ab1a646fb8ea4da0d0ddf3707137bddf33f4d"

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
