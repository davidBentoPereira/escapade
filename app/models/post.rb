# frozen_string_literal: true

class Post < ApplicationRecord
  PENDING = 'pending'
  REJECTED = 'rejected'
  VALIDATED = 'validated'

  STATUS = [PENDING, REJECTED, VALIDATED].freeze

  STATUS.each do |status|

    scope status, -> { where(status: status) }

    define_method "#{status}?" do
      self.status == status
    end

    define_method "#{status}!" do
      self.status = status
      save
    end
  end

end
