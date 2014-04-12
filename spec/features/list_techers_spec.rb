require 'spec_helper'

describe "Viewing the list of teachers" do
  it "shows the teachers" do
    pair_teachers = create_pair(:teacher)

    visit teachers_url

    expect(page).to have_text(pair_teachers[0].first_name)
    expect(page).to have_text(pair_teachers[0].last_name)
    expect(page).to have_text(pair_teachers[1].first_name)
    expect(page).to have_text(pair_teachers[1].last_name)
  end
end
