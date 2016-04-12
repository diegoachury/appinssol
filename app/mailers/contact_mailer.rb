class ContactMailer < ActionMailer::Base
  default from: "comercial@inssol.com.co"

 	 def contact_email(contact)
 	 	@contacto = contact
  		mail(:to => contact.email, :subject => "Solicitud de Contacto",  :bcc => ["comercial@inssol.com.co", "Solicitud de Contacto <comercial@inssol.com.co>"], :cc => "achurycompany@gmail.com")
  end
   def quote_email(quote)
 	 	@quote = quote
  		mail(:to => quote.email, :subject => "Solicitud de Cotizar",  :bcc => ["comercial@inssol.com.co", "Solicitud de Cotizar <comercial@inssol.com.co>"], :cc => "achurycompany@gmail.com")
  end
  
end
