package memo;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;
import java.util.List;

import config.DB;

public class MemoDAO {
	public List<MemoDTO> listMemo(){
		List<MemoDTO> items=new ArrayList<>();//다형성
		Connection conn=null;
		PreparedStatement pstmt=null;
		ResultSet rs=null;//select 쿼리의 결과셋을 탐색하는 클래스
		try {
			conn=DB.getConn();
			String sql="select * from memo order by idx desc";
			pstmt=conn.prepareStatement(sql);
			rs=pstmt.executeQuery();
			while (rs.next()) {
				MemoDTO dto=new MemoDTO();
				dto.setIdx(rs.getInt("idx"));
				dto.setWriter(rs.getString("writer"));
				dto.setMemo(rs.getString("memo"));
				dto.setPost_date(rs.getString("post_date"));
				items.add(dto);//리스트에 dto를 추가
			}
		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			try {
				if (rs != null) rs.close();
			} catch (Exception e2) {
				e2.printStackTrace();
			}
			try {
				if (pstmt != null) pstmt.close();
			} catch (Exception e2) {
				e2.printStackTrace();
			}
			try {
				if (conn != null) conn.close();
			} catch (Exception e2) {
				e2.printStackTrace();
			}
		}
		return items;
	}
}
