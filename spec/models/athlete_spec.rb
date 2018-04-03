require 'rails_helper'

RSpec.describe Athlete, type: :model do
  describe 'DB Table' do
    it {is_expected.to have_db_column :name}
    it {is_expected.to have_db_column :home}
    it {is_expected.to have_db_column :age}
  end

  describe 'Factory' do
    it 'to be vaild' do
      expect(create(:athlete).valid?).to eq true
    end
  end
end
