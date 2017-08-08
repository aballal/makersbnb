feature 'Listing a space' do
  scenario 'I can list my space' do
    visit('spaces/new')
    expect(page.status_code).to eq 200
    expect(page).to have_content('List a Space')
    expect { list_space }.to change(Space, :count).by(1)
    expect(current_path).to eq '/spaces'
    expect(page).to have_content("Maya's Inn")
  end
end
