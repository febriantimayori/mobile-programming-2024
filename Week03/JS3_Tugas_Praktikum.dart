
void main() {
// PRAKTIKUM 1
    /* String test = "test2";
    if (test == "test1") {
        print("Test1");
    } else if (test == "test2") {
        print("Test2");
    } else {
        print("Something else");
    }
    
    if (test == "test2") print("Test2 again"); */

    // Langkah 3
    /* String test = "true";
    if (test == "true") {
        print("Kebenaran");
    } else {
        print("Kesalahan"); 
    } */

// PRAKTIKUM 2
    /* int counter = 1;
    while (counter < 33) {
        print(counter);
        counter++;
    } */
   
   // Langkah 3
   /* int counter = 1;
   do {
     print(counter);
     counter++;
     } while (counter < 77); */

// PRAKTIKUM 3
/* int index;
    for (index = 10; index < 27; index++) {
        print(index);
    } */

   // Langkah 3
    int index;
    for (index = 1; index < 27; index++) {
        if (index == 21)
        break;
        else if (index > 1 || index < 7) continue;
    }
    print(index);
}