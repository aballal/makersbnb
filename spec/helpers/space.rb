module SpaceHelpers
  def list_space
    visit('/spaces/new')
    fill_in 'name', with: 'Jurys Inn'
    fill_in 'description', with: 'Contemporary spacious hotel in the heart of the city'
    fill_in 'price_per_night', with: '90'
    fill_in 'available_from', with: '01/08/2017'
    fill_in 'available_to', with: '31/08/2017'
    click_button 'List my Space'
  end
end
