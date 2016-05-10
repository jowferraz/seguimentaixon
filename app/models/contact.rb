class Contact < ActiveRecord::Base
  belongs_to :user
 
def self.search(search)
  if search
    where(["nome LIKE ?", "%#{search}%"])
  else
    all
  end
end

end
