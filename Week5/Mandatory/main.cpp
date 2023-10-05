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
    const int SEED75 = seed * 75 ;
    int next = (SEED75 & 65535) - (SEED75 >> 16) ;
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

bool open_input_and_output_file (ifstream& infile, ofstream& outfile)
{
//  Pre-condition:
//  Post-condition:
    string input_filename;
    string output_filename;
    cout << "What is the filename of the input file?" << endl;
    cin >> input_filename;
    cout << "What is the filename of the output file?" << endl;
    cin >> output_filename;
    infile.open(input_filename);
    outfile.open(output_filename);
    return (!infile.fail() && !outfile.fail());
}

Action get_user_action ()
{// Pre-condition:
    assert ( true ) ;
/*  Post-condition:
    result is the Action that the user has indicated that the program should encrypt / decrypt
*/
    cout << "Do you want to encrypt the file? (y/n): " ;
    string answer ;
    cin  >> answer ;
    if (answer == "y")
        return Encrypt;
    else
        return Decrypt;
}

int initial_encryption_value ()
{// Pre-condition:
    assert (true) ;
/*  Post-condition:
    result is a value between 0 and 65355 (both inclusive)
*/
    int initial_value = -1 ;
    while (initial_value < 0 || initial_value > 65535)
    {
        cout << "Please enter the initial coding value (greater or equal to 0 and less than 65536)" << endl ;
        cin  >> initial_value ;
    }
    return initial_value ;
}

void use_OTP (ifstream& infile, ofstream& outfile, Action action, int initial_value)
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
        cout << output << endl;
        outfile << output;
}

#ifndef TESTING
int main ()
{
    const Action ACTION = get_user_action();
    ifstream input_file;
    ofstream output_file;
    if (!open_input_and_output_file (input_file,output_file))
    {
        cout << "File name invalid, please note that filenames cannot include layout symbols." << endl;
        cout << "Program aborted." << endl;
        return -1;
    }
    const int INITIAL_VALUE = initial_encryption_value ();
    use_OTP (input_file,output_file,ACTION,INITIAL_VALUE);
    input_file.clear ();
    output_file.clear ();
    input_file.close ();
    output_file.close ();

    if (!input_file || !output_file)
    {
        cout << "Not all files were closed successfully. The output might be incorrect." << endl;
        return -1;
    }
    return 0;
}
#endif
