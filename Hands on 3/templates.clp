(deftemplate smartphone
   (slot id)
   (slot brand)
   (slot model)
   (slot price)
   (slot color)
   (slot storage)
   (slot ram)
   (slot stock))

(deftemplate computer
   (slot id)
   (slot brand)
   (slot model)
   (slot price)
   (slot color)
   (slot storage)
   (slot ram)
   (slot stock))


(deftemplate accessory
   (slot id)
   (slot brand)
   (slot model)
   (slot price)
   (slot color)
   (slot type)
   (slot stock))

(deftemplate customer
   (slot name)
   (slot age)
   (slot email)
   (slot phone)
   (slot address))

(deftemplate order
    (slot order-id)
    (slot customer-email)
    (slot order-date)
    (slot delivery-date)
    (slot method-payment))

(deftemplate order-item
    (slot order-id)
    (slot product-id)
    (slot product-type)
    (slot quantity)
    (slot price-per-unit))

(deftemplate credit-card
    (slot customer-email)
    (slot bank)
    (slot group)
    (slot card-number)
    (slot card-type)
    (slot expiration-date)
    (slot cvv)
    (slot cardholder-name)
    )

(deftemplate debit-card
    (slot customer-email)
    (slot bank)
    (slot group)
    (slot card-number)
    (slot card-type)
    (slot expiration-date)
    (slot cvv)
    (slot cardholder-name))

(deftemplate discount-product
    (slot product-id)
    (slot percentage)
    (slot customer-email)
)

(deftemplate discount-type-product
    (slot product-type)
    (slot discount-type)
    (slot customer-email)
)

(deftemplate recommendation
    (slot customer-email)
    (slot product-id)
)

(deftemplate coupon
    (slot customer-email)
    (slot value)
)