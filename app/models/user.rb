class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable

	has_many :user_songs
 	has_many :users, through: :user_songs

  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable



	enum role: {admin: 0, normal: 1, guest:2}
end
