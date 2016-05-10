class Search < ActiveRecord::Base
  belongs_to :user
  
  def search_contacts
      
      contacts = Contact.all
      
      contacts = contacts.where(["nome LIKE ?", "%#{keywords}%"]) if keywords.present?
      contacts = contacts.where(["email LIKE ?", "%#{email}%"]) if email.present?
      contacts = contacts.where(["cargo LIKE ?", "%#{cargo}%"]) if cargo.present?
     # contacts = contacts.where(["idade  BETWEEN ?", "%#{idade}%" "AND" "%#{idade}%"]) if idade.present?
      contacts = contacts.where(["idade  LIKE ?", "%#{idade}%"]) if idade.present?
      
      return contacts
  end
end
