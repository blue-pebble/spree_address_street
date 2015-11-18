Spree::Address.class_eval do

  before_validation :build_address1

  validates :number, presence: true


  def build_address1
    self.address1 = "#{street} #{number} #{number_postfix}".strip
  end

  Spree::PermittedAttributes.address_attributes << :street << :number << :number_postfix

end