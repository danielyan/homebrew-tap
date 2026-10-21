cask "pasty" do
  version "0.1.0,4"
  sha256 "e35f76f1df7321f65518bcd83091f0f21070d5c63d2174f69e4b8d4777e9839c"

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
