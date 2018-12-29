package BEAN;

import java.util.*;

public class Test {
	private Integer testid;
	private Date datetimestart ;
	private Date datetimeend;
	private String timestart;
	private String timeend;
	private Integer time;
	private Integer number_question ;
	private Integer testtypeid;
	private Integer subjectid;
	private String testtypename;
	private String subjectname;
	
	public Test() {}
	
	public Test(Integer testid) {
		this.testid=testid;
	}
	public Test(Integer testid, String datetimestart, String datetimeend, 
			Integer time,String testtypename, String subjectname)
	{
		this.testid=testid;
		this.timestart=datetimestart;
		this.timeend=datetimeend;
		this.time=time;
		this.testtypename=testtypename;
		this.subjectname=subjectname;
	}
	
	public Test(Integer testid, String datetimestart, String datetimeend, 
			Integer time, Integer number_question, String testtypename, String subjectname)
	{
		this.testid=testid;
		this.timestart=datetimestart;
		this.timeend=datetimeend;
		this.time=time;
		this.number_question= number_question;
		this.testtypename=testtypename;
		this.subjectname=subjectname;
	}
	
	public Test(Integer testid, String datetimestart, String datetimeend, 
			Integer time, Integer number_question, Integer testtypeid, Integer subjectid)
	{
		this.testid=testid;
		this.timestart=datetimestart;
		this.timeend=datetimeend;
		this.time=time;
		this.number_question= number_question;
		this.testtypeid=testtypeid;
		this.subjectid=subjectid;
	}
	
	public Test(Integer testid, String datetimestart, String datetimeend, Integer time, Integer number_question) {
		this.testid=testid;
		this.timestart=datetimestart;
		this.timeend=datetimeend;
		this.time=time;
		this.number_question= number_question;
	}
	
	public Test(String datetimestart, String datetimeend, Integer time, Integer number_question, Integer testtypeid, Integer subjectid)
	{
		this.timestart=datetimestart;
		this.timeend=datetimeend;
		this.time=time;
		this.number_question= number_question;
		this.testtypeid=testtypeid;
		this.subjectid=subjectid;
	}
	
	public Integer getTestid() {
		return testid;
	}

	public void setTestid(int testid) {
		this.testid = testid;
	}
	
	public Date getDatetimestart() {
		return datetimestart;
	}

	public void setDatetimestart(Date datetimestart) {
		this.datetimestart = datetimestart;
	}

	public Date getDatetimeend() {
		return datetimeend;
	}

	public void setDatetimeend(Date datetimeend) {
		this.datetimeend = datetimeend;
	}
	
	public Integer getTime() {
		return time;
	}

	public void setTime(Integer time) {
		this.time = time;
	}
	
	public Integer getTesttypeid() {
		return testtypeid;
	}

	public void setTesttypeid(int testtypeid) {
		this.testtypeid = testtypeid;
	}
	
	public int getSubjectid() {
		return subjectid;
	}

	public void setSubjectid(int subjectid) {
		this.subjectid = subjectid;
	}
	
	public Integer getNumber_question() {
		return number_question;
	}

	public void setnumber_question(int number_question) {
		this.number_question = number_question;
	}
	
	
	public String getTesttypename() {
		return testtypename;
	}

	public void setTesttypename(String testtypename) {
		this.testtypename = testtypename;
	}
	
	public String getTimestart() {
		return timestart;
	}

	public void setTimestart(String timestart) {
		this.timestart = timestart;
	}
	
	public String getTimeend() {
		return timeend;
	}

	public void setTimeend(String timeend) {
		this.timeend = timeend;
	}
	
	public String getSubjectname() {
		return subjectname;
	}

	public void setSubjectname(String subjectname) {
		this.subjectname = subjectname;
	}
	
}
