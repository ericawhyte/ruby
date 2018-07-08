class Patient < ActiveRecord::Base
  has_many :encounters

  accepts_nested_attributes_for :encounters, reject_if: proc { |attributes| attributes['visit_number', 'admitted_at', 'discharged_at', 'location', 'room', 'bed'].blank? }, allow_destroy: true

  validates :first_name, :middle_name, :mrn, presence: true
end
