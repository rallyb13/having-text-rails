require 'rails_helper'

describe User do
  it { should have_many :messages }
  it { should have_many :contacts }
end
