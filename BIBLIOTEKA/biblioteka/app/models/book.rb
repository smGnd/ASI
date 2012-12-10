class Book < ActiveRecord::Base
  attr_accessible :author, :cover, :isbn, :title
end
