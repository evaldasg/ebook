require 'spec_helper'

describe "Creating a new teacher" do
  it "saves the teacher and shows the new teacher's details" do
    visit teachers_url

    find('li', text: 'Mokytojai').click_link("Sukurti naują")

    expect(current_path).to eq(new_teacher_path)

    fill_in 'First name', with: 'Birute'
    fill_in 'Last name', with: 'Birutele'
    fill_in 'Age', with: '42'
    fill_in 'Experience', with: '25'
    fill_in 'Speciality', with: 'Styginiai'

    click_button 'Create Teacher'

    expect(current_path).to eq(teacher_path(Teacher.last))

    expect(page).to have_text('Birute')
  end
end
