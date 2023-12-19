class collage:
    student='Gokul'
    branch='CSE'
    sem=7

    def __init__(self):
        print("The message is form constructor")

    def department(self,department):
        self.department=department
    def main(self):
        return self.department


adharsh = collage()
print(adharsh.student)
print(adharsh.branch)
print(adharsh.sem)
adharsh.department("adarsh")
print(adharsh.main())


print(adharsh.student+" from "+adharsh.branch+" and sem "+str(adharsh.sem))
