class Admission < ApplicationRecord
  validates :name, presence: true, length: { minimum: 3 }
  # validates :dob, :presence => {message: "dob must be filled"}
  # validates :city, :presence => {message: "city must be filled"}
  # validates :reg_no, :presence => {message: "reg_no must be filled"}
  # errors.add(:name, "cannot contain the characters !@#%*()_-+=")
  @@current_user = false
  def self.current_user
    @@current_user
  end

  def self.set_current_user
  @@current_user = true
  end

  def self.unset_current_user
    @@current_user = false
  end
end
