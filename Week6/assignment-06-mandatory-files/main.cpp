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
{
    // pre-conditions, post-conditions, implementation
    //Make sure if the requested value is in-bounds
    assert((row>0)&&(column>0));
    if (row>NO_OF_COLUMNS||column>NO_OF_COLUMNS) return Dead;
    else return universe[NO_OF_COLUMNS][NO_OF_COLUMNS];
}

// Part 2: setting the scene
bool read_universe_file (string filename, Cell universe [NO_OF_ROWS][NO_OF_COLUMNS])
{
    char in;
    Cell out;
    int row=0;
    //is file open?
    assert(open_file(input_file, filename));
    for (int i=0; i<=40; i++){
         in = input_file.get();
         //if new-line, go to the next row, else just save the next character
         if (in=='\n') {
            row++;
            in = input_file.get();
         }

         universe [row][i] = char_to_cell(in);



    }
    return false;
}

void show_universe (Cell universe [NO_OF_ROWS][NO_OF_COLUMNS])
{
    // pre-conditions, post-conditions, implementation
}

// Part 3: the next generation
void next_generation (Cell now [NO_OF_ROWS][NO_OF_COLUMNS], Cell next [NO_OF_ROWS][NO_OF_COLUMNS])
{
    // pre-conditions, post-conditions, implementation
}

#ifndef TESTING
int main ()
{
    string filename = "10_cell_row.txt";
    open_file(input_file, filename);
    Cell universe [NO_OF_ROWS][NO_OF_COLUMNS];
    read_universe_file(filename, universe);
    cout << cell_at(universe, 0, 0);
    return 0;
}
#endif
