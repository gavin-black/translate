class Section < ActiveRecord::Base
  belongs_to :project
  attr_accessible :scenario, :title, :status, :project
end
