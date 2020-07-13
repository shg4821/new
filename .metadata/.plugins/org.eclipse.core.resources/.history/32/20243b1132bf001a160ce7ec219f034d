package com.wi.bhg;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.Objects;

/* 데이터베이스 공통 클래스 */
public class Cdb {

	/* 1. 클래스멤버 변수 */
	static String conUrl = "jdbc:oracle:thin:@localhost:1521:orcl";
	static String cId = "SHG";
	static String cPwd = "Shg4821#";
	public static Connection cCon = null;

	/* 2. 오라클 연결 */
	public static void conOra() throws Exception {
		// 1. 드라이버 로딩
		Class.forName("oracle.jdbc.OracleDriver");
		// 2. 연결객체 생성
		cCon = DriverManager.getConnection(conUrl, cId, cPwd);
	}

	/* 3. 오라클 연결 닫기 */
	public static void disconOra() throws Exception {
		// 1. 연결 종료
		cCon.close();
	}

	/* 4. DML */
	public static void executeUpdate(String sql) {
		try {
			// 가. 오라클연결
			Cdb.conOra();
			// 나. DML 실행
			Cdb.cCon.createStatement().executeUpdate(sql);
			// 0. 오라클연결 종료
			Cdb.disconOra();
		} catch (Exception e) {
			System.out.printf("Cdb executeUpdate() 실행예외 ; %s", e.getMessage());
		}
	}

	public static PreparedStatement doPs(String sql) {
		try {
			// 가. 오라클연결
			Cdb.conOra();
			// 나. DML 실행
			return Cdb.cCon.prepareStatement(sql);
		} catch (Exception e) {
			System.out.printf("Cdb executeUpdate() 실행예외 ; %s", e.getMessage());
		}
		return null;
	}

	/* SELECT */
	public static ResultSet executeQuery(String sql) {
		try {
			// 가. 오라클연결
			Cdb.conOra();
			// 나. SELECT 실행
			ResultSet rs = Cdb.cCon.createStatement().executeQuery(sql);
			if (!Objects.isNull(rs)) {
				return rs;
			}

		} catch (Exception e) {
			System.out.printf("Cdb executeQuery() 실행예외 ; %s", e.getMessage());
		}
		return null;
	}
}