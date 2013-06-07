require 'spec_helper'

#As a user
#I want to see if Obama is tracking me
#So I can know if my privacy has been compromised 
#by government overreach

describe 'Privacy Checker' do

  it 'lets me input my info to check it against govt data' do
    visit index_path
    fill_in "Name", :with => "Conner Smith"
    click_button "Has Obama Targeted Me?"
    expect(page).to have_content('YES!')
  end

  it 'lets you know that everyone has their privacy compromised' do
    visit index_path
    click_button "Has Obama Targeted Me?"
    expect(page).to have_content('YES!')
  end

end

