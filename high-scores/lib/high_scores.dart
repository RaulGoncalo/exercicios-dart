class HighScores {
  List<int> numbers;

  HighScores(this.numbers);

  List<int> get scores {
    return numbers;
  }

  int latest() {
    return numbers.last;
  }

  int personalBest() {
    int maior = 0;

    for (int i = 0; i < numbers.length; i++) {
      if (numbers[i] > maior) {
        maior = numbers[i];
      }
    }

    return maior;
  }

  List<int> personalTopThree() {
    int aux = 0;
    int tamanho = numbers.length;
    List<int> novoArray = List.from(numbers);

    for (int i = 0; i < tamanho; i++) {
      for (int j = i + 1; j < tamanho; j++) {
        if (novoArray[i] < novoArray[j]) {
          aux = novoArray[i];
          novoArray[i] = novoArray[j];
          novoArray[j] = aux;
        }
      }
    }

    try {
      return novoArray.sublist(0, 3);
    } catch (e) {
      return novoArray;
    }
  }
}
