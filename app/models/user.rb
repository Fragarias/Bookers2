class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable

  has_one_attached :image #ActiveStorage
  has_many :books, dependent: :destroy #アソシエーション１用

  def get_image
    if image.attached?
      image
    else
      'no_image.jpg'
    end
  end

end
