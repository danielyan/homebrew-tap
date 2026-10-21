cask "pasty" do
  version "0.0.0,0"
  sha256 "0000000000000000000000000000000000000000000000000000000000000000"

  url "https://danielyan.github.io/pasty-releases/Pasty-#{version.csv.first}.zip"
  name "Pasty"
  desc "Hotkey compose box that copies to the clipboard"
  homepage "https://danielyan.github.io/pasty-releases/"

  livecheck do
    url "https://danielyan.github.io/pasty-releases/appcast.xml"
    strategy :sparkle
  end

  auto_updates true
  depends_on macos: :sonoma

  app "Pasty.app"

  zap trash: [
    "~/.config/pasty",
    "~/Library/Caches/org.danielyan.Pasty",
    "~/Library/HTTPStorages/org.danielyan.Pasty",
    "~/Library/Preferences/org.danielyan.Pasty.plist",
  ]
end
