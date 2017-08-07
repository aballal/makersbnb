feature 'Listing a space' do
  scenario 'I can list my space' do
    visit('spaces/new')
    expect(page.status_code).to eq 200
    save_and_open_page
    expect(page).to have_content('List a Space')
  end
end
