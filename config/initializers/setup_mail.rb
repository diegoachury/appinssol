ActionMailer::Base.smtp_settings = {
  :address              => "smtp.gmail.com",
  :port                 => 587,
  :domain               => "lubu.com.co",
  :user_name            => "dachury@lubu.com.co",
  :password             => "angelnegro",
  :authentication       => "plain",
  :enable_starttls_auto => true
  }