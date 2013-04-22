class ContactMailer < ActionMailer::Base
  default from: "dachury@lubu.com.co"

 	 def contact_email(contact)
 	 	@contacto = contact
  		mail(:to => contact.email, :subject => "peticion de usuario",  :bcc => ["tiran_o@hotmail.com", "Order Watcher <watcher@example.com>"])
  end
   def quote_email(quote)
 	 	@quote = quote
  		mail(:to => quote.email, :subject => "peticion de usuario",  :bcc => ["tiran_o@hotmail.com", "Order Watcher <watcher@example.com>"])
  end
  
end
