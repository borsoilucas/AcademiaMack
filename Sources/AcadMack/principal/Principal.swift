import Foundation

public class Principal {
    
    func exibir() {
        
        let novaPessoa = Pessoa(nome: "Lucas", email: "luca.borsoi@gmail.com")
        print(novaPessoa.getDescricao())
    }
}