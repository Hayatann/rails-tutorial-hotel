class Hotel < ApplicationRecord
  def self.ransackable_attributes(auth_object = nil)
    if auth_object == :admin
      super
    else
      super & %w(name prefecture)
    end
  end
  mount_uploader :picture, PictureUploader
  has_and_belongs_to_many :prefectures
  has_many :reviews
  has_many :reservations
  # private_class_method :ransackable_attributes
end
