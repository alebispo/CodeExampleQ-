//Algoritmo de Deutsch
namespace QuantumHelloWorld {
    open Microsoft.Quantum.Intrinsic;
    open Microsoft.Quantum.Measurement;
    open Microsoft.Quantum.Math;

    @EntryPoint()
    operation RandomBit() : Unit {
        Message("Identidade: ");
        MinimalDeutshAlgoritm(Oracle_I);

        Message("PauliZ: ");
        MinimalDeutshAlgoritm(Oracle_Z);

        Message("-Identidade: ");
        MinimalDeutshAlgoritm(Oracle_Menos_I);

        Message("-PauliZ: ");
        MinimalDeutshAlgoritm(Oracle_Menos_Z);
       
    }

    operation Oracle_I(x: Qubit): Unit{
        I(x);
    }

     operation Oracle_Z(x: Qubit): Unit{
        Z(x);
    }

    ///Menos Identidade
    // Na identidade negativa, vamos aplicar uma mudança de fase global de -1 no estado,
    // para isso usamos a operacao R, que irá rotacionar o eixo.
    operation Oracle_Menos_I(x: Qubit): Unit {
        R(PauliI, 2.0 * PI(), x);
    }

    operation Oracle_Menos_Z(x: Qubit): Unit {
        Z(x);
        R(PauliI, 2.0 * PI(), x);
    }


    operation MinimalDeutshAlgoritm(oracle :(Qubit => Unit)) : Unit {
        use q = Qubit();

        H(q);
        oracle(q);
        H(q);

        if(M(q) == Zero) {
            Message("Is constant")
        }
        else{
            Message("Is balanced")
        }
        Reset(q);
    }

}
