module ApplicationHelper
  def image_helper(url)
    if !url
      'https://placehold.co/600x400/EEE/31343C'
    else
      url
    end
  end
end
