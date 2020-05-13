# frozen_string_literal: true

class User < ApplicationRecord
  ROLES = %w(admin it_support employee).freeze

  validates :role, inclusion: { in: ROLES }
  has_one :avatar, dependent: :destroy

  accepts_nested_attributes_for :avatar, allow_destroy: true
end
