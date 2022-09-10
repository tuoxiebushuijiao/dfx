import Sort "sort";
import Array "mo:base/Array";

actor{
  public func greet(name : Text) : async Text {
    return "Hello, " # name # "!";
  };
  
  public func qsort(array : [Int]) : async [Int] {
    var a = Array.thaw<Int>(array);
    //return array;
    Sort.quicksort((a, 0, array.size() -1));
    return Array.freeze<Int>(a);
  }

};
