require "awesome_print"
class Todo < ApplicationRecord
  has_many :items, dependent: :destroy

  # validations
  validates_presence_of :title, :created_by

  def self.a
    data = [ false, 42, %w(forty two), { :now => Time.now, :class => Time.now.class, :distance => 42e42 } ]
  end
end
