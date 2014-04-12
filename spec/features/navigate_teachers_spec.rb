require 'spec_helper'

describe "Navigating teachers" do
  it "allows navigation from the detail page to the listing page" do
    teacher = create(:teacher)

    visit teacher_url(teacher)

    click_link "Mokytojai"

    expect(current_path).to eq(teachers_path)
  end

  it "allows navigation from the listing page to the detail page" do
    teacher = create(:teacher)

    visit teachers_url

    click_link teacher.last_name

    expect(current_path).to eq(teacher_path(teacher))
  end
end
