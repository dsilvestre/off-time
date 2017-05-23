module ApplicationHelper
  def user_image_path(user)
    if user.photo?
      cl_image_path user.photo
    else
      ""
    end
  end
end
