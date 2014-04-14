require 'spec_helper'

describe "Navigating students" do
  it "allows navigation from the detail page to the listing page" do
    student = create(:student)

    visit student_url(student)

    find('li', text: 'Mokiniai').click_link("Visi")

    expect(current_path).to eq(students_path)
  end

  it "allows navigation from the listing page to the detail page" do
    student = create(:student)

    visit students_url

    click_link student.last_name

    expect(current_path).to eq(student_path(student))
  end
end
