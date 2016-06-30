# == Schema Information
#
# Table name: comments
#
#  id         :integer          not null, primary key
#  content    :text
#  user_id    :integer
#  post_id    :integer
#  created_at :datetime         not null
#  updated_at :datetime         not null
#

class Comment < ApplicationRecord
  belongs_to :user
  belongs_to :post

  default_scope -> { order(:updated_at).reverse_order }

  validates :content, presence: true, length: { maximum: 255 }
end
