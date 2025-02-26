import csv

# Define the table name
table_name = "Members"

# Read the CSV file and generate INSERT statements
csv_file_path = "members.csv"  # Update this path if needed

with open(csv_file_path, "r", encoding="utf-8") as file:
    reader = csv.reader(file)
    headers = next(reader)  # Get column names from the header row
    
    insert_statements = []
    for row in reader:
        values = [f"'{value}'" if value else "NULL" for value in row]
        sql = f"INSERT INTO {table_name} ({', '.join(headers)}) VALUES ({', '.join(values)});"
        insert_statements.append(sql)

# Write SQL statements to a file
with open("insert_members.sql", "w", encoding="utf-8") as sql_file:
    sql_file.write("\n".join(insert_statements))

print("SQL INSERT statements have been generated and saved to insert_members.sql.")
