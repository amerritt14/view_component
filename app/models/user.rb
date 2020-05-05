# frozen_string_literal: true

class User < ApplicationRecord
  ROLES = %w(admin it_support employee).freeze

  validates :role, inclusion: { in: ROLES }
end
