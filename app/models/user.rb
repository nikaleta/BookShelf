class User < ActiveRecord::Base
  has_many :books
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable

    ratyrate_rater
    ROLES = %w[admin moderator guest]

end
