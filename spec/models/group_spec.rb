require 'spec_helper'

describe "A group" do
  it "belongs to a teacher" do
    teacher = create(:teacher)

    group = build(:group, teacher: teacher)

    expect(group.teacher).to eq(teacher)
  end

  it "is valid with facroty atributes" do
    group = build(:group)

    expect(group.valid?).to be_true
  end

  it "requires a name" do
    group = Group.new(name: "")

    expect(group.valid?).to be_false
    expect(group.errors[:name].any?).to be_true
  end

  it "requires a type" do
    group = Group.new(description: "")

    expect(group.valid?).to be_false
    expect(group.errors[:description].any?).to be_true
  end

end
