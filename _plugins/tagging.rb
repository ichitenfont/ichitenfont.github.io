# Licensed under MIT License
# Original code: https://github.com/pattex/jekyll-tagging

module Jekyll

  class Tagger < Generator

    safe true

    attr_accessor :site

    @types = [:page, :feed]

    class << self; attr_accessor :types, :site; end

    def generate(site)
      self.class.site = self.site = site

      generate_tag_pages
    end

    private

    # Generates a page per tag and adds them to all the pages of +site+.
    # A <tt>tag_page_layout</tt> have to be defined in your <tt>_config.yml</tt>
    # to use this.
    def generate_tag_pages
      active_tags.each { |tag, posts| new_tag(tag, posts) }
    end

    def new_tag(tag, posts)
      self.class.types.each { |type|
        if layout = site.config["tagging"]["#{type}_layout"]
          data = { 
            'layout' => layout, 
            'posts' => posts.sort.reverse!, 
            'tag' => tag,
            'title' => (site.config["tagging"]["#{type}_title"] || "")  + tag
          }
          data.merge!(site.config["tagging"]["#{type}_data"] || {})

          name = yield data if block_given?
          name ||= tag

          tag_dir = site.config["tagging"]["#{type}_dir"]
          tag_dir = File.join(tag_dir, (pretty? ? name : ''))

          page_name = "#{pretty? ? 'index' : name}#{site.layouts[data['layout']].ext}"

          site.pages << TagPage.new(
            site, site.source, tag_dir, page_name, data
          )
        end
      }
    end

    def active_tags
      return site.tags unless site.config["tagging"]["ignored_tags"]
      site.tags.reject { |t| site.config["tagging"]["ignored_tags"].include? t }
    end

    def pretty?
      @pretty ||= (site.permalink_style == :pretty || site.config["tagging"]['permalink_style'] == 'pretty')
    end

  end

  class TagPage < Page

    def initialize(site, base, dir, name, data = {})
      self.content = data.delete('content') || ''
      self.data    = data

      super(site, base, dir[-1, 1] == '/' ? dir : '/' + dir, name)
    end

    def read_yaml(*)
      # Do nothing
    end

  end

  module TaggingFilters

    def tag_link(tag, url = tag_url(tag), html_opts = nil)
      html_opts &&= ' ' << html_opts.map { |k, v| %Q{#{k}="#{v}"} }.join(' ')
      %Q{<a href="#{url}"#{html_opts}>#{tag}</a>}
    end

    def tag_url(tag, type = :page, site = Tagger.site)
      url = File.join('', site.config["baseurl"].to_s, site.config["tagging"]["#{type}_dir"], ERB::Util.u(tag))
      site.permalink_style == :pretty || site.config["tagging"]['permalink_style'] == 'pretty' ? url << '/' : url << '.html'
    end

    def tags(obj)
      tags = obj['tags'].dup
      tags.map! { |t| t.first } if tags.first.is_a?(Array)
      tags.map! { |t| tag_link(t, tag_url(t), :rel => 'tag') if t.is_a?(String) }.compact!
      tags.join(', ')
    end

    def keywords(obj)
      return '' if not obj['tags']
      tags = obj['tags'].dup
      tags.join(',')
    end

    def active_tag_data(site = Tagger.site)
      return site.config["tagging"]['data'] unless site.config["tagging"]["ignored_tags"]
      site.config["tagging"]["data"].reject { |tag, set| site.config["tagging"]["ignored_tags"].include? tag }
    end
  end

end

Liquid::Template.register_filter(Jekyll::TaggingFilters)