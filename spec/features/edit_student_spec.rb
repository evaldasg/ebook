require 'spec_helper'

describe "Editing a student" do
  it "updates the student and shows the student's updated details" do
    student = create(:student)

    visit student_url(student)

    click_link 'Edit'

    expect(current_path).to eq(edit_student_path(student))

    expect(find_field("First name").value).to eq(student.first_name)
    expect(find_field("Last name").value).to eq(student.last_name)

    fill_in 'First name', with: "New name"

    click_button "Update Student"

    expect(current_path).to eq(student_path(student))

    expect(page).to have_text("New name")
  end
end
