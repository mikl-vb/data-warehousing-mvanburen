import duckdb

def main():
   # connect to database
   con = duckdb.connect(database = "../sql/main.db", read_only = True)
   result = con.execute("SHOW TABLES").fetchall()
   
   with open("output.txt", "w") as f:
      for table in result:
         table_name = table[0]
         print(f"Table Name: {table_name}")
         count = con.execute(f"SELECT COUNT(*) FROM {table_name}").fetchall()
         number = count[0][0]
         print(f"Number of Rows: {number}")

if __name__ == "__main__":
   main()
