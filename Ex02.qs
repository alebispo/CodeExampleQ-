/// # Aplicando a porta Hadamard
///
namespace ExemploQuantumQShapr {

    open Microsoft.Quantum.Intrinsic;
    open Microsoft.Quantum.Measurement;

    @EntryPoint()
    operation Exemplo02() : Result {
        Message("Exemplo 02");
        
        use q = Qubit();

        H(q);
        
        return MResetZ(q);
    }
}
