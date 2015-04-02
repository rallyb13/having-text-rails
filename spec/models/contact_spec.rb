require 'rails_helper'

describe Contact do
  it { should belong_to :user }
  it { should validate_presence_of :name }
  it { should validate_presence_of :phone }
  it { should validate_presence_of :email }

end
