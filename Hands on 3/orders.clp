(deffacts orders
    (order (order-id 1) (customer-email "jane@mail.com") (order-date "2023-10-01") (delivery-date "2023-10-05") (method-payment "credit-card"))
    (order (order-id 2) (customer-email "alice@mail.com") (order-date "2023-10-02") (delivery-date "2023-10-06") (method-payment "debit-card"))
    (order (order-id 3) (customer-email "tyler@mail.com") (order-date "2023-10-03") (delivery-date "2023-10-07") (method-payment "credit-card"))
    (order (order-id 4) (customer-email "george@mail.com") (order-date "2023-10-04") (delivery-date "2023-10-08") (method-payment "debit-card"))
    (order (order-id 5) (customer-email "ethan@mail.com") (order-date "2023-10-05") (delivery-date "2023-10-09") (method-payment "cash"))
)

(deffacts order-items
    ; (smartphone (id 1) (brand "Apple") (model "iPhone 14") (price 999) (color "Black") (storage "128GB") (ram "4GB") (stock 10))
    (order-item (order-id 1) (product-id 1) (product-type "smartphone") (quantity 1) (price-per-unit 999))
    ; Must apply discount for Airpods Pro 10%
    ; (accessory (id 21) (brand "Apple") (model "AirPods Pro") (price 249) (color "White") (type "earbuds") (stock 20))
    (order-item (order-id 1) (product-id 21) (product-type "earbuds") (quantity 1) (price-per-unit 249))
    ; (computer (id 12) (brand "Dell") (model "XPS 13") (price 1299) (color "Black") (storage "256GB SSD") (ram "8GB") (stock 10))
    (order-item (order-id 2) (product-id 12) (product-type "computer") (quantity 1) (price-per-unit 1299))
    ; (smartphone (id 2) (brand "Samsung") (model "Galaxy S22") (price 799) (color "White") (storage "256GB") (ram "8GB") (stock 5))
    (order-item (order-id 3) (product-id 2) (product-type "smartphone") (quantity 1) (price-per-unit 799))
    ; (accessory (id 32) (brand "Apple") (model "Apple Watch Series 7") (price 399) (color "Silver") (type "smartwatch") (stock 10))
    (order-item (order-id 4) (product-id 32) (product-type "smartwatch") (quantity 1) (price-per-unit 399))
)