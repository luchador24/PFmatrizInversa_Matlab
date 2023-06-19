clc
clear
disp("------------------ Menú ------------------")
disp("1. Matriz Transpuesta-Método de Gauss Jordan.")
disp("2. Inversa de una matriz por el método de ")
disp("   la adjunta de una matriz transpuesta.")
disp("3. Ecuaciones Lineales (Método de Cramer).")
disp("4. Salir")
disp(" ")
h=input("Ingrese el número de la opción que desea realizar: ");
while h>4
    clc
clear
disp("------------------ Menú ------------------")
disp("1. Matriz Transpuesta-Método de Gaus Jordan.")
disp("2. Inversa de una matriz por el método de ")
disp("   la ajunta de una matriz transpuesta.")
disp("3. Ecuaciones Lineales (Método de Crammer).")
disp("4. Salir")
disp(" ")
disp("**Debe de seleccionar una opción válida**")
h=input("Ingrese el número de la opción que desea realizar: ");
end

switch h
    case (1)
        clc
        fprintf("\n         Dimensiones de la Matriz A ")
        m=input("\n Ingrese el número de filas de la matriz A: ");
        n=input("\n Ingrese el número de columnas de la matriz A: ");
        for i=1: m
            for j=1: n
           disp(['El elemento (',num2str(i),', ', num2str(j),')'])
           A(i, j)=input("");
            end
        end
        disp("La matriz A es: ")
        A
        if (m==n)
            DET = det(A);
            if (DET==0)
                disp("La matriz B no tiene matriz inversa debido a que su determinante es igual a 0") 
            else
                disp("La matriz inversa de A es: ")
                INV=inv(A)
            end
        else
            disp("La matriz A no es cuadrada, por lo tanto no se puede realizar su inversa.")
        end
        
    case (2)
        clc
        fprintf("\n         Dimensiones de la Matriz B ")
        m=input("\n Ingrese el número de filas de la matriz B: ");
        n=input("\n Ingrese el número de columnas de la matriz B: ");
        for i=1: m
            for j=1: n
           disp(['El elemento (',num2str(i),', ', num2str(j),')'])
           B(i, j)=input("");
            end
        end
        clc
        disp("La matriz B es: ")
        B
        
         if (m==n)
            
            DET = det(B);
            
            if (DET==0)
                disp("La matriz B no tiene matriz inversa debido a que su determinante es igual a 0") 
            else
                disp("Determinante: ")
                DET
                
                adj = inv(B)*det(B);
                disp("La adjunta de una matriz transpuesta es: ")
                adj
             
                disp("La matriz inversa: ")
                INV=adj/DET;
                INV
            end
            
           
        else
            disp("La matriz B no es cuadrada, por lo tanto no se puede realizar su inversa.")
         end
       
    case(3)
        clc
        clear
        fprintf("\n             Método de Cramer");
        m=input("\n Ingrese el número de ecuaciones a realizar: ");
        n=input("\n Ingrese el número de incognitas: ");
        fprintf("\n Debe de ingresar los coeficientes de las incognitas. \n")
        
        if (m==n)
            for i=1: m
                for j=1: n
                    disp(['El elemento (',num2str(i),', ', num2str(j),')'])
                    Cramer(i, j)=input("");
                end
            end
            disp("La matriz es: ")
            
            Cramer
           
            DetCramer=det(Cramer);
            if (DetCramer==0)
               fprintf("\n El determinante de la matriz cramer es igual a 0, por lo tanto no se puede utilizar el método de cramer.");
               
            else
                fprintf("\n El determinante de la matriz original es: ");
                DetCramer
                 
                fprintf("\n Ingrese los valores del vector solución: ");
                for s=1:m
                    fprintf("\n Ingrese el valor de solución de la ecuación no. %d: ", s);
                    CramerSolucion(s, 1)=input("\");
                end
                fprintf("\n El vector solución es: ");
                CramerSolucion
                
                cont=1;
                while cont<=n
                   X=Cramer;
                   X(:,cont)=CramerSolucion;
                   resultado=det(X)/DetCramer;
                   fprintf("El resultado de X %d es: ", cont);
                   resultado
                  
                   cont=cont+1;
                end
              
                
            end
        else
            fprintf("\n No se puede realizar el método de cramer ya que la matriz no es cuadrada.");
        end
        
         
    case (4)
        clc
        disp("Muchas gracias por utilizar el programa Kg22")
end
      