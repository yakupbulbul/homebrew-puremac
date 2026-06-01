cask "vervain" do
  version "1.0.0"
  sha256 "b3d357175bc6555b5680ab8ae84fb28e12c33e923bc071fcb74b415d55991b58"

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
