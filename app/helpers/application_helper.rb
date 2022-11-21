module ApplicationHelper
  def admin?
    return if current_user&.admin?

    respond_to do |format|
        format.json { render json: 'Only for Admins' }
      end
  end
end
