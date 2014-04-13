require 'spec_helper'

describe "Editing a teacher" do
  it "updates the teacher and shows the teacher's updated details" do
    teacher = create(:teacher)

    visit teacher_url(teacher)

    click_link 'Edit'

    expect(current_path).to eq(edit_teacher_path(teacher))

    expect(find_field("First name").value).to eq(teacher.first_name)
    expect(find_field("Last name").value).to eq(teacher.last_name)

    fill_in 'First name', with: "New name"

    click_button "Update Teacher"

    expect(current_path).to eq(teacher_path(teacher))

    expect(page).to have_text("New name")
  end
end
