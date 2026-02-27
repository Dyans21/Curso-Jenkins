from datetime import datetime

# Pedimos la fecha de nacimiento al usuario
fecha_nacimiento = input("Ingresa tu fecha de nacimiento (YYYY-MM-DD): ")

# Convertimos el texto a fecha
fecha_nacimiento = datetime.strptime(fecha_nacimiento, "%Y-%m-%d")

# Fecha actual
hoy = datetime.today()

# Calculamos la edad
edad = hoy.year - fecha_nacimiento.year

# Verificamos si ya cumplió años este año
if (hoy.month, hoy.day) < (fecha_nacimiento.month, fecha_nacimiento.day):
    edad -= 1

# Mostramos el resultado
print("Tienes", edad, "años.")
