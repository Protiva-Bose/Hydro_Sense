from tkinter import *
from configparser import ConfigParser
from tkinter import messagebox
import requests 
api_key = 'b20dd0fc27b3651f326243c812cec44d'
url_api ="https://api.openweathermap.org/data/2.5/weather?q={}&appid={}"


api_file = 'weather.key'
file_a = ConfigParser()
file_a.read(api_file)
api_key = file_a['api_key']['key'] 

def weather_find(city):
    final = requests.get(url_api.format(city,api_key))
    if final:
        json_file = final.json()
        city = json_file['name']
        country_name = json_file['sys']['country']
        k_temperature = json_file ["main"]['temp']
        c_temperature = k_temperature - 273.15
        f_temperature = (k_temperature - 273.15)*9/5+32
        weather_display = json_file ['weather'][0]['main']
        result = (city,country_name,c_temperature,f_temperature,k_temperature,weather_display)


        return result
    else:
        return None
    

def print_weather():
    city = search_city.get()
    weather = weather_find (city)
    if weather:
        location_entry['text'] = '{}, {}'.format(weather[0],weather[1])
        temperature_entry["text"] = '{:.2f} C, {:.2f} F' .format(weather[2],weather[3])
        weather_entry['text'] = weather[5]


    else:
        massagebox.showerror('Error','Please enter a valide city name. cannot find the city') 
    
       

root = Tk()
root.title("OUR NASA PROJECT") 
root.config(background="black")
root.geometry("700x400") #full page er size 

search_city = StringVar()
enter_city = Entry(root,textvariable=search_city,bg="blue",fg ="yellow",font=("Arial",30,"bold"))
enter_city.pack()
# 
# import theke ai bodhi upore joto kaj korci sob hocche page tar jonno ar search bar.....

search_butten= Button(root,text='SEARCH',width=15,bg="red",fg="white",font=("Arial",7,"bold"),command= print_weather)
search_butten.pack()
# 
# ager comm theke ai bodhu search button

location_entry =Label(root,text='',font=("Arial",35,"bold"),bg="lightblue")
location_entry.pack()

temperature_entry = Label(root,text='',font=("Arial",35,"bold"),bg="lightpink")
temperature_entry.pack()

weather_entry  = Label(root,text='',font=("Arial",35,"bold"),bg="lightgreen")
weather_entry.pack()


root.mainloop()