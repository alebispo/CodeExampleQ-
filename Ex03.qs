/// # Aplicando a porta NOT e criando operacoes
///
namespace ExemploQuantumQShapr {

    open Microsoft.Quantum.Intrinsic;
    open Microsoft.Quantum.Measurement;

    operation Set(valor: Result, q: Qubit): Unit {
        if(M(q) != valor) {
            //Aplicacao da porta NOT
            X(q);
        }
    }

    @EntryPoint()
    operation Exemplo03() : Result {
        Message("Exemplo 03");
        
        use q = Qubit();

        H(q);

        Set(One, q);
        
        return MResetZ(q);
    }
}
