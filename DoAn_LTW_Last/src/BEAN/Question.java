package BEAN;



public class Question {
	private Integer testid;
	private Integer questionid;
	private Integer number;
	private String contentquestion;
	private String optionA;
	private String optionB;
	private String optionC;
	private String optionD;
	private String correctoption;
	private Integer questiontypeid;
	private String questiontypename;
	
	public Question() {}
	
	public Question(Integer testid, Integer questionid, Integer number, String contentquestion,
					String optionA, String optionB, String optionC, String optionD, 
					String correctoption, Integer questiontypeid, String questiontypename )
	{
		this.testid = testid;
		this.questionid = questionid;
		this.number = number;
		this.contentquestion = contentquestion;
		this.optionA = optionA;
		this.optionB = optionB;
		this.optionC = optionC;
		this.optionD = optionD;
		this.correctoption = correctoption;
		this.questiontypeid = questiontypeid;
		this.questiontypename = questiontypename;
	}
	public Question(Integer testid, Integer questionid, Integer number, String contentquestion,
			String optionA, String optionB, String optionC, String optionD, 
			String correctoption, Integer questiontypeid)
{
this.testid = testid;
this.questionid = questionid;
this.number = number;
this.contentquestion = contentquestion;
this.optionA = optionA;
this.optionB = optionB;
this.optionC = optionC;
this.optionD = optionD;
this.correctoption = correctoption;
this.questiontypeid = questiontypeid;
}
	public Question(Integer number, String contentquestion,
			String optionA, String optionB, String optionC, String optionD, 
			String correctoption ) {
		this.number = number;
		this.contentquestion = contentquestion;
		this.optionA = optionA;
		this.optionB = optionB;
		this.optionC = optionC;
		this.optionD = optionD;
		this.correctoption = correctoption;
	}
	public Question(Integer questionid, Integer number, String contentquestion,
			String optionA, String optionB, String optionC, String optionD, 
			String correctoption ) {
		this.questionid= questionid;
		this.number = number;
		this.contentquestion = contentquestion;
		this.optionA = optionA;
		this.optionB = optionB;
		this.optionC = optionC;
		this.optionD = optionD;
		this.correctoption = correctoption;
	}
	
	public int getTestid() {
		return testid;
	}

	public void setTestid(int testid) {
		this.testid = testid;
	}
	public int getQuestionid() {
		return questionid;
	}

	public void setQuestionid(int questionid) {
		this.questionid = questionid;
	}
	
	public int getNumber() {
		return number;
	}

	public void setNumber(int number) {
		this.number = number;
	}
	
	public String getContentquestion() {
		return contentquestion;
	}

	public void setContentquestion(String contentquestion) {
		this.contentquestion = contentquestion;
	}
	
	public String getOptionA() {
		return optionA;
	}

	public void setOptionA(String optionA) {
		this.optionA = optionA;
	}
	
	public String getOptionB() {
		return optionB;
	}

	public void setOptionB(String optionB) {
		this.optionB = optionB;
	}
	
	public String getOptionC() {
		return optionC;
	}

	public void setOptionC(String optionC) {
		this.optionC = optionC;
	}
	
	public String getOptionD() {
		return optionD;
	}

	public void setOptionD(String optionD) {
		this.optionD = optionD;
	}
	
	public String getCorrectoption() {
		return correctoption;
	}

	public void setCorrectoption(String correctoption) {
		this.correctoption = correctoption;
	}
	
	public Integer getQuestiontypeid() {
		return questiontypeid;
	}

	public void setQuestiontypeid(Integer questiontypeid) {
		this.questiontypeid = questiontypeid;
	}
	
	public String getQuestiontypename() {
		return questiontypename;
	}

	public void setQuestiontypename(String questiontypename) {
		this.questiontypename = questiontypename;
	}
	
}
