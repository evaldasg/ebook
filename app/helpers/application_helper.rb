module ApplicationHelper
  def nav_link_to(text, url)
    classes = ['button']
    classes << 'active' if current_page?(url)
    link_to(text, url, class: classes.join(' '))
  end

  def top_nav_link_to(text, url)
    if current_page?(url)
      content_tag(:li, link_to(text, url), class: 'active')
    else
      content_tag(:li, link_to(text, url))
    end
  end

  def glyph(*names)
    content_tag :i, nil, class: names.map{|name| "glyphicon glyphicon-#{name.to_s.gsub('_','-')}" }
  end

  def dropdown_caret
    content_tag :b, nil, class: "caret"
  end

  # def dropdown_caret_link_to(text,url)
  #   link_to(url, data: { toggle: "dropdown"}, class: "dropdown-toggle") do
  #     "#{text}" content_tag(:b, class: "caret")
  #   end
  # end
end
