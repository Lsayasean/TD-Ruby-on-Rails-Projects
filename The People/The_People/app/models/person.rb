class Person < ApplicationRecord
  #http://www.rymcmahon.com/articles/2
  def self.search(search)
    where("name LIKE ? OR bio LIKE ? OR gender LIKE ?", "%#{search}%", "%#{search}%", "%#{search}%")
  end
end
