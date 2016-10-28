module Jekyll
  module TagTimes
    def tag_times(input)
      h=Hash.new
      lp=""
      input=input.split(',')
      for a in input
        if h.has_key?(a)
          h[a]+=1
        else
          h[a]=1
        end
      end
      h.each do |key, value|
        lp+="<li><a href='/tag/#{key}' class='tag'>"
        lp+="<span class='term'>#{key}</span>"
        lp+="<span class='count'>#{value}</span></a>"
        lp+="</li>"
      end
      lp
    end
  end
end

Liquid::Template.register_filter(Jekyll::TagTimes)
