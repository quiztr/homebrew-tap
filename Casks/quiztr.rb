cask "quiztr" do
  version "2.13.1"
  sha256 "cb31ed4ac5a9d36acb8484e8318cf3e946ee826544c545c97811743fc5e1c2df"

  url "https://download.quiztr.com/mac/Quiztr-#{version}.dmg"
  name "Quiztr"
  desc "Turn notes, slides or any topic into bite-sized quizzes"
  homepage "https://quiztr.com/"

  livecheck do
    url "https://download.quiztr.com/mac/appcast.xml"
    strategy :sparkle, &:short_version
  end

  auto_updates true
  depends_on arch: :arm64
  depends_on macos: :sequoia

  app "Quiztr.app"

  uninstall quit: "com.quiztr.mac"

  zap trash: [
    "~/Library/Application Support/*/*/NativeMessagingHosts/com.quiztr.mac.json",
    "~/Library/Application Support/*/NativeMessagingHosts/com.quiztr.mac.json",
    "~/Library/Application Support/com.quiztr.mac",
    "~/Library/Caches/com.quiztr.mac",
    "~/Library/HTTPStorages/com.quiztr.mac",
    "~/Library/Preferences/com.quiztr.mac.plist",
    "~/Library/Saved Application State/com.quiztr.mac.savedState",
  ]
end
