require 'spec_helper'

describe "Deleting a discipline" do
  it "destroys the discipline and shows the discipline listing without the deleted discipline" do
    discipline = create(:discipline)

    visit disciplines_path

    click_link 'Delete'

    expect(current_path).to eq(disciplines_path)
    expect(page).not_to have_text(discipline.name)
  end
end
