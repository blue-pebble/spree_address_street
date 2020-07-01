Rails.application.config.to_prepare do
  Spree::PermittedAttributes.address_attributes << :street << :number << :number_postfix
  Spree::PermittedAttributes.address_attributes.uniq!

  Kernel::silence_warnings {
    Spree::Address::ADDRESS_FIELDS = %w[
      firstname lastname
      company
      street number number_postfix
      zipcode
      city
      state
      country
      phone
    ]
  }
end