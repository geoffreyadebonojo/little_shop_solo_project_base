require 'factory_bot_rails'
require 'faker'

include FactoryBot::Syntax::Methods

OrderItem.destroy_all
Order.destroy_all
Item.destroy_all
User.destroy_all

admin = create(:admin)

user = create(:user)
user_1, user_2, user_3, user_4, user_5,
user_6, user_7= create_list(:user, 9)

merchant_1 = create(:merchant)
merchant_2, merchant_3, merchant_4, merchant_5, merchant_6,
merchant_7, merchant_8, merchant_9, merchant_10= create_list(:merchant, 9)

item_1a = create(:item, user: merchant_1)
item_1b = create(:item, user: merchant_1)
item_1c = create(:item, user: merchant_1)
item_1d = create(:item, user: merchant_1)
item_1e = create(:item, user: merchant_1)
item_1f = create(:item, user: merchant_1)
item_1g = create(:item, user: merchant_1)

item_2a = create(:item, user: merchant_2)
item_2b = create(:item, user: merchant_2)
item_2c = create(:item, user: merchant_2)
item_2d = create(:item, user: merchant_2)
item_2e = create(:item, user: merchant_2)
item_2f = create(:item, user: merchant_2)
item_2g = create(:item, user: merchant_2)

item_3a = create(:item, user: merchant_3)
item_3b = create(:item, user: merchant_3)
item_3c = create(:item, user: merchant_3)
item_3d = create(:item, user: merchant_3)
item_3e = create(:item, user: merchant_3)
item_3f = create(:item, user: merchant_3)
item_3g = create(:item, user: merchant_3)

item_4a = create(:item, user: merchant_4)
item_4b = create(:item, user: merchant_4)
item_4c = create(:item, user: merchant_4)
item_4d = create(:item, user: merchant_4)
item_4e = create(:item, user: merchant_4)
item_4f = create(:item, user: merchant_4)
item_4g = create(:item, user: merchant_4)

item_5a = create(:item, user: merchant_5)
item_5b = create(:item, user: merchant_5)
item_5c = create(:item, user: merchant_5)
item_5d = create(:item, user: merchant_5)
item_5e = create(:item, user: merchant_5)
item_5f = create(:item, user: merchant_5)
item_5g = create(:item, user: merchant_5)

item_6a = create(:item, user: merchant_6)
item_6b = create(:item, user: merchant_6)
item_6c = create(:item, user: merchant_6)
item_6d = create(:item, user: merchant_6)
item_6e = create(:item, user: merchant_6)
item_6f = create(:item, user: merchant_6)
item_6g = create(:item, user: merchant_6)

item_7a = create(:item, user: merchant_7)
item_7b = create(:item, user: merchant_7)
item_7c = create(:item, user: merchant_7)
item_7d = create(:item, user: merchant_7)
item_7e = create(:item, user: merchant_7)
item_7f = create(:item, user: merchant_7)
item_7g = create(:item, user: merchant_7)


item_8a = create(:item, user: merchant_8)
item_8b = create(:item, user: merchant_8)
item_8c = create(:item, user: merchant_8)
item_8d = create(:item, user: merchant_8)
item_8e = create(:item, user: merchant_8)
item_8f = create(:item, user: merchant_8)
item_8g = create(:item, user: merchant_8)


item_9a = create(:item, user: merchant_9)
item_9b = create(:item, user: merchant_9)
item_9c = create(:item, user: merchant_9)
item_9d = create(:item, user: merchant_9)
item_9e = create(:item, user: merchant_9)
item_9f = create(:item, user: merchant_9)
item_9g = create(:item, user: merchant_9)


item_10a = create(:item, user: merchant_10)
item_10b = create(:item, user: merchant_10)
item_10c = create(:item, user: merchant_10)
item_10d = create(:item, user: merchant_10)
item_10e = create(:item, user: merchant_10)
item_10f = create(:item, user: merchant_10)
item_10g = create(:item, user: merchant_10)

