module BendersHelper
  def save_bender(bender)
    session[:bender_id] = bender.id
  end

  def current_bender
    if (bender_id = session[:bender_id]) 
      @current_bender ||= Bender.find_by(id: bender_id)
    end
  end

end
