module solver;
import std.stdio;
import std.container.array;
import std.algorithm.sorting;

int[] parseInput(string data){
        File inputFile = File(data, "r");
        int[] inputData;
        int num;
        int len;
        inputFile.readf("%d\n", len);
        while(!inputFile.eof()){
            inputFile.readf("%d ", num);
            inputData ~= num;
        }

        return inputData;
    }

class P29_Solver{ 
    int[] sortIndex(int[] x){
        int[] index = new int[x.length];
        makeIndex!("a < b")(x, index);
        return index;
    }  
}

class P385_Solver{
    void solver(int n){
        auto pairs = Array!long(2, 1);

        for (int i = 0; i < (n-1); i++){
            long temp = pairs[0];
            pairs[0] = pairs[0] + pairs[1];
            pairs[1] = temp;
        }

        writef("%d %d ", pairs[0], pairs[1]);
    }
}

