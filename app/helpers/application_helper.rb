module ApplicationHelper
  def image_helper(url)
    if url.present?
      if Rails.application.assets.find_asset(url) != nil
        url
      else
        'https://placehold.co/600x400/EEE/31343C'
      end
    else
      'https://placehold.co/600x400/EEE/31343C'
    end
  end
end
