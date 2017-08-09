module SpaceHelpers
  def navigate_to_list_a_space
    visit('/')
    click_on 'List a Space'
  end

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

  def page_content(spaces)
    page_content = spaces.map do |space|
      "#{space.name}\n
      #{space.description}\n
      Price per Night: £#{'%.2f' % space.price_per_night} |
      Available From: #{Date.parse(space.available_from.to_s).strftime('%d-%b-%Y')} |
      Available To: #{Date.parse(space.available_to.to_s).strftime('%d-%b-%Y')}"
    end
    page_content.join(' ')
  end
end
