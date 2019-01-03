
INSERT INTO t (pertanyaan, jawaban_a, jawaban_b, jawaban_c ) VALUES ();

=CONCATENATE("INSERT INTO t (pertanyaan, jawaban_a, jawaban_b, jawaban_c ) VALUES ('",B4,"','",E4,"','",F4,"','",G4,"');")

DROP TABLE if exists t; 
CREATE TABLE t (
	id BIGINT(11) NOT NULL PRIMARY KEY AUTO_INCREMENT,
	pertanyaan VARCHAR(1024) NOT NULL,
	jawaban_a VARCHAR(1024) NOT NULL,
	jawaban_b VARCHAR(1024) NOT NULL,
	jawaban_c VARCHAR(1024) NOT NULL,
	INDEX(jawaban_a),
	INDEX(jawaban_b),
	INDEX(jawaban_c)
);

