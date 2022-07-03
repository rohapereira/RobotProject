import random

class Login():
    def sortear_nome(self):
        firstnames = ['Abby','Barbara','Maicon','Milene','Robson','Jorge','Carlos','Gustavo']
        return random.choice(firstnames)

    def sortear_sobrenome(self):
        lastnames = ['Pereira','Bueno','Silva','Golcalves','Santana','Castro','Cachias','Tundra']
        return random.choice(lastnames)

    def sortear_email(self):
        emails = ['gmail','outlook','hotmail','yahoo','bing','bol','uol','example']

        nome,sobrenome = self.sortear_nome(self),self.sortear_sobrenome(self)
        email = random.choice(emails)

        email_return = nome+sobrenome+'@'+email+'.com'
        return email_return