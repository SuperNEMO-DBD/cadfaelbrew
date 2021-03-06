module OS
  def self.mac?
    /darwin/i === RUBY_PLATFORM
  end

  def self.linux?
    /linux/i === RUBY_PLATFORM || /linux/i === RbConfig::CONFIG["host_os"]
  end

  GITHUB_USER = "SuperNEMO-DBD"
  GITHUB_REPOSITORY = "SuperNEMO-DBD/cadfaelbrew"
  ISSUES_URL = "https://github.com/#{GITHUB_USER}/#{GITHUB_REPOSITORY}/blob/master/share/doc/homebrew/Troubleshooting.md#troubleshooting"

  require "os/mac"
  if OS.mac?
    NAME = "darwin"
    PATH_OPEN = "/usr/bin/open"
    PATH_PATCH = "/usr/bin/patch"
    # compatibility
    ::MACOS_FULL_VERSION = OS::Mac.full_version.to_s
    ::MACOS_VERSION = OS::Mac.version.to_s
    ::OS_VERSION = "OS X #{MACOS_FULL_VERSION}"
  elsif OS.linux?
    NAME = "linux"
    PATH_OPEN = "xdg-open"
    PATH_PATCH = "patch"
    # compatibility
    ::MACOS_FULL_VERSION = OS::Mac.full_version.to_s
    ::MACOS_VERSION = OS::Mac.version.to_s
    ::OS_VERSION = RUBY_PLATFORM
  else
    raise "Unknown operating system"
  end
end
