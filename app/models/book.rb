class Book < ActiveRecord::Base
	belongs_to :author
	belongs_to :user
	validates :title, presence:true
	validates :author_id, presence:true

	has_attached_file :cover, styles: {small: "500*500#"}
	validates_attachment_presence :cover
	validates_attachment_size :cover, :less_than => 5.megabytes
	validates_attachment_content_type :cover, :content_type => ['image/jpeg', 'image/png']

	def self.search(search)
    if search
			where('title ILIKE ? OR description ILIKE ? OR authors.name ILIKE ?', "%#{search}%", "%#{search}%", "%#{search}%")
			.joins('LEFT JOIN authors ON books.author_id = authors.id')
    else
      all
    end
  end

end
