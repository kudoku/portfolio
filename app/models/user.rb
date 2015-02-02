class User < ActiveRecord::Base
  has_many :posts
  has_many :projects

  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable,
         :omniauthable, :omniauth_providers => [:google_oauth2]


  # def self.find_for_google_oauth2(access_token, signed_in_resource=nil)
  #     data = access_token.info
  #     user = User.where(:email => data["email"]).first

  #     # Uncomment the section below if you want users to be created if they don't exist
  #     unless user
  #         user = User.create(name: data["name"],
  #            email: data["email"],
  #            password: Devise.friendly_token[0,20],
  #            username: data["name"]
  #         ) 
  #     end
  #     user
  # end

  def self.from_omniauth(auth)
    where(provider: auth.provider, uid: auth.uid).first_or_create do |user|
      user.email = auth.info.email
      user.password = Devise.friendly_token[0,20]
      user.username = auth.info.name   # assuming the user model has a name
      # user.avatar_file_name = URI.parse(auth.info.image) # assuming the user model has an image
      # user.avatar_from_url(auth.info.image) # assuming the user model has an image
    end
  end

end
