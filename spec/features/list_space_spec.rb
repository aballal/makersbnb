feature 'Listing a space' do
  scenario 'I can list my space' do
    visit('spaces/new')
    expect(page.status_code).to eq 200
    expect(page).to have_content('List a Space')
    list_space
    expect(current_path).to eq '/spaces'
    # check database content
    # check page content
  end
end
