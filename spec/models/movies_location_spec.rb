require 'rails_helper'

describe MoviesLocation do

  it { should belong_to(:location) }
  it { should belong_to(:movie) }

end
