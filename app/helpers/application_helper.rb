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
end
