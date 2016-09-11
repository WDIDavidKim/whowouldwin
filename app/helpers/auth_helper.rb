module AuthHelper
  def auth_through_user
    current_user != nil && current_user.id == @user.id
  end

  def auth_through_discussion
     current_user != nil && current_user.id == @discussion.user.id
  end

  def auth_through_comment
     current_user != nil && current_user.id == @comment.user.id
  end

  def auth_fail(reason, redirect_path)
    flash[:notice] = reason
    redirect_to redirect_path
  end
end
