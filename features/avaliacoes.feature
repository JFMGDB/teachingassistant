Scenario: Cadastro de nota valida com sucesso
  Given que o aluno "Felipe" esta matriculado na disciplina
  When o professor lanca a nota "9.5"
  Then a nota deve ser registrada com sucesso

Scenario: Tentativa de cadastro de nota negativa
  Given que o aluno "Felipe" esta matriculado na disciplina
  When o professor lanca a nota "-1.0"
  Then o sistema deve recusar o lancamento exibindo erro de valor invalido