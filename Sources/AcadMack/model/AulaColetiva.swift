class AulaColetiva: Aula {
    private(set) var alunosInscritos: [String: Aluno]
    let capacidadeMaxima = 25

    init(nome: String, instrutor: Instrutor, aluno: Aluno) {
        self.alunosInscritos = [aluno.matricula: aluno]

        super.init(nome: nome, instrutor: instrutor)
    }

    func inscrever(aluno: Aluno) -> Bool {

        if (alunosInscritos.count >= 25) {
            print("Aula ja atingiu capacidade maxima!")
            return false
        }

        for (key, _) in alunosInscritos {
            if (key == aluno.matricula) {
                print("Aluno ja matriculado!")
                return false
            }
        }
        alunosInscritos[aluno.matricula] = aluno
        print("Aluno matriculado com sucesso!")
        return true
    }

    override func getDescricao() -> String {
    return "Numero de vagas ocupadas: \(alunosInscritos.count) | Numero limite de vagas \(capacidadeMaxima)"
    }
}