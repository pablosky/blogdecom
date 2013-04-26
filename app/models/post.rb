class Post < ActiveRecord::Base
  attr_accessible :content, :name, :title , :file , :file2, :file3 , :category



  mount_uploader :file, AvatarUploader
    mount_uploader :file2, AvatarUploader
      mount_uploader :file3, AvatarUploader


extend FriendlyId
  friendly_id :title, use: :slugged
end
