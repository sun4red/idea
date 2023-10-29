select * from board;


CREATE TABLE board (
num INT PRIMARY KEY AUTO_INCREMENT,
name VARCHAR(10),
subject VARCHAR(30),
content VARCHAR(1000),
file VARCHAR(30),
re_ref INT,
re_lev INT,
re_seq INT,
readcount INT DEFAULT 0,
board_date TIMESTAMP DEFAULT CURRENT_TIMESTAMP
);

delete from board;

PDATE board SET re_ref = (SELECT MAX(num) FROM board)+1 WHERE re_ref = 1;
UPDATE board SET re_ref = (SELECT MAX(num) FROM board)+1 WHERE re_ref = 1;
UPDATE board SET re_ref = re_ref + 1 WHERE re_ref = 1;
insert into board (name, re_ref) values('선홍', 0);
INSERT INTO board (name, subject, content, file, re_ref, re_lev, re_seq, readcount, board_date) VALUES ('테스트', '제목', '내용', null, 0, 0, 0, 0, '2022-07-01 10:00:00');