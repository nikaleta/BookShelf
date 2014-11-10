class Book < ActiveRecord::Base
	belongs_to :author
	belongs_to :user
	has_many :book_genres, dependent: :destroy
	has_many :genres, :through => :book_genres
	ratyrate_rateable 'title'
	validates :title, presence:true
	validates :author_id, presence:true

	has_attached_file :cover, :default_url => "cover.jpg", :styles => {:medium => "300*300>", :thumb => "100*100>"}
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


def authors
	if request.post? then
		@authors = params[:search]
	end
end
end
