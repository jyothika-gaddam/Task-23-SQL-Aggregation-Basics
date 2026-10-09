# Task 23 — Expected Results

These results are based on the sample rows included in `task23_aggregation_basics.sql`. Average values may display with different decimal precision depending on the SQL tool.

## Query 1 — COUNT(*)
| total_sales_rows |
|---:|
| 10 |

## Query 2 — COUNT(sale_amount)
| sales_with_amount |
|---:|
| 9 |

## Query 3 — SUM(sale_amount)
| total_sales |
|---:|
| 2840.00 |

## Query 4 — AVG(sale_amount)
| average_sale |
|---:|
| 315.5556 |

## Query 5 — MIN(sale_amount)
| minimum_sale |
|---:|
| 80.00 |

## Query 6 — MAX(sale_amount)
| maximum_sale |
|---:|
| 1000.00 |

## Query 7 — Summary by region
| region | number_of_sales | total_sales |
|---|---:|---:|
| East | 4 | 1360.00 |
| South | 3 | 580.00 |
| West | 3 | 900.00 |

## Query 8 — Average sale by product
| product | average_sale |
|---|---:|
| Keyboard | 90.00 |
| Laptop | 666.6667 |
| Monitor | 225.00 |
| Mouse | 100.00 |

## Query 9 — Regions with total sales greater than 700
| region | total_sales |
|---|---:|
| East | 1360.00 |
| West | 900.00 |

## Query 10 — Summary by month
| sale_month | number_of_rows | total_sales | average_sale |
|---|---:|---:|---:|
| January | 2 | 1100.00 | 550.00 |
| February | 2 | 590.00 | 295.00 |
| March | 3 | 530.00 | 176.6667 |
| April | 3 | 620.00 | 310.00 |

## NULL behavior
One row (Divya's sale) has `sale_amount = NULL`.
- `COUNT(*)` returns 10 because it counts all rows.
- `COUNT(sale_amount)` returns 9 because it counts only non-NULL amounts.
- `SUM`, `AVG`, `MIN`, and `MAX` ignore the NULL amount.
