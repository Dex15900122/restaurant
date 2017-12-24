class Rest < ApplicationRecord

  validates_presence_of :name
  mount_uploader :photo, PhotoUploader

  belongs_to :user
  has_many :blogs
  has_many :commments





end
