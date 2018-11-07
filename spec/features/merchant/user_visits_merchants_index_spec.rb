require 'rails_helper'

RSpec.describe "User visits merchants index page" do
  before(:each) do

  end

  describe "As a registered user" do
    it "shows the top ten sellers this month" do

      user_1 = create(:user, city: 'Denver', state: 'CO')

      merchant_1, merchant_2, merchant_3, merchant_4,
      merchant_5, merchant_6, merchant_7, merchant_8 = create_list(:merchant, 8)

      item_1 = create(:item, user: merchant_1)
      item_2 = create(:item, user: merchant_2)
      item_3 = create(:item, user: merchant_3)
      item_4 = create(:item, user: merchant_4)
      item_5 = create(:item, user: merchant_5)
      item_6 = create(:item, user: merchant_6)
      item_7 = create(:item, user: merchant_7)
      item_8 = create(:item, user: merchant_8)

      order_1 = create(:completed_order)
      order_2 = create(:completed_order)
      order_3 = create(:completed_order)
      order_4 = create(:completed_order)
      order_5 = create(:completed_order)
      order_6 = create(:completed_order)
      order_7 = create(:completed_order)
      order_8 = create(:completed_order)

      oi_1 = create(:fulfilled_order_item, quantity: 10, order: order_1, item: item_1)
      oi_2 = create(:fulfilled_order_item, quantity: 20, order: order_2, item: item_2)
      oi_3 = create(:fulfilled_order_item, quantity: 30, order: order_3, item: item_3)
      oi_4 = create(:fulfilled_order_item, quantity: 40, order: order_4, item: item_4)
      oi_5 = create(:fulfilled_order_item, quantity: 50, order: order_5, item: item_5)
      oi_6 = create(:fulfilled_order_item, quantity: 45, order: order_6, item: item_6)
      oi_7 = create(:fulfilled_order_item, quantity: 35, order: order_7, item: item_7)
      oi_8 = create(:fulfilled_order_item, quantity: 25, order: order_8, item: item_8)

      allow_any_instance_of(ApplicationController).to receive(:current_user).and_return(user_1)
      visit merchants_path

      within('#merchant-selling-rank-1') do
        expect(page).to have_content(merchant_5.name)
      end

    end
  end

  describe "when a visitor visits the merchant index page" do
    it "shows the top ten merchants who sold orders this month" do

      user_1 = create(:user, city: 'Denver', state: 'CO')

      merchant_1, merchant_2, merchant_3, merchant_4,
      merchant_5, merchant_6, merchant_7, merchant_8 = create_list(:merchant, 8)

      item_1 = create(:item, user: merchant_1)
      item_2 = create(:item, user: merchant_2)
      item_3 = create(:item, user: merchant_3)
      item_4 = create(:item, user: merchant_4)
      item_5 = create(:item, user: merchant_5)
      item_6 = create(:item, user: merchant_6)
      item_7 = create(:item, user: merchant_7)
      item_8 = create(:item, user: merchant_8)

      order_1 = create(:completed_order)
      order_2 = create(:completed_order)
      order_3 = create(:completed_order)
      order_4 = create(:completed_order)
      order_5 = create(:completed_order)
      order_6 = create(:completed_order)
      order_7 = create(:completed_order)
      order_8 = create(:completed_order)

      oi_1 = create(:fulfilled_order_item, quantity: 10, order: order_1, item: item_1)
      oi_2 = create(:fulfilled_order_item, quantity: 20, order: order_2, item: item_2)
      oi_3 = create(:fulfilled_order_item, quantity: 30, order: order_3, item: item_3)
      oi_4 = create(:fulfilled_order_item, quantity: 40, order: order_4, item: item_4)
      oi_5 = create(:fulfilled_order_item, quantity: 50, order: order_5, item: item_5)
      oi_6 = create(:fulfilled_order_item, quantity: 45, order: order_6, item: item_6)
      oi_7 = create(:fulfilled_order_item, quantity: 35, order: order_7, item: item_7)
      oi_8 = create(:fulfilled_order_item, quantity: 25, order: order_8, item: item_8)

      allow_any_instance_of(ApplicationController).to receive(:current_user).and_return(user_1)
      visit merchants_path

      within('#merchant-fulfilling-rank-1') do
        expect(page).to have_content(merchant_5.name)
      end
      within('#merchant-fulfilling-rank-2') do
        expect(page).to have_content(merchant_6.name)
      end
      within('#merchant-fulfilling-rank-3') do
        expect(page).to have_content(merchant_4.name)
      end
      within('#merchant-fulfilling-rank-4') do
        expect(page).to have_content(merchant_7.name)
      end
      within('#merchant-fulfilling-rank-5') do
        expect(page).to have_content(merchant_3.name)
      end

    end

    # fulfilled orders test

    it "shows the top ten merchants who fulfilled orders this month" do

      user_1 = create(:user, city: 'Denver', state: 'CO')
      user_2 = create(:user, city: 'Kansas City', state: 'MO')

      merchant_1, merchant_2, merchant_3, merchant_4,
      merchant_5, merchant_6, merchant_7, merchant_8 = create_list(:merchant, 8)

      item_1 = create(:item, user: merchant_1)
      item_2 = create(:item, user: merchant_2)
      item_3 = create(:item, user: merchant_3)
      item_4 = create(:item, user: merchant_4)
      item_5 = create(:item, user: merchant_5)
      item_6 = create(:item, user: merchant_6)
      item_7 = create(:item, user: merchant_7)
      item_8 = create(:item, user: merchant_8)

      order_1 = create(:completed_order, user: user_2, created_at: 20.days.ago, updated_at: 8.days.ago)
      order_2 = create(:completed_order, user: user_2, created_at: 20.days.ago, updated_at: 7.days.ago)
      order_3 = create(:completed_order, user: user_1, created_at: 20.days.ago, updated_at: 6.days.ago)
      order_4 = create(:completed_order, user: user_1, created_at: 20.days.ago, updated_at: 5.days.ago)
      order_5 = create(:completed_order, user: user_1, created_at: 20.days.ago, updated_at: 4.days.ago)
      order_6 = create(:completed_order, user: user_1, created_at: 20.days.ago, updated_at: 3.days.ago)
      order_7 = create(:completed_order, user: user_1, created_at: 20.days.ago, updated_at: 2.days.ago)
      order_8 = create(:completed_order, user: user_1, created_at: 20.days.ago, updated_at: 1.day.ago)

      oi_1 = create(:fulfilled_order_item, quantity: 10, order: order_1, item: item_1, created_at: 40.days.ago, updated_at: 1.day.ago)
      oi_2 = create(:fulfilled_order_item, quantity: 20, order: order_2, item: item_2, created_at: 40.days.ago, updated_at: 1.day.ago)
      oi_3 = create(:fulfilled_order_item, quantity: 30, order: order_3, item: item_3, created_at: 40.days.ago, updated_at: 1.day.ago)
      oi_4 = create(:fulfilled_order_item, quantity: 40, order: order_4, item: item_4, created_at: 40.days.ago, updated_at: 1.day.ago)
      oi_5 = create(:fulfilled_order_item, quantity: 50, order: order_5, item: item_5, created_at: 40.days.ago, updated_at: 1.day.ago)
      oi_6 = create(:fulfilled_order_item, quantity: 45, order: order_6, item: item_6, created_at: 40.days.ago, updated_at: 1.day.ago)
      oi_7 = create(:fulfilled_order_item, quantity: 35, order: order_7, item: item_7, created_at: 40.days.ago, updated_at: 1.day.ago)
      oi_8 = create(:fulfilled_order_item, quantity: 25, order: order_8, item: item_8, created_at: 40.days.ago, updated_at: 1.day.ago)

      allow_any_instance_of(ApplicationController).to receive(:current_user).and_return(user_1)
      visit merchants_path

      save_and_open_page
    end
  end
end
