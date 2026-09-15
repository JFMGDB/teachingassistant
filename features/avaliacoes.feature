Scenario: Cadastro de nota valida com sucesso
  Given que o aluno "Jose" esta matriculado na disciplina
  When o professor lanca a nota "9.5"
  Then a nota deve ser registrada com sucesso

Scenario: Tentativa de cadastro de nota negativa
  Given que o aluno "Felipe" esta matriculado na disciplina
  When o professor lanca a nota "-1.0"
  Then o sistema deve recusar o lancamento exibindo erro de valor invalido

Scenario: Tentativa de cadastro de nota acima do limite maximo
  Given que o aluno "Jose" esta matriculado na disciplina
  When o professor lanca a nota "11.0"
  Then o sistema deve recusar o lancamento informando que a nota maxima e 10.0

Scenario: Tentativa de lancamento de nota para aluno nao matriculado
  Given que o aluno "Carlos" nao esta cadastrado na disciplina
  When o professor tenta lancar uma nota
  Then o sistema deve bloquear a operacao informando aluno nao encontrado