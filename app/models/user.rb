class User < ActiveRecord::Base
  has_and_belongs_to_many :lecons
  belongs_to :moniteur, class_name: "user", foreign_key: 'user_id'
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable
         
  enum role: [:admin, :teacher, :student]
  
  
end