create_list(:item, 10, user: merchant_1)
create_list(:item, 5, user: merchant_2)
create_list(:item, 5, user: merchant_2)
create_list(:item, 14, user: merchant_4)
create_list(:item, 50, user: merchant_5)
create_list(:item, 25, user: merchant_6)
create_list(:item, 15, user: merchant_7)
create_list(:item, 34, user: merchant_8)
create_list(:item, 34, user: merchant_9)
create_list(:item, 34, user: merchant_10)

order_1 = create(:completed_order, user: user_1)
create(:fulfilled_order_item, created_at: 12.days.ago, order: order_1, item: item_1a, price: 1, quantity: 1)
create(:fulfilled_order_item, created_at: 14.days.ago, order: order_1, item: item_2a, price: 2, quantity: 1)
create(:fulfilled_order_item, created_at: 3.days.ago, order: order_1, item: item_3a, price: 3, quantity: 14)
create(:fulfilled_order_item, created_at: 4.days.ago, order: order_1, item: item_4a, price: 4, quantity: 13)
create(:fulfilled_order_item, created_at: 6.days.ago, order: order_1, item: item_5a, price: 4, quantity: 13)
create(:fulfilled_order_item, created_at: 11.days.ago, order: order_1, item: item_6a, price: 4, quantity: 12)
create(:fulfilled_order_item, created_at: 2.days.ago,  order: order_1, item: item_7a, price: 4, quantity: 1)
create(:fulfilled_order_item, created_at: 8.days.ago, order: order_1, item: item_8a, price: 4, quantity: 1)

order_2 = create(:completed_order, user: user_2)
create(:fulfilled_order_item, created_at: 1.days.ago,  order: order_2, item: item_9a, price: 1, quantity: 1)
create(:fulfilled_order_item, created_at: 2.days.ago,  order: order_2, item: item_10a, price: 2, quantity: 1)
create(:fulfilled_order_item, created_at: 3.days.ago,  order: order_2, item: item_1b, price: 3, quantity: 20)
create(:fulfilled_order_item, created_at: 4.days.ago,  order: order_2, item: item_2b, price: 4, quantity: 1)

order_3 = create(:disabled_order, user: user_2)
create(:fulfilled_order_item, created_at: 15.days.ago,  order: order_3, item: item_3c, price: 1, quantity: 1)
create(:fulfilled_order_item, created_at: 15.days.ago,  order: order_3, item: item_4d, price: 2, quantity: 1)

order_4 = create(:completed_order, user: user_2)
create(:fulfilled_order_item, created_at: 15.days.ago,  order: order_4, item: item_5d, price: 2, quantity: 2)
create(:fulfilled_order_item, created_at: 15.days.ago,  order: order_4, item: item_3e, price: 3, quantity: 4)

order_5 = create(:completed_order, user: user_3)
create(:fulfilled_order_item, created_at: 23.days.ago,  order: order_5, item: item_1a, price: 1, quantity: 32)
create(:fulfilled_order_item, created_at: 24.days.ago,  order: order_5, item: item_6f, price: 2, quantity: 54)

order_6 = create(:cancelled_order, user: user_4)
create(:fulfilled_order_item, created_at: 1.days.ago,  order: order_6, item: item_1a, price: 1, quantity: 1)
create(:fulfilled_order_item, created_at: 15.days.ago,  order: order_6, item: item_9b, price: 2, quantity: 5)
create(:fulfilled_order_item, created_at: 12.days.ago,  order: order_6, item: item_4a, price: 4, quantity: 51)

order_7 = create(:completed_order, user: user_5)
create(:fulfilled_order_item, created_at: 34.days.ago,  order: order_7, item: item_1a, price: 1, quantity: 1)
create(:fulfilled_order_item, created_at: 32.days.ago,  order: order_7, item: item_2d, price: 2, quantity: 16)
create(:fulfilled_order_item, created_at: 28.days.ago,  order: order_7, item: item_10b, price: 3, quantity: 78)
create(:fulfilled_order_item, created_at: 24.days.ago,  order: order_7, item: item_10a, price: 4, quantity: 7)

