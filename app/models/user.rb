class User < ActiveRecord::Base
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable
  after_create :send_email
  has_many :advertisements

  private

  def send_email
  	UserMailer.welcome_email(self.email).deliver
  end
end
