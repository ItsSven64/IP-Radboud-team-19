#include <iostream>
#include <fstream>
#include <cassert>
 
using namespace std;

enum Cell {Dead=0, Live};                         // a cell is either Dead or Live (we use the fact that dead = 0 and live = 1)

const char DEAD             = '.' ;               // the presentation of a dead cell (both on file and screen)
const char LIVE             = '*' ;               // the presentation of a live cell (both on file and screen)
const int NO_OF_ROWS        = 40 ;                // the number of rows (height) of the universe (both on file and screen)
const int NO_OF_COLUMNS     = 60 ;                // the number of columns (width) of the universe (both on file and screen)

ifstream input_file;
//Opens input file, and returns true if suceeded

bool open_file(ifstream& in_file, string filename){
    assert(true);
    in_file.open(filename);
    return !in_file.fail();
}

Cell char_to_cell(char in){
    if (in == LIVE) return Live;
    else return Dead;
}

char cell_to_char(Cell in){
    if (in == Dead) return DEAD;
    else return LIVE;
}

// Part 1: get cell in bounded universe
Cell cell_at (Cell universe [NO_OF_ROWS][NO_OF_COLUMNS], int row, int column)
{   //Make sure if the requested value is in-bounds
    assert(true);
    if (row>NO_OF_ROWS-1||column>NO_OF_COLUMNS-1||row<0||column<0) return Dead;
    else return universe[row][column];
}

void read_line (Cell universe [NO_OF_ROWS][NO_OF_COLUMNS], int row, Cell line [NO_OF_COLUMNS]){
    for (int i=0; i<NO_OF_COLUMNS; i++) line[i] = cell_at(universe, row, i);
}

int has_neighbours (int i, int j, Cell universe [NO_OF_ROWS][NO_OF_COLUMNS]){
    int result = 0;
    if (cell_at(universe, i+1, j)) result++;
    if (cell_at(universe, i+1, j+1)) result++;
    if (cell_at(universe, i-1, j+1)) result++;
    if (cell_at(universe, i+1, j-1)) result++;
    if (cell_at(universe, i, j+1)) result++;
    if (cell_at(universe, i, j-1)) result++;
    if (cell_at(universe, i-1, j)) result++;
    if (cell_at(universe, i-1, j-1)) result++;
    return result;
}

// Part 2: setting the scene
bool read_universe_file (string filename, Cell universe [NO_OF_ROWS][NO_OF_COLUMNS])
{
    char in;
    //is file open?
    assert(!input_file.fail());
    for (int j=0; j<NO_OF_ROWS; j++){ //iterate through the rows
        for (int i=0; i<NO_OF_COLUMNS; i++){ //iterate through the columns
            in = input_file.get();
            if (input_file.fail()) cout << "FAIL!" << endl;
            universe [j][i] = char_to_cell(in);
        }
        input_file.get();
        //read the new-line character to prevent mismatched characters
    }
    return !input_file.fail();
}

void show_universe (Cell universe [NO_OF_ROWS][NO_OF_COLUMNS])
{
    assert(true);
    char out;
    for(int j=0; j<NO_OF_ROWS; j++){
        for(int i=0; i<NO_OF_COLUMNS; i++){
            out = cell_to_char(cell_at(universe, j, i));
            cout << out;
        }
        cout << endl;
    }
}

// Part 3: the next generation
void next_generation (Cell now [NO_OF_ROWS][NO_OF_COLUMNS], Cell next [NO_OF_ROWS][NO_OF_COLUMNS])
{
    assert(true);
    Cell line[NO_OF_COLUMNS];

    for (int i=0; i<NO_OF_ROWS; i++){
        for (int j=0; j<NO_OF_COLUMNS; j++){
            switch (has_neighbours(i, j, now)){
                case 0:
                case 1: next[i][j] = Dead;
                break;
                case 2: next[i][j] = now[i][j];
                break;
                case 3: next[i][j] = Live;
                break;
                case 4:
                case 5:
                case 6:
                case 7:
                case 8: next [i][j] = Dead;
                break;
            }
        }
    }
    //update universe (now=next)
    for (int j=0; j<NO_OF_ROWS; j++){ //iterate through the rows
        for (int i=0; i<NO_OF_COLUMNS; i++){ //iterate through the columns
            now [j][i] = next [j][i];
        }
        //read the new-line character to prevent mismatched characters
    }
    
}

#ifndef TESTING
int main ()
{
    string filename = "glider0.txt";
    open_file(input_file, filename);
    Cell universe [NO_OF_ROWS][NO_OF_COLUMNS];
    Cell next_universe [NO_OF_ROWS][NO_OF_COLUMNS];
    read_universe_file(filename, universe);
    int it =0;
    cout << "How many generations do you want?" << endl;
    cin >> it;
    for (int i=0; i<=it; i++){
        show_universe(universe);
        cout << endl;
        next_generation(universe, next_universe);
    }
    return 0;
}
#endif
