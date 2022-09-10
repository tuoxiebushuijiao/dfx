
module{
  public func quicksort(array : [var Int], left : Nat, right : Nat) {
    if (left >= right) {
      return;
    };
    //获取基准值
    let baseNum = array[left];
    var _left = left;
    var _right = right;
    while (_right != _left) {
      //右侧先找
      while (_left < _right and array[_right] >= baseNum) {
        _right -= 1;
      };
      while (_left < _right and array[_left] <= baseNum) {
        _left += 1;
      };
      let _temp = array[_right];
      array[_right] := array[_left];
      array[_left] := _temp;
    };
    array[left] := array[_left];
    array[_left] := baseNum;
    
    quicksort(array, left, _left -1);
    quicksort(array, _left+1, right);

  };


}



/**
    快速排序
*/
// public func quicksort(nums : [var Int]) async Text{
//     Nat rightIndex = nums.size-1; 
//     Nat leftIndex = 1; 
//     if(nums.size < 1){
//         return "无需排序"
//     }
//     let baseValue = nums[0];
//     while(rightIndex != leftIndex){
//         //查找数组右边小于基准值的索引
//         while(nums[rightIndex] < baseValue){
//             rightIndex --;
//         }
//         //查找数组左边大于基准值的索引
//         while(nums[leftIndex] > baseValue){
//             leftIndex ++
//         }
//         //换值
//         int tmp = nums[rightIndex];
//         nums[rightIndex] =  nums[leftIndex];
//         nums[leftIndex] = tmp;

        
//     }


// }

