class Comment < ApplicationRecord

belongs_to :user
belongs_to :blog

validates :user_id, presence: true
validates :commenter, presence:true ,length:{maximum: 300}
end
