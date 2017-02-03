User.create!([
  {name: "Marie Bertrande UMUHIRE", email: "berryumuhire@yahoo.com", password_digest: "$2a$10$hPy7wpjhP067dpPzSYzzkuvua3TKkwRbQL9QwcDdOmCLSSxUr33zq"}
])
Image.create!([
  {url: "https://s-media-cache-ak0.pinimg.com/736x/51/a1/50/51a1507603421ed567208ce41dec74bd.jpg", product_id: nil},
  {url: "http://gloimg.rosewholesale.com/ROSE/2015/201509/source-img/1441326893112-P-3059724.jpg?01", product_id: "2"},
  {url: "https://s-media-cache-ak0.pinimg.com/736x/d1/00/c0/d100c0a671a15d9cf62f7ebc226f1c59.jpg", product_id: "3"},
  {url: "https://s-media-cache-ak0.pinimg.com/736x/3c/7d/b8/3c7db84814457baf529db89459754f60.jpg", product_id: "2"}
])
Product.create!([
  {name: "High Heels", price: "150.0", image: "https://s-media-cache-ak0.pinimg.com/originals/b4/79/11/b47911261083f9da4effb7063645e18e.jpg", description: "Black Golden high heels for women", stock: nil, supplier_id: 2},
  {name: "Pumps crystal party shoes", price: "220.0", image: "http://www.wholesalermart.com/images/shoes/High-Heel/0412/78-fashion-ladies-pumps-crystal-party-shoes-2013.jpg", description: "Grey party shoes for women", stock: nil, supplier_id: 2},
  {name: "Wedding shoes", price: "310.0", image: "https://s-media-cache-ak0.pinimg.com/564x/43/f8/f4/43f8f43c578c66b2364af2dfd7ead925.jpg", description: "Wedding high heels for women", stock: nil, supplier_id: 1},
  {name: "Pink high heels", price: "180.0", image: "https://i1.wp.com/fashionmaxi.com/wp-content/uploads/2014/09/High-Heel-2014-15-Latest-High-Heel-Shoes-Collection-2014-15-for-Girls-fashionmaxi.com-blogsposts.com-2B12.jpg", description: "Pink high heels for ladies", stock: nil, supplier_id: 2},
  {name: "Veltvet", price: "120.0", image: "http://www.thevikingstore.co.uk/ekmps/shops/thevikingstore1/images/costume-ladies-velvet-shoes-9618-p.jpg", description: "Boots for women", stock: nil, supplier_id: 1}
])
Supplier.create!([
  {name: "Lion Design", email: "lionds@gmail.com", phone_number: "095432123"},
  {name: "Roger Design ltd", email: "rogerdsgltd@gmail.com", phone_number: "0792312321"}
])
User.create!([
  {name: "Marie Bertrande UMUHIRE", email: "berryumuhire@yahoo.com", password_digest: "$2a$10$hPy7wpjhP067dpPzSYzzkuvua3TKkwRbQL9QwcDdOmCLSSxUr33zq"},
  {name: "Berry.G", email: "berryumuhire@yahoo.com", password_digest: "$2a$10$4LUAP0GzQnKYMXQ4aNPWku5MRi.bepuxVNslARCzdd510R.aXcSfm"},
  {name: "Mary", email: "marrydidyouknow@gmail.com", password_digest: "$2a$10$MX/zQ0TwyzMXvfTpvDHrMutTRlto4Tfw6GdDKw4.9d0.rySITX9Ve"},
  {name: "Marie Bertrande UMUHIRE", email: "berryumuhire@yahoo.com", password_digest: "$2a$10$cXOeCJ6HokPXs1IbbaoYQel8Jro2nC/dovOVU.mxz1axdP2ydEVlm"},
  {name: "Berry.G", email: "berryumuhire@yahoo.com", password_digest: "$2a$10$zLLX5MO2XYUXy.T9KyWjcu12.nWBcg8ewsujobwqnyhNLiCxhsXa6"}
])
