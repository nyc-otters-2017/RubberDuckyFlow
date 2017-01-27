class Question < ActiveRecord::Base
  belongs_to :user
  has_many :comments, as: :commentable
  has_many :votes, as: :votable
  has_many :answers
  validates :title, :question, presence: true


  def self.ordered_json
    order("created_at DESC").limit(10).to_json
  end

end
