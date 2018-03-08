package classroomRental.dto;

public class StaffShowBoardDto {
	private int bronumber;// 게시판에 순서대로 입력되는 번호
	private int id; // 작성자 ID
	private String name; // 작성자 이름
	private int grade; // 등급
	private int approval; // 승인 여부 2이면 승인으로 생각

	public int getBronumber() {
		return bronumber;
	}

	public void setBronumber(int bronumber) {
		this.bronumber = bronumber;
	}

	public int getId() {
		return id;
	}

	public void setId(int id) {
		this.id = id;
	}

	public int getGrade() {
		return grade;
	}

	public void setGrade(int grade) {
		this.grade = grade;
	}

	public int getApproval() {
		return approval;
	}

	public void setApproval(int approval) {
		this.approval = approval;
	}

	public String getName() {
		return name;
	}

	public void setName(String name) {
		this.name = name;
	}
}
