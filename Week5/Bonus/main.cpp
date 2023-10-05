#include <iostream>
#include <fstream>          // for file I/O
#include <cassert>          // for assertion checking

using namespace std;

enum Action {Encrypt, Decrypt} ;

int seed = 0 ;
void initialise_pseudo_random (int r)
{
//  pre-condition:
    assert (r > 0 && r <= 65536) ;
/*  post-condition:
    seed has value r.
*/
    seed = r ;
}

int next_pseudo_random_number ()
{
//  pre-condition:
    assert (seed > 0 && seed <= 65536) ;
/*  post-condition:
    result value > 0 and result value <= 65536 and result value != seed at entry of function
*/
    const int seed75 = seed * 75 ;
    int next = (seed75 & 65535) - (seed75 >> 16) ;
    if (next < 0)
        next += 65537 ;
    seed = next ;
    return next ;
}

char to_char(int ASCII){
    return '0'+ASCII;
}

char rotate_char (char a, int r, Action action)
{
    //  Pre-condition:
    assert(r>=0 && (action==Encrypt||action==Decrypt));
    //  Post-condition:
    //      Returns the result of the formula depending if the action is en- or decrypt 
    cout << a << endl;
    if(a<32) return a;
    if(action == Encrypt) return (a-32+(r%(128-32)))%(128-32)+32;
    else return (a-32-(r%(128-32))+(128-32))%(128-32)+32;

}
string use_OTP (ifstream& infile, ofstream& outfile, Action action, int initial_value)
{
//  Pre-condition:
//  No assert because all the parameters are known goods
//  Post-condition:

    char a;
    string output;

    initialise_pseudo_random(initial_value);
        do {
            //read the first character in a file
            infile.get(a);
            //Encrypt the character
            output = output + rotate_char(a, next_pseudo_random_number(), action);
            
        }
        while (!infile.eof());
        return output;
}

bool open_input_and_output_file (ifstream& infile, ofstream& outfile)
{
//  Pre-condition:
//  Post-condition:
    infile.open("secret.txt");
    outfile.open("test.txt");
}

bool is_english(string String){
    return (String.find("The") || String.find("the"));
}

int brute_force(ifstream& infile, ofstream& outfile){

    string Output = "the";
    for(int i=0; i<65536; i++){
        Output = use_OTP(infile, outfile, Decrypt, i);
        if (is_english(Output)){
            return i;
        cout << i << endl;
        }
    }
}

#ifndef TESTING
int main ()
{
    ifstream input_file;
    ofstream output_file;
    open_input_and_output_file(input_file, output_file);
    int result = brute_force(input_file, output_file);
    cout << "The result is:" << result << endl;
    cout << use_OTP(input_file, output_file, Decrypt, result) << endl;
    return 0;
}
#endif
