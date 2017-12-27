# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

User.delete_all
@rebecca=User.create!(first_name: 'Rebecca',
              last_name: 'Fifield',
              username: 'rfifield',
              password_hash: 'Password1')

@john=User.create!(first_name: 'John',
              last_name: 'Doe',
              username: 'jdoe',
              password_hash: 'Password2')


Customer.delete_all
@cammeron=Customer.create!(first_name: 'Cammeron',
                  last_name: 'Linneen',
                  address: '8444 E. Vernon Ave',
                  city: 'Scottsdale',
                  state: 'AZ',
                  zip: '85257',
                  phone: '480-201-7390',
                  email: 'clinneen55@gmail.com')

@steven=Customer.create!(first_name: 'Steven',
                  last_name: 'Tyler',
                  address: '725 E. Charland St.',
                  city: 'Boston',
                  state: 'MA',
                  zip: '02101',
                  phone: '857-555-0152',
                  email: 'toys@theattic.com')

@albert=Customer.create!(first_name: 'Albert',
                  last_name: 'King',
                  address: '835 W. Neptune Dr.',
                  city: 'Austin',
                  state: 'TX',
                  zip: '73301',
                  phone: '512-555-7268',
                  email: 'born@thebadsign.com')


Product.delete_all
@flange=Product.create!(code: '6782B',
                description: '.5" flange',
                image_url: 'flange.jpeg',
                cost_vender_a: '2.20',
                cost_vender_b: '2.10',
                cost_vender_c: '2.75',
                price: '3.00')

@sink=Product.create!(code: '8928P',
                description: 'stainless sink',
                image_url: 'sink.jpeg',
                cost_vender_a: '450.30',
                cost_vender_b: '488.12',
                cost_vender_c: '512.8',
                price: '515.78')

@connector=Product.create!(code: '4446R',
                description: '90 degree connector',
                image_url: 'connector.jpeg',
                cost_vender_a: '.5',
                cost_vender_b: '.52',
                cost_vender_c: '.60',
                price: '.65')

@heater=Product.create!(code: '1212E',
                description: 'water heater',
                image_url: 'waterheater.jpeg',
                cost_vender_a: '800.70',
                cost_vender_b: '798.5',
                cost_vender_c: '861.46',
                price: '865.50')


Invoice.delete_all
@invoice1=Invoice.create!(items: 'This is the job description.',
                job_date: '19900905',
                user_id: @rebecca.id,
                customer_id: @cammeron.id)

Invoice.create!(items: 'Anything done on the job will go here.',
                job_date: '20171212',
                user_id: @rebecca.id,
                customer_id: @albert.id)

Invoice.create!(items: 'Changed water heater.',
                job_date: '20170516',
                user_id: @rebecca.id,
                customer_id: @steven.id)

Invoice.create!(items: 'Sink reinstall',
                job_date: '20170705',
                user_id: @john.id,
                customer_id: @cammeron.id)


LineItem.delete_all
LineItem.create!(quantity: '3',
                  price: '3.75',
                  invoice_id: @invoice1.id,
                  product_id: @flange.id)

LineItem.create!(quantity: '1',
                  price: '542.68',
                  invoice_id: @invoice1.id,
                  product_id: @sink.id)

LineItem.create!(quantity: '12',
                  price: '0.65',
                  invoice_id: @invoice1.id,
                  product_id: @connector.id)

LineItem.create!(quantity: '1',
                  price: '875.23',
                  invoice_id: @invoice1.id,
                  product_id: @heater.id)

