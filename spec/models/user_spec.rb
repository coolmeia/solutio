require 'model_helper'
require 'app/models/user'

describe User do
  it { should have_many :solutions }

  it { should validate_presence_of :name }
end
