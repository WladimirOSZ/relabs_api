class Exam < ApplicationRecord
  belongs_to :patient
  belongs_to :doctor
  belongs_to :lab
  has_many :exam_result
end
