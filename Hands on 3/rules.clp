(defrule iphone-airpods
    (customer (name ?name) (email ?email) (phone ?phone) (address ?address))
    (order (order-id ?order-id) (customer-email ?email) (order-date ?order-date) (delivery-date ?delivery-date))
    (order-item (order-id ?order-id) (product-id 1) (product-type "smartphone") (quantity ?quantity&:(<= ?quantity 5)) (price-per-unit ?price-per-unit))
    (smartphone (id 1) (brand "Apple") (model "iPhone 14") (price ?price) (storage "128GB") (ram "4GB") (stock ?stock))
    =>
    (if (>= ?stock ?quantity) then
        (printout t "Customer: " ?name crlf)
        (printout t "Email: " ?email crlf)
        (printout t "Phone: " ?phone crlf)
        (printout t "Address: " ?address crlf)
        (printout t "Stock iPhone 14 Black 128GB 4GB: " (- ?stock ?quantity) crlf)
        (printout t "Recommended Product: AirPods Pro" crlf)
        (assert (recommendation (customer-email ?email) (product-id 21)))
        (printout t "Recommended Product: Mackbook Pro" crlf)
        (assert (recommendation (customer-email ?email) (product-id 11)))
        (printout t "Discount 10% on AirPods Pro" crlf)
        (assert (discount-product (product-id 21) (percentage 10) (customer-email ?email)))
    else
        (printout t "Stock not available for iPhone 14 Black 128GB 4GB" crlf))
)

(defrule iphone-airpods
    (customer (name ?name) (email ?email) (phone ?phone) (address ?address))
    (order (order-id ?order-id) (customer-email ?email) (order-date ?order-date) (delivery-date ?delivery-date))
    (order-item (order-id ?order-id) (product-id 1) (product-type "smartphone") (quantity ?quantity&:(> ?quantity 5)) (price-per-unit ?price-per-unit))
    (smartphone (id 1) (brand "Apple") (model "iPhone 14") (price ?price) (color "Black") (storage "128GB") (ram "4GB") (stock ?stock))
    =>
    (if (>= ?stock ?quantity) then
        (printout t "Customer: " ?name crlf)
        (printout t "Email: " ?email crlf)
        (printout t "Phone: " ?phone crlf)
        (printout t "Address: " ?address crlf)
        (printout t "Stock iPhone 14 Black 128GB 4GB: " (- ?stock ?quantity) crlf)
        (printout t "Recommended Product: AirPods Pro" crlf)
        (assert (recommendation (customer-email ?email) (product-id 21)))
        (printout t "Recommended Product: Mackbook Pro" crlf)
        (assert (recommendation (customer-email ?email) (product-id 11)))
        (printout t "Discount 30% on AirPods Pro" crlf)
        (assert (discount-product (product-id 21) (percentage 30) (customer-email ?email)))
    else
        (printout t "Stock not available for iPhone 14 Black 128GB 4GB" crlf))
)

(defrule samsung-galaxy-buds
    (customer (name ?name) (email ?email) (phone ?phone) (address ?address))
    (order (order-id ?order-id) (customer-email ?email) (order-date ?order-date) (delivery-date ?delivery-date))
    (order-item (order-id ?order-id) (product-id 2) (product-type "smartphone") (quantity ?quantity&:(<= ?quantity 5)) (price-per-unit ?price-per-unit))
    (smartphone (id 2) (brand "Samsung") (model "Galaxy S22") (price ?price) (color "White") (storage "256GB") (ram "8GB") (stock ?stock))
    =>
    (if (>= ?stock ?quantity) then
        (printout t "Email: " ?email crlf)
        (printout t "Phone: " ?phone crlf)
        (printout t "Address: " ?address crlf)
        (printout t "Stock Galaxy S22 White 256GB 8GB: " (- ?stock ?quantity) crlf)
        (printout t "Recommended Product: Galaxy Buds Pro" crlf)
        (assert (recommendation (customer-email ?email) (product-id 22)))
        (printout t "Discount 20% on Galaxy Buds Pro" crlf)
        (assert (discount-product (product-id 22) (percentage 20) (customer-email ?email)))
    else
        (printout t "Stock not available for Galaxy S22 White 256GB 8GB" crlf))
)

