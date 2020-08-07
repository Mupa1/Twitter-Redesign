module UsersHelper
  def profile_photo(opinion)
    if opinion.Author[:Photo].nil?
      gravatar_for opinion.Author, size: 50
    else
      image_tag opinion.Author.Photo.thumb.url
    end
  end

  def cover_image
    if @user[:CoverImage].nil?
      image_tag 'https://via.placeholder.com/700x300?text=No+Cover'
    else
      image_tag @user.CoverImage.standard.url
    end
  end
end