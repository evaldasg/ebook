require 'spec_helper'

describe "Viewing the list of students" do
  it "shows the students" do
    pair_students = create_pair(:student)

    visit students_url

    expect(page).to have_text(pair_students[0].first_name)
    expect(page).to have_text(pair_students[0].last_name)
    expect(page).to have_text(pair_students[1].first_name)
    expect(page).to have_text(pair_students[1].last_name)
  end

end
