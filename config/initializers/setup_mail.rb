ActionMailer::Base.smtp_settings = {
  :address              => "smtp.gmail.com",
  :port                 => 587,
  :domain               => "gmail.com",
  :user_name            => "ventasinssol@gmail.com",
  :password             => "qpugqlgntcskafym",
  :authentication       => "plain",
  :enable_starttls_auto => true
  }