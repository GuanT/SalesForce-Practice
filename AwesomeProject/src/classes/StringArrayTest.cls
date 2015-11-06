public class StringArrayTest {
    public static List<String> generateStringArray(Integer n){
        List<String> stString = new List<String>();
        for(Integer i = 0;i<n;i++){
            stString.add('Test '+i);
        }
        return stString;
        
  
    }
}