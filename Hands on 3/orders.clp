(deffacts orders
    (order (order-id 1) (customer-email "jane@mail.com") (order-date "2023-10-01") (delivery-date "2023-10-05") (method-payment "credit-card"))
    (order (order-id 2) (customer-email "alice@mail.com") (order-date "2023-10-02") (delivery-date "2023-10-06") (method-payment "debit-card"))
    (order (order-id 3) (customer-email "tyler@mail.com") (order-date "2023-10-03") (delivery-date "2023-10-07") (method-payment "credit-card"))
    (order (order-id 4) (customer-email "george@mail.com") (order-date "2023-10-04") (delivery-date "2023-10-08") (method-payment "debit-card"))
    (order (order-id 5) (customer-email "ethan@mail.com") (order-date "2023-10-05") (delivery-date "2023-10-09") (method-payment "cash"))
    (order (order-id 6) (customer-email "bob@mail.com") (order-date "2023-10-06") (delivery-date "2023-10-10") (method-payment "cash"))
    (order (order-id 7) (customer-email "charlie@mail.com") (order-date "2023-10-07") (delivery-date "2023-10-11") (method-payment "debit-card"))
    (order (order-id 8) (customer-email "tyler@mail.com") (order-date "2023-10-08") (delivery-date "2023-10-12") (method-payment "credit-card"))
)

(deffacts order-items
    ; (smartphone (id 1) (brand "Apple") (model "iPhone 14") (price 999) (color "Black") (storage "128GB") (ram "4GB") (stock 10))
    (order-item (order-id 1) (product-id 1) (product-type "smartphone") (quantity 1) (price-per-unit 999))
    ; Must apply discount for Airpods Pro 10%
    ; (accessory (id 21) (brand "Apple") (model "AirPods Pro") (price 249) (color "White") (type "earbuds") (stock 20))
    (order-item (order-id 1) (product-id 21) (product-type "accessories") (quantity 1) (price-per-unit 249))
    ; (computer (id 12) (brand "Dell") (model "XPS 13") (price 1299) (color "Black") (storage "256GB SSD") (ram "8GB") (stock 10))
    (order-item (order-id 2) (product-id 12) (product-type "computer") (quantity 1) (price-per-unit 1299))
    ; (smartphone (id 2) (brand "Samsung") (model "Galaxy S22") (price 799) (color "White") (storage "256GB") (ram "8GB") (stock 5))
    (order-item (order-id 3) (product-id 2) (product-type "smartphone") (quantity 1) (price-per-unit 799))
    ; (accessory (id 32) (brand "Apple") (model "Apple Watch Series 7") (price 399) (color "Silver") (type "smartwatch") (stock 10))
    (order-item (order-id 4) (product-id 32) (product-type "accessories") (quantity 1) (price-per-unit 399))
    ; (accessory (id 24) (brand "Bose") (model "QuietComfort 35 II") (price 299) (color "Silver") (type "headphones") (stock 8))
    ; Must receive a discount of 15% for accessories
    (order-item (order-id 5) (product-id 24) (product-type "accessories") (quantity 1) (price-per-unit 299))
    ; Apply discount of 15% to product id 27
    ; (accessory (id 27) (brand "Corsair") (model "K70 RGB MK.2") (price 159) (color "Black") (type "keyboard") (stock 10))
    (order-item (order-id 5) (product-id 27) (product-type "accessories") (quantity 1) (price-per-unit 159))
    ;(computer (id 14) (brand "Lenovo") (model "ThinkPad X1 Carbon") (price 1499) (color "Black") (storage "1TB SSD") (ram "16GB") (stock 6))
    (order-item (order-id 6) (product-id 14) (product-type "computer") (quantity 1) (price-per-unit 1499))
    ;(accessory (id 36) (brand "Veneno") (model "Crocodile") (price 50) (color "Green") (type "phone case") (stock 20))
    (order-item (order-id 7) (product-id 36) (product-type "accessories") (quantity 15) (price-per-unit 50))
    ; (console (id 41) (brand "Microsoft") (model "Xbox Series X") (price 499) (color "Black") (storage "1TB SSD") (ram "16GB") (stock 10))
    (order-item (order-id 8) (product-id 41) (product-type "console") (quantity 1) (price-per-unit 499))
    ; Discount for forza horizon 5 15%
    ; (videogame (id 56) (title "Forza Horizon 5") (platform "Xbox Series X") (price 59.99) (stock 14))
    (order-item (order-id 8) (product-id 56) (product-type "videogame") (quantity 1) (price-per-unit 59.99))
)