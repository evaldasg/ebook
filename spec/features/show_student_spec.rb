require 'spec_helper'

describe "Viewing an individual student" do
  it "shows the student's details" do
    student = create(:student)

    visit student_url(student)

    expect(page).to have_text(student.first_name)
    expect(page).to have_text(student.last_name)
  end
end
