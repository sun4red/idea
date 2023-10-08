create table gof(
pattern varchar(50),
name varchar(50),
content varchar(1000));

drop table gof;


show databases;
create database study;
use study;

show tables;

insert into gof (pattern, name, content) values(
'create' 'Abstract Factory' '인터페이스를 통해 서로 연관 의존하는 객체들의 그룹으로 생성하여 추상적으로 표현',
'create' 'Builder''작게 분리된 인스턴스를 건축 하듯이 조합하여 객체 생성',  
'create' 'Factory Method''가상 생성자 Virtual Constructor 객체 생성을 서브클래스에서 처리하도록 분리하여 캡슐화 상위 클래스에서 인터페이스만 정의 실제 생성은 서브 클래스가 담당', 
'create' 'Prototype' '원본 객체를 복제하는 방법
일반적인방법으로 객체 생성, 비용이 큰 경우 주로 이용',
'create' 'Singleton' '생성된 객체를 어디서든 참조할 수 있지만, 여러 프로세스가 동시에 참조할 수는 없음
클래스 내에서 인스턴스가 하나뿐임을 보장하며, 불필요한 메모리 낭비 최소화');
