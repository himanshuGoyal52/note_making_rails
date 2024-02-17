class User < ApplicationRecord
    has_secure_password
    has_many :notes, dependent: :destroy
    has_many :shared_notes, dependent: :destroy
    has_many :note_versions, dependent: :destroy
  end