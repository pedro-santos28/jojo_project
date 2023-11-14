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

  def emptyStringHelper(string, replace="N/D")
    string = string.to_s
    if !string || string.empty?
      replace
    else
      string
    end
  end
end
