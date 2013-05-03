class ApplicationController < ActionController::Base
  protect_from_forgery
 before_filter :set_locale

 def default_url_options(options={})
    logger.debug "default_url_options is passed options: #{options.inspect}\n"
    { :locale => I18n.locale }
  end

def set_locale
	if (params[:locale])
		I18n.locale = params[:locale]
	else
		 I18n.locale=I18n.default_locale
	end	
end

 
end
