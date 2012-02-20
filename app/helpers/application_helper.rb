module ApplicationHelper

  def logo
    image_tag("logo.png", alt: "Sample App", class: "round")
  end

  # Returns the full title on a per-page basis.
  def full_title(page_title)
    base_title = "Ruby On Rails Tutorial"
    if page_title.empty?
      base_title
    else
      "#{page_title} | #{base_title}"
    end
  end

end
