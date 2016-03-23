require 'rails_helper'

describe Artist do
  let(:artist) { create(:artist) }

  # ----------------------------------------
  # Validations
  # ----------------------------------------

  it do
    should validate_presence_of(:name)
  end

  # ----------------------------------------
  # Associations
  # ----------------------------------------

  it do
    should have_many(:songs)
  end


  it do
    should have_many(:bookmarks).dependent(:destroy)
  end
end

