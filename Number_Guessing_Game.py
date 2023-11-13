from random import randint

guess = randint(0, 100)

while guess:
    user_input = int(input('Enter Number: '))
    if user_input == guess:
        print('You won!')
        guess = False
    else:
        print('try again!')
        continue