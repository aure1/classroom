class Course
  include Mongoid::Document
  field :name, type: String

  has_many :homeworks
  has_one :project
end