order = create(:completed_order, user: user_6)
create(:fulfilled_order_item, created_at: 34.minutes.ago,  order: order, item: item_1a, price: 1, quantity: 1)
create(:fulfilled_order_item, created_at: 32.minutes.ago,  order: order, item: item_2d, price: 2, quantity: 16)
create(:fulfilled_order_item, created_at: 28.minutes.ago,  order: order, item: item_10b, price: 3, quantity: 78)
create(:fulfilled_order_item, created_at: 24.minutes.ago,  order: order, item: item_10a, price: 4, quantity: 7)

order = create(:completed_order, user: user_7)
create(:fulfilled_order_item, created_at: 1.days.ago,  order: order, item: item_1a, price: 1, quantity: 1)
create(:fulfilled_order_item, created_at: 2.days.ago,  order: order, item: item_3a, price: 2, quantity: 11)

order = create(:cancelled_order, user: user_5)
create(:fulfilled_order_item, created_at: 3.hours.ago,  order: order, item: item_1b, price: 1, quantity: 1)
create(:fulfilled_order_item, created_at: 2.hours.ago,  order: order, item: item_2a, price: 2, quantity: 24)
create(:fulfilled_order_item, created_at: 2.hours.ago,  order: order, item: item_3a, price: 3, quantity: 44)
create(:fulfilled_order_item, created_at: 1.hours.ago,  order: order, item: item_6a, price: 4, quantity: 84)

order = create(:completed_order, user: user_2)
create(:fulfilled_order_item, created_at: 3.hours.ago,  order: order, item: item_1b, price: 1, quantity: 23)
create(:fulfilled_order_item, created_at: 2.hours.ago,  order: order, item: item_2a, price: 2, quantity: 11)
create(:fulfilled_order_item, created_at: 2.hours.ago,  order: order, item: item_3a, price: 3, quantity: 19)
create(:fulfilled_order_item, created_at: 1.hours.ago,  order: order, item: item_6a, price: 4, quantity: 52)

order = create(:completed_order, user: user_3)
create(:fulfilled_order_item, created_at: 7.hours.ago,  order: order, item: item_10a, price: 1, quantity: 1)
create(:fulfilled_order_item, created_at: 6.hours.ago,  order: order, item: item_2d, price: 2, quantity: 10)
create(:fulfilled_order_item, created_at: 5.hours.ago,  order: order, item: item_3d, price: 3, quantity: 10)
create(:fulfilled_order_item, created_at: 2.hours.ago,  order: order, item: item_4d, price: 4, quantity: 13)
create(:fulfilled_order_item, created_at: 3.hours.ago,  order: order, item: item_1a, price: 4, quantity: 82)
create(:fulfilled_order_item, created_at: 15.minutes.ago,  order: order, item: item_2a, price: 4, quantity: 1)
create(:fulfilled_order_item, created_at: 45.minutes.ago,  order: order, item: item_3a, price: 4, quantity: 64)
create(:fulfilled_order_item, created_at: 5.minutes.ago,  order: order, item: item_4a, price: 4, quantity: 16)

order = create(:completed_order, user: user)
create(:fulfilled_order_item, created_at: 1.weeks.ago,  order: order, item: item_10a, price: 1, quantity: 1)
create(:fulfilled_order_item, created_at: 2.weeks.ago,  order: order, item: item_2d, price: 2, quantity: 100)
create(:fulfilled_order_item, created_at: 3.weeks.ago,  order: order, item: item_3d, price: 3, quantity: 25)

order = create(:completed_order, user: user)
create(:fulfilled_order_item, created_at: 1.weeks.ago,  order: order, item: item_3c, price: 1, quantity: 1)
create(:fulfilled_order_item, created_at: 1.weeks.ago,  order: order, item: item_5f, price: 2, quantity: 2)
create(:fulfilled_order_item, created_at: 1.weeks.ago,  order: order, item: item_8b, price: 3, quantity: 5)
create(:fulfilled_order_item, created_at: 1.weeks.ago,  order: order, item: item_10f, price: 4, quantity: 10)
