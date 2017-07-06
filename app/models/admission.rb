class Admission < ApplicationRecord
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
