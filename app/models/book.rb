class Book < ActiveRecord::Base
	belongs_to :author
	validates :title, presence:true	

def self.search(search)
  if search
    find(:all, :conditions => ['name LIKE ?', "%#{search}%"])
  else
    find(:all)
  end
end


end
