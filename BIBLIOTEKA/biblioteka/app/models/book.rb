class Book < ActiveRecord::Base
  attr_accessible :author, :isbn, :price, :publisher, :title
end
