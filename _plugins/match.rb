module Jekyll
  module Tags
    class MatchTag < Liquid::Tag
      def initialize(tag, name, tokens)
        super
        @name = name
      end

      def render(context)
        return `_plugins/match.py "#{@name}" "#{context.environments.first["page"]["path"]}"`
      end
    end
  end
end

Liquid::Template.register_tag('match', Jekyll::Tags::MatchTag)
