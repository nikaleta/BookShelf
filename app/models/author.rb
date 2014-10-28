class Author < ActiveRecord::Base
	has_many :books

def self.search(search)
  if search
    find(:all, :conditions => ['name ILIKE ?', "%#{search}%"])
  else
    find(:all)
  end
end


end
