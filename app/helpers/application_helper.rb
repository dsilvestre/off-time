module ApplicationHelper
  def user_image_path(user)
    if user.photo?
      cl_image_path user.photo, height: 100, width: 100, crop: :fit, gravity: :face
    else
      ""
    end
  end

  def equipment_image_path(equipment)
    if equipment.photo?
      cl_image_path equipment.photo, height: 100, width: 100, crop: :thumb
    else
      ""
    end
  end

  def avatar_image_path(user)
    user.facebook_picture_url || current_user.photo || image_path("profile_avatar")
  end
end

