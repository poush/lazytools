require "lazytools/version"

module Lazytools
  def update_all_homebrew_package
    system("brew update && brew upgrade && brew cleanup")
  end

  def update_all_apt_packages
    cmd = "sudo apt-get update && sudo apt-get upgrade && "\
      "sudo apt-get dist-upgrade && sudo apt-get clean"
    system(cmd, out: $stdout, err: :out)
  end
end
