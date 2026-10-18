cask "permark" do
  version "0.5.8"
  sha256 "769a60b8f3975ddd788f6c30758146580f2c41afc6420503cfcae6cfcaaf1237"

  url "https://github.com/EdelmarSchneider/permark/releases/download/v#{version}/PerMark_#{version}_universal.dmg"
  name "PerMark"
  desc "Markdown app to read, write and steer what your AI agents write"
  homepage "https://edelmarschneider.github.io/permark/"

  livecheck do
    url :url
    strategy :github_latest
  end

  app "PerMark.app"
  binary "#{appdir}/PerMark.app/Contents/MacOS/permark"

  zap trash: [
    "~/Library/Application Support/dev.permark.app",
    "~/Library/Application Support/dev.trailmark.app",
    "~/Library/Caches/dev.permark.app",
    "~/Library/Caches/dev.trailmark.app",
    "~/Library/Preferences/dev.permark.app.plist",
    "~/Library/Preferences/dev.trailmark.app.plist",
    "~/Library/Saved Application State/dev.permark.app.savedState",
    "~/Library/Saved Application State/dev.trailmark.app.savedState",
  ]
end
