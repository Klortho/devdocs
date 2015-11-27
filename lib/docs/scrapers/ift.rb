module Docs
  class Ift < FileScraper
    self.name = 'IFT'
    self.type = 'sphinx'
    self.version = '0.0.1'
    self.dir = '/Users/maloneyc/work/devdocs/ift-docs-dest'
    self.base_url = 'http://iwebdev2/core/ift/'
    self.root_path = 'index.html'
    self.links = {
      home: 'http://iwebdev2/core/ift/ift/index.html'
    }

    # These links will be rendered at the top of the main page for the 
    # docset, as "Homepage" and "Source code"
    self.links = {
      home: 'http://iwebdev2.be-md.ncbi.nlm.nih.gov/core/ift/',
      code: 'https://stash.ncbi.nlm.nih.gov/projects/IFT'
    }

    html_filters.push 'ift/entries', 'ift/clean_html'

    # Skip individual files
    #options[:skip] = %w(
    #  search.html)

    # Skip sets of files, by pattern
    options[:skip_patterns] = [
      /\b_sources\//, /\bgenindex\.html/, /\bsearch\.html/, 
      /\b_modules\//, /\bpy-modindex\.html/]

    options[:attribution] = <<-HTML
      This documentation (IFT) is in the public domain. It was produced 
      by NCBI.
    HTML

  end
end
