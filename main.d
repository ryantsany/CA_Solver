import std.stdio;
import std.algorithm;
import solver;

void main(){
    string path = "./input";
    int[] val = parseInput(path);
    auto solve_P385 = new P385_Solver;
    val.each!(i => solve_P385.solver(i)), writeln();
}