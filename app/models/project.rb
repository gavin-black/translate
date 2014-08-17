class Project < ActiveRecord::Base

  attr_accessible :name, :avatar, :status, :translated, :edited, :total, :patch
  has_many :sections
end
