Rails.application.config.middleware.use OmniAuth::Builder do
  provider :facebook, ENV['FACEBOOK_KEY'], ENV['FACEBOOK_SECRET'],
  { 
  scope: 'email', display: 'popup',   # from https://github.com/mkdynamic/omniauth-facebook
  image_size: 'large'
}
end