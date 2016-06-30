# == Schema Information
#
# Table name: posts
#
#  id         :integer          not null, primary key
#  title      :string
#  content    :text
#  user_id    :integer
#  created_at :datetime         not null
#  updated_at :datetime         not null
#

class Post < ApplicationRecord
  belongs_to :user

  has_many :comments, dependent: :destroy

  has_many :taggings, dependent: :destroy
  has_many :tags, through: :taggings

  default_scope -> { order(:updated_at).reverse_order }
  
  validates :title, presence: true
  validates :content, presence: true, length: { maximum: 255 }

  # Used when a post is created or edited.
  def all_tags=(names)
    self.tags = names.split(",").map do |name|
      # If the tag does not already exist, create it.
      Tag.where(name: name.strip).first_or_create!
    end
  end

  # All the tags separated by commas.
  # Used for showing currently-set tags in a form.
  def all_tags
    self.tags.map(&:name).join(", ")
  end

  # Array of all the tag names.
  # Used for displaying tags in a view.
  def tag_names
    self.tags.map(&:name)
  end

  # Takes the name of the specified tag and search for posts associated with it.
  def self.tagged_with(name)
    Tag.find_by_name!(name).posts
  end
end
