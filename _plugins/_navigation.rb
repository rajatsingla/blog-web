module Jekyll
  module Navigation
    def build_navs(input)
      lp='<div class="raja-navs" id="nav">'
      lp+='<ul>'
      lp+="<li><a href=#top>Content</a></li>"
      reg=/id="(.*?)"/
      matches=input.scan(reg)
      matches.each { |e|
        e=e[0]
        lp+="<li><a href=##{e}>#{e.gsub(/-/,' ')}</a></li>"
      }
      lp+='</ul>'
      lp+='</div>'
    end
  end
end




Liquid::Template.register_filter(Jekyll::Navigation)
