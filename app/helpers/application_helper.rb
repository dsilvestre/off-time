module ApplicationHelper
  def user_image_path(user)
    if user.photo?
      cl_image_path user.photo, height: 50, width: 50, crop: :fit
    else
      ""
    end
  end
end
