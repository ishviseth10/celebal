# Shopping Analysis - Pandas Assignment

This is an internship assignment where I worked with a shopping dataset (1000 products scraped from an online store) to practice basic Python and Pandas - loading data, exploring it, cleaning it up, and saving the final result.

## What's in this folder

- `data/combined_dataset.csv` - the original dataset
- `data/cleaned_dataset.csv` - the dataset after cleaning
- `notebook/analysis.ipynb` - the notebook with all the code

## What I did

I loaded the dataset and checked its shape, columns and data types. Then I checked for missing values - columns like discount, rating and ratings_count had some missing entries, so I filled them in instead of dropping rows (discount missing meant no discount was given, so I filled it with 0, same logic for ratings_count, and rating I filled with the median).

I also did some basic filtering, like pulling out products with rating above 4, and products from a specific category, just to practice selecting rows and columns.

There were no duplicate rows in this dataset, but I added the code to check and remove them anyway.

One part of the original task asked to create a column called total_amount = price * quantity, but this dataset doesn't have a quantity column at all - it's just a product listing, not actual orders. So instead I made a price_difference column (initial price minus final price, basically the discount amount in rupees) and a popularity_score column using rating and number of ratings together.

The final_price column was also a mess when I first opened it - it had quotes and the ₹ symbol mixed in as text, so I had to clean that up before I could do any maths with it.

At the end I saved everything as cleaned_dataset.csv.

## How to run it

Open analysis.ipynb in Jupyter and run all the cells top to bottom.
