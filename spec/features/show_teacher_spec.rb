require 'spec_helper'

describe "Viewing an individual teacher" do
  it "shows the teacher's details" do
    teacher = create(:teacher)

    visit teacher_url(teacher)

    expect(page).to have_text(teacher.first_name)
    expect(page).to have_text(teacher.last_name)
  end
end
