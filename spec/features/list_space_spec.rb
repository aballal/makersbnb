feature 'Listing a space' do
  before do
    navigate_to_list_a_space
  end

  scenario 'A user can navigate to List a Space' do
    expect(current_path).to eq '/spaces/new'
    expect(page).to have_content('List a Space')
  end

  scenario 'A user can list a space with name, description, price per night,
            available from date and available to date' do
    # Check table count and each column for the added row
    expect { list_space }.to change(Space, :count).by(1)
    space = Space.last
    expect(space.name).to eq("Maya's Inn")
    expect(space.description).to eq('Spacious BnB in the heart of the city')
    expect(space.price_per_night).to eq(90)
    expect(space.available_from).to eq(Date.parse('01-08-2017'))
    expect(space.available_to).to eq(Date.parse('31-08-2017'))
    # Check page and each field for each space
    expect(current_path).to eq '/spaces'
    expect(page).to have_content(page_content(Space.all))
  end
end
