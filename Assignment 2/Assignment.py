import pandas as pd
import mysql.connector

class dbacc:
    def __init__(self,host,user,passwd,database):
        self.host = host
        self.user = user
        self.passwd = passwd
        self.database = database

    def connect(self): 
        self.db = mysql.connector.connect(host = self.host,user = self.user,passwd = self.passwd,database = self.database)
        self.cur = self.db.cursor(dictionary = True,buffered = True)

    def q2(self,val):
        query1 = "update registered_users set Cust_Name = 'Anonymous',Mail_ID = NULL,Pass = NULL where User_I = %s;"
        self.cur.execute(query1,(val,))
        query2 = "update past_orders set Rating = NULL,Review = NULL where User_I = %s;"
        self.cur.execute(query2,(val,))
        query3 = "delete from cart where User_I = %s;"
        self.cur.execute(query3,(val,))
        query4 = "delete from delivery where User_I = %s;"
        self.cur.execute(query4,(val,))
        query5 = "delete from search_history where User_I = %s;"
        self.cur.execute(query5,(val,))
        self.cur.execute("select * from registered_users")
        self.db.commit()
        res = self.cur.fetchall()
        print(pd.DataFrame(res))

    def q3(self,val1,val2):
        query = "update products set Price = %s*Price where Product_ID in (select Product_ID from  (select T.Product_Id, views, Price from  (select Product_ID, count(*) as views from search_history group by Product_ID) as T  join products on T.Product_ID = products.Product_ID) as R where R.views<10 and R.Price>%s);"
        self.cur.execute(query,(val1,val2))
        self.cur.execute("select * from products;")
        res = self.cur.fetchall()
        print(pd.DataFrame(res))

    def q4(self,v1,v2,v3,v4,v5,v6,v7,v8):
        query = "INSERT INTO delivery(Ind,User_I,Delivery_Address,City) VALUES (%s,%s,%s,%s);"
        self.cur.execute(query,(v1,v2,v3,v4))
        query1 = "INSERT INTO delivery(Ind,User_I,Delivery_Address,City) VALUES (%s,%s,%s,%s);"
        self.cur.execute(query1,(v5,v6,v7,v8))
        self.cur.execute("select * from delivery")
        self.db.commit()
        res = self.cur.fetchall()
        print(pd.DataFrame(res))

    def q5(self,value):
        query = "select Retailer_Name,Mail from retailer where City = %s;"
        self.cur.execute(query,(value,))
        res = self.cur.fetchall()
        print(pd.DataFrame(res))

    def q6(self):
        self.cur.execute("select DISTINCT Mail_ID,T.User_I,R.Cust_Name from (select User_I,SUM(Total_Amount) as Total from past_orders group by User_I having Total>=5000) as T join (select User_I,Mail_ID,City,Cust_Name from registered_users natural join delivery) as R on T.User_I = R.User_I where City = 'Mumbai'")
        res = self.cur.fetchall()
        print(pd.DataFrame(res))

    def q7(self):
        self.cur.execute("select Product_Name from products  where Product_Name like '%le%'")
        res = self.cur.fetchall()
        print(pd.DataFrame(res))

    def q8(self):
        self.cur.execute("select User_I,T.Product_ID,Order_ID,Purchase_Date, Product_Name from (select User_I,Product_ID,Order_ID,Purchase_Date from past_orders where User_I = (select User_I from registered_users order by Reg_Date LIMIT 1)) as T join products on T.Product_ID = products.Product_ID")
        res = self.cur.fetchall()
        print(pd.DataFrame(res))

    def q9(self):
        self.cur.execute("select User_I,T.Product_ID,Product_Name from (select User_I,Product_ID from cart where User_I = (select User_I from registered_users order by Reg_Date LIMIT 1 OFFSET 1)) as T join products on T.Product_ID = products.Product_ID")
        res = self.cur.fetchall()
        print(pd.DataFrame(res))

    def q10(self,value):
        query = "select Book_Name from product_books where Year_Published > %s"
        self.cur.execute(query,(value,))
        res = self.cur.fetchall()
        print(pd.DataFrame(res))

    def q11(self,val1,val2,val3):
        query = "select Product_Type,Product_Name,Price from products  where Price between %s and %s and Product_Type = %s;"
        val1 = '10000'
        val2 = '20000'
        val3 = 'Electronics'
        self.cur.execute(query,(val1,val2,val3))
        res = self.cur.fetchall()
        print(pd.DataFrame(res))

    def q12(self,val1,val2):
        query = "select Product_ID,Product_Name from products where Retailer_Name = %s and Product_Type = %s"
        self.cur.execute(query,(val1,val2))
        res = self.cur.fetchall()
        print(pd.DataFrame(res))

    def q13(self,val1):
        query = "select T.Product_ID, T.Product_Name, Category, Price from (select Product_ID,Product_Name,Category from product_elec where Category = %s) as T  join products on T.Product_ID = products.Product_ID order by Price"
        self.cur.execute(query,(val1,))
        res = self.cur.fetchall()
        print(pd.DataFrame(res))

    def q14(self,val):
        query = "select Product_Name from products where Date_when_added > %s"
        self.cur.execute(query,(val,))
        res = self.cur.fetchall()
        print(pd.DataFrame(res))	

    def q15(self,val):
        query = "select Book_Name from product_books where Author=%s"
        self.cur.execute(query,(val,))
        res = self.cur.fetchall()
        print(pd.DataFrame(res))

    def q16(self,val):
        query = "select User_I,Mail_ID from cart natural join registered_users where Quantity < %s"
        self.cur.execute(query,(val,))
        res = self.cur.fetchall()
        print(pd.DataFrame(res))

    def q17a(self):
        self.cur.execute("select Order_ID, sum(Quantity) as quantity from past_orders group by Order_ID order by quantity desc LIMIT 1")
        res = self.cur.fetchall()
        print(pd.DataFrame(res))

    def q17b(self):
        self.cur.execute("select Order_ID, COUNT(*) as total_no_of_products from past_orders group by Order_ID order by total_no_of_products desc LIMIT 1")
        res = self.cur.fetchall()
        print(pd.DataFrame(res))

    def q18(self,val):
        query = "select Product_Name from products where Date_when_added > %s"
        self.cur.execute(query,(val,))
        res = self.cur.fetchall()
        print(pd.DataFrame(res))

    def q19(self,val):
        query = "select Retailer_ID from products natural join past_orders natural join retailer where User_I = %s"
        self.cur.execute(query,(val,))
        res = self.cur.fetchall()
        print(pd.DataFrame(res))

    def q20(self,val1,val2):
        self.cur.execute("DROP TABLE Diwali_Deals")
        self.cur.execute("CREATE TABLE Diwali_Deals select * from products;")
        query = "update Diwali_Deals set Price = %s * Price where Date_when_added > %s;"
        self.cur.execute(query,(val1,val2))
        self.cur.execute("select * from Diwali_Deals")
        self.db.commit()
        res = self.cur.fetchall()
        print(pd.DataFrame(res))

dbclass = dbacc("127.0.0.1","root","harshil",'test2')

dbclass.connect()
# dbclass.q2('384')  // Have been committed
# dbclass.q3(0.9,500) // Have been committed
# dbclass.q4(11,101,'chdbfuyebfy','Lucknow',12,101,'yrbvgbrfubf','Ahemdabad')  // Have been committed
dbclass.q5('Delhi')
dbclass.q6()
dbclass.q7()
dbclass.q8()
dbclass.q9()
dbclass.q10('2001')
dbclass.q11('10000','20000','Electronics')
dbclass.q12('lkea','Furniture')
dbclass.q13('Laptop')
dbclass.q14('2019-07-27')
dbclass.q15('Franz Kafka')
dbclass.q16(3)
dbclass.q17a()
dbclass.q17b()
dbclass.q18('2020-01-30')
dbclass.q19(55)
# dbclass.q20(0.95,'2019-12-08') // Have been committed