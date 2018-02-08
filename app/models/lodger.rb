# frozen_string_literal: true

class Lodger < ActiveRecord::Base
  belongs_to :flat
end
