# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).

line_items = LineItem.create([{ description: 'Tuts+ Subscription April 2016', price: 15.0 }, { description: 'Ruby eBook', price: 9.90} ])
Invoice.create(client: 'Pedro Alonso', total: 24.90, line_items: line_items, date: Date.new(2016, 4, 1))
