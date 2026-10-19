cask "craigs-claude-counter" do
  version "1.8.0"
  sha256 "98e694a64905fbbc583d55adbaa1fba02b1bfc3f6e882ea44e18b8ffa3cb8471"

  url "https://github.com/CraigVG/craigs-claude-counter/releases/download/v#{version}/CraigsClaudeCounter.dmg"
  name "Craig's Claude Counter"
  desc "Dashboard for Claude Code usage limits across multiple accounts"
  homepage "https://github.com/CraigVG/craigs-claude-counter"

  depends_on macos: :sonoma

  app "CraigsClaudeCounter.app", target: "Craig's Claude Counter.app"

  caveats <<~EOS
    Craig's Claude Counter reads usage from the local engine (the small Node
    server in the repo). Start it so the app + widget show live data:

      git clone https://github.com/CraigVG/craigs-claude-counter
      cd craigs-claude-counter && npm start

    Then add the desktop widget: right-click the desktop > Edit Widgets >
    search "Claude Counter".
  EOS

  zap trash: [
    "~/Library/LaunchAgents/com.craigvg.craigs-claude-counter.plist",
  ]
end
