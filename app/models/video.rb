class Video < ActiveRecord::Base
  attr_accessible :name, :url

  validates :url, presence: true
end
