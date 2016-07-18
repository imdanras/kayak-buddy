class AuthController < ApplicationController
  
  def callback
    provider_user = request.env['omniauth.auth']
   # render json: provider_user

    # local_user = User.find_by_email(proivder_user['info']['email'])
    # if local_user

    #   local_user.update()

    # else
    user = User.find_or_create_by(provider_id: provider_user['uid'], provider_name: provider_user['provider']) do |u|

      u.provider_token = provider_user['credentials']['token']
      u.name = provider_user['info']['name']
      u.email = provider_user['info']['email']
      u.picture = provider_user['info']['image']
      u.password = 'TJIJUfsd708u3jkhj'
      u.password_confirmation = 'TJIJUfsd708u3jkhj'
    end
  # end
  # puts user.inspect
    user.save!

    session[:user_id] = user.id
    redirect_to root_path

  # render json: request.env[‘omniauth.auth’]
  end

  def logout
    session[:user_id] = nil
    redirect_to root_path
  end

  def failure
    #TODO: display error page
    # render plain: 'this is a failure'
    flash[:notice] = params[:message] # if using sinatra-flash or rack-flash
  redirect_to root_path
  end


end
