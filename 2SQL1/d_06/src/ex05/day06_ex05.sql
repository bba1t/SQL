COMMENT ON TABLE person_discounts IS 'Discounts in specific pizzerias for each username. Primary key. Cannot be null';
COMMENT ON COLUMN person_discounts.id IS 'Discount ID number. Cannot be null';
COMMENT ON COLUMN person_discounts.person_id IS 'Reference to person.id column. Cannot be null';
COMMENT ON COLUMN person_discounts.pizzeria_id IS 'Reference to pizzeria.id column. Cannot be null';
COMMENT ON COLUMN person_discounts.discount IS 'Discount value in percent. Must be in range from 0 and 100. 0 by default';
