class Project
  include Mongoid::Document
  field :name, type: String
  field :description, type: String

  belongs_to :course
end
