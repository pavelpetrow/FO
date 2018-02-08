# frozen_string_literal: true

class Payment < ActiveRecord::Base
  belongs_to :lodger
end
