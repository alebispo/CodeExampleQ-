//Uso de Mais de Um Qubit
namespace Demonstracao {

    @EntryPoint()
    operation MaisQubit() : Unit {
        Message("Demonstrando ou uso de mais de um qubit");
        use qs = Qubit[3];

        for index in 0..2 {
            Message($"Aplicando Hadmard no qubit: {index}");
            H(qs[index]);

            Message($"Medindo o qubit: {index}");
            let result = M(qs[index]);

            if(result == One){
                Message("One");
            }else{
                Message("Zero");
            }

        }

        ResetAll(qs);
        
    }
}
