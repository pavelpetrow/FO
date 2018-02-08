# frozen_string_literal: true

class Flat < ActiveRecord::Base
  extend Enumerize

  enumerize :status, in: %i[vacant engaged], default: :vacant

  belongs_to :house
end
