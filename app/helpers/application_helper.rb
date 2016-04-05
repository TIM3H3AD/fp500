module ApplicationHelper

  def full_title(title)
    default_title = "XOtoZ"
    if title.empty?
      default_title
    else
      title + " | " + default_title
    end
  end
end