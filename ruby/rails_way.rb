def has_any_courses?
  current_user.courses.size > 0
end


def user
  @user || = User.find(params[:id])
end

