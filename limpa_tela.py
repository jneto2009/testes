from os import system, name

def limpar():
    system("cls" if name == 'nt' else 'clear')

limpar()
print('Teste 1')
print('Teste 2')
print('Teste 3')
print('Teste 4')
print('Teste 5')
