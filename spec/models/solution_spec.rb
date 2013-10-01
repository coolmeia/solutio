require 'model_helper'
require 'app/models/solution'
require 'app/models/user'

describe Solution do
  it { should belong_to :user }

  it { should validate_presence_of :name }
  it { should validate_presence_of :description }
  it { should validate_presence_of :category }
  it { should validate_presence_of :user }
end
