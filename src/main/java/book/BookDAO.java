package book;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;

import config.DB;
//DAO(Data Access Object) : 주로 DB와 연결되어 쿼리문처리하는 비지니스로직 파일
public class BookDAO {
	public ArrayList<BookDTO> bookList(){
		//DB데이터를 배열화해서 값을 처리하기위한 컬렉션 계열의 ArrayList
		ArrayList<BookDTO> items=new ArrayList<>();
		Connection conn=null;
		PreparedStatement pstmt=null;
		ResultSet rs=null;
		try {
			conn = DB.getConn();//DB커넥션
			String sql="select * from book";
			pstmt=conn.prepareStatement(sql);
			rs=pstmt.executeQuery();//select문 전용 sql 실행
			while (rs.next()) {
				BookDTO dto = new BookDTO();
				//DB에서 각 컬럼의 값을 가져와 setter를 통해 DTO에 값을 전달
				dto.setId(rs.getInt("id"));
				dto.setTitle(rs.getString("title"));
				dto.setAuthor(rs.getString("author"));
				dto.setPrice(rs.getInt("price"));
				dto.setQty(rs.getInt("qty"));
				items.add(dto);//리스트에 dto 추가
			}
			
		} catch (Exception e) {
			e.printStackTrace();
		} finally {//사용된 리소스를 역순으로 정리
			try {
				if(rs != null) rs.close();
			} catch (Exception e2) {
				e2.printStackTrace();
			}
			try {
				if(pstmt != null) pstmt.close();
			} catch (Exception e2) {
				e2.printStackTrace();
			}
			try {
				if(conn != null) conn.close();
			} catch (Exception e2) {
				e2.printStackTrace();
			}
		}
		return items;
	}

}
