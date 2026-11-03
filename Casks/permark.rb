cask "permark" do
  version "0.8.1"
  sha256 "87847fc62836d17bccf09ecc9d8ecef2f3b3d3d599657a997e86dfbfa3d11521"

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
