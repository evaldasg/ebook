require 'spec_helper'

describe "Viewing the list of disciplines" do
  it "shows the disciplines" do
    pair_disciplines = create_pair(:discipline)

    visit disciplines_url

    expect(page).to have_text(pair_disciplines[0].name)
    expect(page).to have_text(pair_disciplines[1].name)
  end
end
