require 'spec_helper'

describe "A student" do
  it "has a initial disciplines until 3rd class" do
    student = create(:student, klass: 2)

    expect(student.initial_disciplines?).to be_true
  end

  it "has a main disciplines from 4th class" do
    student = create(:student, klass: 4)

    expect(student.main_disciplines?).to be_true
  end

  it "is a MMUP student" do
    student = create(:student, klass: 8)

    expect(student.mmup?).to be_true
  end

end
