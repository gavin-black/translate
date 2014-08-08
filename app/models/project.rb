class Project < ActiveRecord::Base

  attr_accessible :name, :avatar, :translated, :edited, :total, :patch
end
