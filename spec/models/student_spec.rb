# == Schema Information
#
# Table name: students
#
#  id         :integer          not null, primary key
#  name       :string(255)
#  email      :string(255)
#  nickname   :string(255)
#  created_at :datetime
#  updated_at :datetime
#

require 'spec_helper'

describe Student do
  it "orders by name" do
    andy = Student.create!(name: "Andy Smith", email: "andy@foo.com", nickname: "Andy")
    john = Student.create!(name: "John Doe", email: "john@foo.com", nickname: "John")

    expect(Student.order("name")).to eq([andy, john])
  end
end
