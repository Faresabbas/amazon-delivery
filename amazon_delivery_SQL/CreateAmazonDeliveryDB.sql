CREATE TABLE Agents (
	Agent_ID INT PRIMARY KEY IDENTITY(1,1),
	Agent_Age INT,
	Agent_Rating FLOAT
);




CREATE TABLE Locations (
	Location_ID INT PRIMARY KEY IDENTITY(1,1),
	Store_Latitude FLOAT,
	Store_Longitude FLOAT,
	Drop_Latitude FLOAT,
	Drop_Longitude FLOAT,
);




CREATE TABLE Conditions (
    Condition_ID INT PRIMARY KEY IDENTITY(1,1),
    Weather VARCHAR(50),
    Traffic VARCHAR(50)
);




CREATE TABLE Vehicles (
    Vehicle_ID INT PRIMARY KEY IDENTITY(1,1),
    Vehicle_Type VARCHAR(50)
);




CREATE TABLE Categories (
    Category_ID INT PRIMARY KEY IDENTITY(1,1),
    Category_Name VARCHAR(50)
);







CREATE TABLE Orders (
    Order_ID VARCHAR(50) PRIMARY KEY,
    Agent_ID INT,
    Store_Location_ID INT,
    Drop_Location_ID INT,
    Order_Date DATE,
    Order_Time TIME,
    Pickup_Time INT,
    Condition_ID INT,
    Vehicle_ID INT,
    Category_ID INT,
    Delivery_Time INT,
    FOREIGN KEY (Agent_ID) REFERENCES Agents(Agent_ID),
    FOREIGN KEY (Store_Location_ID) REFERENCES Locations(Location_ID),
    FOREIGN KEY (Drop_Location_ID) REFERENCES Locations(Location_ID),
    FOREIGN KEY (Condition_ID) REFERENCES Conditions(Condition_ID),
    FOREIGN KEY (Vehicle_ID) REFERENCES Vehicles(Vehicle_ID),
    FOREIGN KEY (Category_ID) REFERENCES Categories(Category_ID)
);
