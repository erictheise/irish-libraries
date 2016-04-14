from sqlalchemy import create_engine
import pandas as pd

engine = create_engine('postgresql://erictheise@localhost/irish_libraries')
df = pd.read_csv('120416 Libray Basic Data_Open Street Map.csv')
df.to_sql('libraries', engine)

