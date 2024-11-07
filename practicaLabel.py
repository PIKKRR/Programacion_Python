from tkinter import *

root=Tk()

miFrame=Frame(root, width=500, height=400)

miFrame.pack()

miImagen=PhotoImage(file="programador.gif")

Label(miFrame, image=miImagen).place(x=300, y=200)


root.mainloop()