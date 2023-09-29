import java.util.Random;

public class GoF {



    public static void main(String[] args) {

        String[] d =
                {"인터페이스를 통해 서로 연관, 의존하는 객체들의 그룹으로 생성하여 추상적으로 표현",
                "작게 분리된 인스턴스를 건축 하듯이 조합하여 객체 생성",
                "객체 생성을 서브클래스에서 처리하도록 분리하여 캡슐화\n" +
                        "상위 클래스에서 인터페이스만 정의, 실제 생성은 서브 클래스가 담당",
                "원본 객체를 복제하는 방법\n" +
                        "일반적인방법으로 객체 생성, 비용이 큰 경우 주로 이용",
                "생성된 객체를 어디서든 참조할 수 있지만, 여러 프로세스가 동시에 참조할 수는 없음\n" +
                        "클래스 내에서 인스턴스가 하나뿐임을 보장하며, 불필요한 메모리 낭비 최소화",
                "호환성이 없는 클래스들의 인터페이스를 다른 클래스가 이용할 수 있도록 변환",
                "구현부에서 추상층을 분리하여 서로가 독립적으로 확장할 수 있도록 구성\n" +
                        "기능과 구현을 두 개의 별도 클래스로 구현",
                "여러 객체를 가진 복합 객체와 단일 객체를 구분 없이 다루고자 할 때 사용\n" +
                        "객체들을 트리 구조로 구성하여 디렉터리 안에 디렉터리가 있듯이 복합 객체 안에 복합 객체가 포함되는 구조를 구현할 수 있음",
                "객체 간의 결합을 통해 능동적으로 기능들을 확장\n" +
                        "임의의 객체에 부가적인 기능을 추가하기 위해 다른 객체들을 덧붙이는 방식으로 구현",
                "복잡한 서브클래스들을 피해 더 상위에 인터페이스를 구성, 서브클래스들의 기능을 간편하게 사용할 수 있도록 하는 패턴",
                "인스턴스가 필요할 때 가능한 공유해서 사용함으로써 메모리를 절약하는 패턴\n" +
                        "다수의 유사 객체를 생성하거나 조작할 때 유용",
                "복잡한 시스템을 개발하기 쉽도록 클래스나 객체들을 조합하는 패턴,\n" +
                        "내부에서는 객체 간의 복잡한 관계를 단순하게 정리, 외부에서는 객체의 세부적인 내용을 숨겨주는 역할",
                "한 객체가 처리하지못하면 다음 객체로 넘어가는 형태",
                "요청을 캡슐화하여 재이용하거나 취소할 수 있도록 요청에 필요한 정보를 저장하거나 로그에 남김",
                "언어에 문법 표현을 정의",
                "자료 구조와 같이 접근이 잦은 객체에 대해 동일한 인터페이스를 사용하도록 하는 패턴",
                "복잡한 상호작용을 캡슐화하여 객체로 정의\n" +
                        "객체 사이의 의존성을 줄여 결합도를 감소",
                "특정 시점에서의 객체 내부 상태를 객체화함으로써 이후 요청에 따라 객체를 해당 시점의 상태로 돌릴 수 있는 기능을 제공",
                "한 객체의 상태가 변화하면 객체에 상속되어 있는 다른 객체들에게 변화된 상태를 전달하는 패턴\n" +
                        "분산된 시스템 간에 이벤트를 생성, 발행하고 이를 수신해야할 때 이용",
                "객체의 상태에 따라 동일한 동작을 다르게 처리",
                "동일한 계열의 알고리즘들을 개별적으로 캡슐화하여 상호 교환\n" +
                        "클라이언트는 독립적으로 알고리즘 선택, 클라이언트에 영향 없이 알고리즘 변경 가능",
                "상위 클래스에서 골격 정의, 하위 클래스에서 세부 처리 구체화",
                "각 클래스들의 데이터 구조에서 처리 기능을 분리하여 별도의 클래스로 구성\n" +
                        "분리된 처리 기능은 각 클래스를 방문하여 수행"};


        /* 코드 가림
        -
        -
        -
        -
        -
        -
        -
        -
        -
        -
        -
        -
        -
        -
        -
        -
        -
        -
        -
        -
         */









int[] ab = new int [3];
for (int a = 0 ; a < 3 ; a++) {

    int i = (int) (Math.random() * 23);
    ab[a] = i;
    for (int b = 0; b < a ; b++) {
        if (ab[b] == i) {
            a--;
            continue;
        }
    }
    System.out.println("<\n" + d[i] + "\n>");


}
    }
}

