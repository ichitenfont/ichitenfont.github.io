source "https://rubygems.org"
# If you want to use GitHub Pages, remove the "gem "jekyll"" above and
# uncomment the line below. To upgrade, run `bundle update github-pages`.
# gem "github-pages", group: :jekyll_plugins
gem "jekyll", group: :jekyll_plugins
gem "jekyll-feed", group: :jekyll_plugins
gem "jekyll-paginate-v2", group: :jekyll_plugins
gem "jekyll-redirect-from", group: :jekyll_plugins

# Windows and JRuby does not include zoneinfo files, so bundle the tzinfo-data gem
# and associated library.
platforms :mingw, :x64_mingw, :mswin, :jruby do
  gem "tzinfo", ">= 1", "< 3"
  gem "tzinfo-data"
end

# Performance-booster for watching directories on Windows
gem "wdm", "~> 0.1.1", :platforms => [:mingw, :x64_mingw, :mswin]

# Lock `http_parser.rb` gem to `v0.6.x` on JRuby builds since newer versions of the gem
# do not have a Java counterpart.
gem "http_parser.rb", "~> 0.6.0", :platforms => [:jruby]

gem "webrick", "~> 1.8"

gem "i18n"
gem "jekyll-coffeescript", group: :github_plugins
gem "jekyll-gist", group: :github_plugins
gem "jekyll-github-metadata", group: :github_plugins
gem "jekyll-optional-front-matter", group: :github_plugins
gem "jekyll-readme-index", group: :github_plugins
gem "jekyll-titles-from-headings", group: :github_plugins
gem "jekyll-relative-links", group: :github_plugins
gem "jemoji", group: :github_plugins
gem "kramdown-parser-gfm", group: :github_plugins
gem "kramdown", group: :github_plugins