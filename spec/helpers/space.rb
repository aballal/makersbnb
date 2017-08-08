module SpaceHelpers
  def list_space(name: "Maya's Inn",
                 description: 'Spacious BnB in the heart of the city',
                 price_per_night: '90',
                 available_from: '01/08/2017',
                 available_to: '31/08/2017')
    visit('/spaces/new')
    fill_in 'name', with: name
    fill_in 'description', with: description
    fill_in 'price_per_night', with: price_per_night
    fill_in 'available_from', with: available_from
    fill_in 'available_to', with: available_to
    click_button 'List my Space'
  end
end
