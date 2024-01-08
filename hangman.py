from os import system, name
import random

def limpar():
    system("cls" if name == 'nt' else 'clear')

# -----------------------------------------------------------------------------------------------

def hangman():
    print('Bem vindo(a) ao jogo HangMan!')
    print("Adivinhe a palavra abaixo:\n")

    # Lista de palavras para o jogo
    palavras = ['banana', 'abacate', 'uva', 'morango', 'laranja', 'manga', 'abacaxi', 'kiwi']

    # Escolhe randomicamente uma palavra
    palavra = random.choice(palavras)

    # List comprehension
    letras_descobertas = ['_' for letra in palavra]
    
    # Número de chances
    chances = 6
    
    # Lista para as letras erradas
    letras_erradas = []

# -----------------------------------------------------------------------------------------------
    

    