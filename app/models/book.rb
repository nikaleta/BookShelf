class Book < ActiveRecord::Base
	belongs_to :author
	belongs_to :user
	validates :title, presence:true
	validates :author_id, presence:true

	def self.search(search)
    if search
			where('title ILIKE ? OR description ILIKE ? OR authors.name ILIKE ?', "%#{search}%", "%#{search}%", "%#{search}%")
			.joins('LEFT JOIN authors ON books.author_id = authors.id')
    else
      all
    end
  end

end
