package sec02.datatype;

public class datatype03 {
    public static void main(String[] args) {
        String univ = "학생";

        //  일반적으로는 아래와 같이 선언과 초기화를 동시에
        int age = 20;
        boolean isMarried = false;
        double height = 179.99;
        char sex = 'M';
        String name = "홍길동";

        //  변수 - 값을 변경할 수 있다는 의미
        age = 21;

        //  ⭐️ 자바는 정적 자료형
        //  ⚠️ 주머니와 자료형이 다른 데이터는 넣을 수 없음
        //  - 크기가 다른 주판으로 갈아끼울 수 없음
        //  컴파일 단계에서 차단됨

        // age = false;
        // isMarried = "안함";
        // sex = 1.2
        // name = 3;
    }
}