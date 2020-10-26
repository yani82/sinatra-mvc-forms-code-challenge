TEAS = [
    {name: "Lemon Ginger", price: 3.50},
    {name: "Chamomile", price: 2.25},
    {name: "Jasmine Green", price: 4.00}
]
TEAS.each do |tea|
    Tea.create(tea)
end