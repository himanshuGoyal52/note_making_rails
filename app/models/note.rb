class Note < ApplicationRecord
    belongs_to :user
    has_many :shared_notes, dependent: :destroy
    has_many :note_versions, dependent: :destroy
  end