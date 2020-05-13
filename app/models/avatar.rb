# frozen_string_literal: true

class Avatar < ApplicationRecord
  FILE="Avatars Set solid Style-XX.png".freeze

  belongs_to :user
end
