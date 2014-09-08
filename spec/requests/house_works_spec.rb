require 'rails_helper'

describe "House Works pages" do

  subject { page }

  describe "House Works page" do
    before { visit house_works_path }

    it { should have_content('家事一覧') }

  end
end