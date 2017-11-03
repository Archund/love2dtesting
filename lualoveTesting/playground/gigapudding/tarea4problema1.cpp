// Jose Carlos Archundia
// #155150


#include <iostream>

using namespace std;



void whileLoop();

void doWhile();

void forLoop();



int main() {
	
	int operacion;

	cout << "Como deseas hacer la operacion?  1- while  2- Do-while   3- for"<<endl;
	cin >> operacion;

	switch(operacion) {

		case 1:
			whileLoop();
			break;

		case 2:
			doWhile();
			break;

		case 3:
			forLoop();
			break;

		default:
			cout << "Operacion invalida" << endl;

	}


	//mantiene la consola abierta
	int x;
	cin >> x;
	return 0;
}


void whileLoop() {

	double cal;
	double calMenor = 10;
	double calMayor = 0;
	double promedio = 0;
	double total = 0;
	double porcentaje = 0;

	int n;

	int count = 0;

	cout << "Cunatas calificaciones vas a hacer?" << endl;

	cin >> n;

	cout << "Porfavor ingresa las calificaciones"<< endl;
	while (count < n) {

		cin >> cal;

		if (cal > calMayor) {
			calMayor = cal;
		}
		if (cal < calMenor) {
			calMenor = cal;
		}

		total = total + cal;

		if (cal > 6) {
			porcentaje++;
		}

	}

	promedio = total/n;

	porcentaje = porcentaje/total;


	
	cout << "La mayor calificacion es : " << calMayor << endl;
	cout << "La menor calificacion es : " << calMenor << endl;
	cout << "El promedio es : " << promedio << endl;
	cout << "El porcentaje de aprobados es : " << porcentaje << endl;

}





void doWhile() {

	double cal;
	double calMenor = 10;
	double calMayor = 0;
	double promedio = 0;
	double total = 0;
	double porcentaje = 0;

	int n;

	int count = 0;

	cout << "Cunatas calificaciones vas a hacer?" << endl;

	cin >> n;

	cout << "Porfavor ingresa las calificaciones"<< endl;
	do {

		cin >> cal;

		if (cal > calMayor) {
			calMayor = cal;
		}
		if (cal < calMenor) {
			calMenor = cal;
		}

		total = total + cal;

		if (cal > 6) {
			porcentaje++;
		}

	}while (count < (n-1));

	promedio = total/n;

	porcentaje = porcentaje/total;


	
	cout << "La mayor calificacion es : " << calMayor << endl;
	cout << "La menor calificacion es : " << calMenor << endl;
	cout << "El promedio es : " << promedio << endl;
	cout << "El porcentaje de aprobados es : " << porcentaje << endl;

}


void forLoop() {

	double cal;
	double calMenor = 10;
	double calMayor = 0;
	double promedio = 0;
	double total = 0;
	double porcentaje = 0;

	int n;

	cout << "Cunatas calificaciones vas a hacer?" << endl;

	cin >> n;

	cout << "Porfavor ingresa las calificaciones"<< endl;
	for (int i = 0; i < n; i++) {

		cin >> cal;

		if (cal > calMayor) {
			calMayor = cal;
		}
		if (cal < calMenor) {
			calMenor = cal;
		}

		total = total + cal;

		if (cal > 6) {
			porcentaje++;
		}

	}

	promedio = total/n;

	porcentaje = porcentaje/total;


	
	cout << "La mayor calificacion es : " << calMayor << endl;
	cout << "La menor calificacion es : " << calMenor << endl;
	cout << "El promedio es : " << promedio << endl;
	cout << "El porcentaje de aprobados es : " << porcentaje << endl;

}