(defrule samsung-galaxy-buds
    (customer (name ?name) (email ?email) (phone ?phone) (address ?address))
    (order (order-id ?order-id) (customer-email ?email) (order-date ?order-date) (delivery-date ?delivery-date))
    (order-item (order-id ?order-id) (product-id 2) (product-type "smartphone") (quantity ?quantity&:(> ?quantity 5)) (price-per-unit ?price-per-unit))
    (smartphone (id 2) (brand "Samsung") (model "Galaxy S22") (price ?price) (color "White") (storage "256GB") (ram "8GB") (stock ?stock))
    =>
    (if (>= ?stock ?quantity) then
        (printout t "Customer: " ?name crlf)
        (printout t "Email: " ?email crlf)
        (printout t "Phone: " ?phone crlf)
        (printout t "Address: " ?address crlf)
        ; (smartphone (id 2) (brand "Samsung") (model "Galaxy S22") (price 799) (color "White") (storage "256GB") (ram "8GB") (stock 5))
        (printout t "Stock Galaxy S21 White 256GB 8GB: " (- ?stock ?quantity) crlf)
        (printout t "Recommended Product: Galaxy Buds Pro" crlf)
        (assert (recommendation (customer-email ?email) (product-id 22)))
        (printout t "Discount 50% on Galaxy Buds Pro" crlf)
        (assert (discount-product (product-id 22) (percentage 50) (customer-email ?email)))
    else
        (printout t "Stock not available for Galaxy S22 Blue 256GB 8GB" crlf))
)


(defrule dell-american-express-coupon-200
    (customer (name ?name) (email ?email) (phone ?phone) (address ?address))
    (order (order-id ?order-id) (customer-email ?email) (order-date ?order-date) (delivery-date ?delivery-date))
    (order-item (order-id ?order-id) (product-id 12) (product-type "laptop") (quantity ?quantity&:(<= ?quantity 5)) (price-per-unit ?price-per-unit))
    (computer (id 12) (brand "Dell") (model "XPS 13") (price ?price) (color "Black") (storage "256GB SSD") (ram "8GB") (stock ?stock))
    (debit-card (customer-email ?email) (card-type "American Express")) 
    =>
    (if (>= ?stock ?quantity) then
        (printout t "Customer: " ?name crlf)
        (printout t "Email: " ?email crlf)
        (printout t "Phone: " ?phone crlf)
        (printout t "Address: " ?address crlf)
        ;(computer (id 12) (brand "Dell") (model "XPS 13") (price 1299) (color "Black") (storage "256GB SSD") (ram "8GB") (stock 10))
        (printout t "Stock Dell XPS 13 Black 256GB SSD 8GB: " (- ?stock ?quantity) crlf)
        ;(accessory (id 23) (brand "Sony") (model "WH-1000XM4") (price 349) (color "Black") (type "Headphones") (stock 10))
        (printout t "Recommended Product: WH-1000XM4 Headphones" crlf)
        (assert (recommendation (customer-email ?email) (product-id 23)))
        ;(accessory (id 28) (brand "Logitech") (model "G502 HERO") (price 49) (color "Black") (type "Mouse") (stock 30))
        (printout t "Recommended Product: G502 HERO Mouse" crlf)
        (assert (recommendation (customer-email ?email) (product-id 28)))
        (printout t "Purcharse with American Express" crlf)
        (printout t "Coupon: $200 in any purchase" crlf)
        (assert (coupon (customer-email ?email) (value 200)))
    else 
        (printout t "Stock not available for Dell XPS 13 Black 256GB SSD 8GB" crlf))
)
