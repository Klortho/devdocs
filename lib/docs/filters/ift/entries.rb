module Docs
  class Ift
    class EntriesFilter < Docs::EntriesFilter

      # This gets the name for a page from its first <h1>. That name
      # appears in the left nav pane.
      # This also removes any pilcrow (¶, used for permalinks)
      def get_name
        at_css('h1').content.remove("\u{00b6}")
      end

      def get_type
        case subpath
        when /\Aentrezpageobjects/
          'entrezpageobjects'
        when /\Aift/
          'ift'
        when /\Ancbipageobjects/
          'ncbipageobjects'
        end
      end

    end
  end
end
