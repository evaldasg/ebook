require 'spec_helper'

describe "A teacher" do
  it "has many groups" do
    # teacher = create(:teacher)

    # group1 = build(:group, teacher: teacher)
    # group2 = build(:group, teacher: teacher)

    # expect(teacher.groups).to include(group1)
    # expect(teacher.groups).to include(group2)
  end

  it "deletes associated groups" do
    # teacher = create(:teacher)

    # create(:group, teacher: teacher)

    # expect {
    #   teacher.destroy
    # }.to change(Group, :count).by(-1)
  end
end
