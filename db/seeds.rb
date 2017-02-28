# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
ic = Category.create(name: 'Ic')
module_item = Category.create(name: 'Module')
tool = Category.create(name: 'Tool')
consumable = Category.create(name: 'Consumable')
other = Category.create(name: 'Other')

Item.create(name: 'DHT22', datasheet: 'https://www.sparkfun.com/datasheets/Sensors/Temperature/DHT22.pdf', producent: 'Aosong Electronics Co., Ltd', category: ic)
Item.create(name: 'PIC16F627A', datasheet: 'http://ww1.microchip.com/downloads/en/DeviceDoc/40044F.pdf', producent: 'Microchip', category: ic)
Item.create(name: 'LM741', datasheet: 'http://www.ti.com/lit/ds/symlink/lm741.pdf', producent: 'Texas Instruments', category: ic)

Item.create(name: 'NodeMCU v3', datasheet: 'https://github.com/nodemcu/nodemcu-firmware', producent: 'NodeMCU', category: module_item)
Item.create(name: 'Arduino Leonardo', datasheet: 'https://www.arduino.cc/en/Main/ArduinoBoardLeonardo', producent: 'Arduino', category: module_item)

Item.create(name: 'Screwdriver set', category: module_item)
Item.create(name: 'YIHUA 937D', datasheet: 'http://www.jinlantrade.com/ebay/937D+FXT000000001/img.pdf', producent: 'Arduino', category: module_item)
