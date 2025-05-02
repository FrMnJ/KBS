(defrule iphone-airpods
    (customer (name ?name) (email ?email) (phone ?phone) (address ?address))
    (order (order-id ?order-id) (customer-email ?email) (order-date ?order-date) (delivery-date ?delivery-date))
    (order-item (order-id ?order-id) (product-id 1) (product-type "smartphone") (quantity ?quantity&:(<= ?quantity 5)) (price-per-unit ?price-per-unit))
    (smartphone (id 1) (brand "Apple") (model "iPhone 14") (price ?price) (color "Black") (storage "128GB") (ram "4GB") (stock ?stock))
    =>
    (if (> ?stock ?quantity) then
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
    (if (> ?stock ?quantity) then
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
    (order-item (order-id ?order-id) (product-id 2) (product-type "smartphone") (quantity ?quantity&:(< ?quantity 5)) (price-per-unit ?price-per-unit))
    (smartphone (id 2) (brand "Samsung") (model "Galaxy S22") (price ?price) (color "White") (storage "256GB") (ram "8GB") (stock ?stock))
    =>
    (printout t "Customer: " ?name crlf)
    (printout t "Email: " ?email crlf)
    (printout t "Phone: " ?phone crlf)
    (printout t "Address: " ?address crlf)
    (printout t "Stock Galaxy S21 Blue 256GB 8GB: " (- ?stock ?quantity) crlf)
    (printout t "Recommended Product: Galaxy Buds Pro" crlf)
    (assert (recommendation (customer-email ?email) (product-id 22)))
    (printout t "Discount 20% on Galaxy Buds Pro" crlf)
    (assert (discount-product (product-id 22) (percentage 10) (customer-email ?email)))
)
