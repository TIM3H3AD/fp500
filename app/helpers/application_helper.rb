module ApplicationHelper

  def full_title(title)
    default_title = "The F & P"
    if title.empty?
      default_title
    else
      title + " | " + default_title
    end
  end
end