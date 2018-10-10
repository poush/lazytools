require "lazytools/version"

module Lazytools
  def update_all_homebrew_package
    system("brew update && brew upgrade && brew cleanup")
  end
end
