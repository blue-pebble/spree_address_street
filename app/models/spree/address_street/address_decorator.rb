# frozen_string_literal: true

module Spree::AddressStreet::AddressDecorator
  def self.prepended(base)
    base.before_validation :build_address1
    base.validates :number, presence: true
  end

  def build_address1
    self.address1 = "#{street} #{number} #{number_postfix}".strip
  end

  ::Spree::Address.prepend(self)
end
