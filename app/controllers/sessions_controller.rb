class SessionsController
  def create
    user = User.find_by(email: params[:email])
    if user.present? && user.authenticate(params[:password])
      sign_in(user)
      redirect_to notnice_path
    else
      redirect_to log_in_path
    end
  end

  def destroy
    sign_out
    redirect_to notnice_pat
  end
end
