from tkinter import *

raiz=Tk()

raiz.title("Ventana de pruebas")

#raiz.resizable(0,0)

raiz.iconbitmap("megaman.ico")

#raiz.geometry("650x350")

raiz.config(bg="blue")

raiz.config(relief="groove")

raiz.config(bd=35)

raiz.config(cursor="hand2")

miFrame=Frame()

miFrame.pack()

miFrame.config(bg="red")

miFrame.config(width="650", height="350")

miFrame.config(relief="sunken")

miFrame.config(bd=35)

miFrame.config(cursor="pirate")



raiz.mainloop()