require 'rails_helper'

describe "Static pages" do

  subject { page }

  describe "Home page" do
    before { visit root_path }

    it { should have_content('House Work') }
    it { should have_title("House Work | Home") }
    it { should have_link('家事一覧', href: house_works_path)}

  end
end
