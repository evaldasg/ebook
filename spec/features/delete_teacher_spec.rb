require 'spec_helper'

describe "Deleting a teacher" do
  it "destroys the teacher and shows the teacher listing without the deleted teacher" do
    teacher = create(:teacher)

    visit teacher_path(teacher)

    click_link 'Delete'

    expect(current_path).to eq(teachers_path)
    expect(page).not_to have_text(teacher.first_name)
  end
end
