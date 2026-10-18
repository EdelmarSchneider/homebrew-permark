cask "permark" do
  version "0.5.7"
  sha256 "f6f0545088d1e5250a58badd73285241f7ae1cabf117c86634bd3a9e4e9ef78d"

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
