class Blog < ApplicationRecord

belongs_to :user
belongs_to :rest
has_many :comments
mount_uploader :photos, BlogUploader
validates_presence_of :title
end
