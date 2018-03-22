package classroomRental.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;

import classroomRental.dto.BoardDto;
import classroomRental.dto.DateDto;
import classroomRental.dto.Pagination;
import classroomRental.dto.SeungyeonDto;
import classroomRental.dto.SurveyDto;
import classroomRental.dto.SwapWriteDto;
import classroomRental.dto.User;
import classroomRental.mapper.BoardInfo;
import classroomRental.mapper.DateInfo;
import classroomRental.mapper.DepartmentInfo;
import classroomRental.mapper.IcheoneunuchInfo;
import classroomRental.mapper.IlmangwanInfo;
import classroomRental.mapper.MigaelgwanInfo;
import classroomRental.mapper.MillenniumcenterInfo;
import classroomRental.mapper.SaintMichaelInfo;
import classroomRental.mapper.SeungyeonInfo;
import classroomRental.mapper.SurveyInfo;
import classroomRental.mapper.SwapWriteInfo;
import classroomRental.mapper.UserInfo;
import classroomRental.mapper.WoldanggwanInfo;
import classroomRental.service.SeungyeonInfoService;
import classroomRental.service.UserService;

@Controller
@RequestMapping("view")
public class LectureroomController {

	@Autowired
	private SurveyInfo surveyInfo;
	@Autowired
	private BoardInfo boardInfo;
	@Autowired
	private SeungyeonInfo seungyeonInfo;
	@Autowired
	private IlmangwanInfo ilmangwanInfo;
	@Autowired
	private WoldanggwanInfo woldanggwanInfo;
	@Autowired
	private IcheoneunuchInfo icheoneunuchInfo;
	@Autowired
	private MillenniumcenterInfo millenniumcenterInfo;
	@Autowired
	private SaintMichaelInfo saintMichaelInfo;
	@Autowired
	private MigaelgwanInfo migaelgwanInfo;
	@Autowired
	private SeungyeonInfoService seungyeonInfoService;
	@Autowired
	private UserInfo userInfo;
	@Autowired
	private DepartmentInfo departmentInfo;
	@Autowired 
	private	UserService userService;
	@Autowired
	private DateInfo dateInfo;
	@Autowired
	private SwapWriteInfo swapWriteInfo;
	
	@RequestMapping("login")
	public String login()
	{
		return "view/login";
	}
	
	//로그인하고 들어오기
	@RequestMapping(value="loginAfter", method=RequestMethod.POST)
	public String loginAfter(DateDto date,User user,Model model)
	{
		String message = userService.loginBefore(user);
		if(message != null)
		{
			model.addAttribute("error",message);
			return "view/login";
		}
		model.addAttribute("user",userInfo.selectByLoginId(user.getLoginId()));
		return "view/signUpAfter";	
	}
	
	@ResponseBody
	@RequestMapping(value="checkSignup", method=RequestMethod.POST)
	public   String checkSignup(User user,Model model)
	{
		int rowCount = userInfo.selectByLoginIdCheck(user.getLoginId());
		return String.valueOf(rowCount);
	}
	
	@RequestMapping("signUpBefore")
	public String loginGo(Model model) 
	{
		return "view/signUpBefore";
	}

	@RequestMapping(value="signUpAfter", method=RequestMethod.POST)
	public String membership(User user,Model model)
	{
		String message = userService.validateBeforeInsert(user);
		model.addAttribute("user",userInfo.selectByLoginId(user.getLoginId()));
		if(message == null)
			userInfo.insert(user);
		else 
		{
			model.addAttribute("error",message);
			return "redirect:signUpBefore";
		}
		return "view/login";
	}

	@RequestMapping(value = "edit", method = RequestMethod.GET)
	public String loginModification(User user,Model model) {
		model.addAttribute("user", userInfo.selectByLoginId(user.getLoginId()));
		return "view/edit";
	}
	
	@RequestMapping(value = "membershipModification", method = RequestMethod.GET)
	public String membershipModification(User user, Model model) 
	{
		model.addAttribute("user",userInfo.selectByLoginId(user.getLoginId()));
		return "view/membershipModification";
	}
	
	@RequestMapping(value = "membershipModification", method = RequestMethod.POST)
	public String membershipModification1(User user, Model model) {
		String message = userService.validateBeforeUpdate(user);
		if (message == null) {
			userInfo.update(user);
			model.addAttribute("user",userInfo.selectByLoginId(user.getLoginId()));
			return "view/signUpAfter";
		} 
		else
			model.addAttribute("error", message);
		return "view/membershipModification";
	}

	@RequestMapping(value="questionnaireInfo", method=RequestMethod.GET)
	public String test(User user, Model model) {
		model.addAttribute("user",userInfo.selectByLoginId(user.getLoginId()));
		return "view/questionnaireInfo";
	}

	@RequestMapping(value="classroomInfo", method=RequestMethod.GET)
	public String test1(User user,Model model) {
		model.addAttribute("user",userInfo.selectByLoginId(user.getLoginId()));
		return "view/classroomInfo";
	}

	@RequestMapping(value="signUpAfter" , method=RequestMethod.GET)
	public String test2(User user, Model model) {
		model.addAttribute("user", userInfo.selectByLoginId(user.getLoginId()));
		return "view/signUpAfter";
	}
	

	@RequestMapping(value = "list", method = RequestMethod.POST)
	public String test3(BoardDto board, Model model) {
		boardInfo.update(board);
		return "redirect:list";
	}

	@RequestMapping("writeForm")
	public String test4(User user, Model model) 
	{
		model.addAttribute("user", userInfo.selectByLoginId(user.getLoginId()));
		return "view/writeForm";
	}

	@RequestMapping("write")
	public String write(@RequestParam("loginId") String loginId,BoardDto board,Model model) {
		// 쓰고 목록으로 넘어가기
		boardInfo.insert(board);
		model.addAttribute("loginId",loginId);
		return "redirect:list?loginId={loginId}";
	}

	@RequestMapping("update")
	public String update(BoardDto board, Model model) {
		//123123
		model.addAttribute("board", boardInfo.select(board));
		return "view/edit";
	}

	@RequestMapping("delete")
	public String delete(@RequestParam("loginId")String loginId,BoardDto board,Model model) 
	{
		boardInfo.delete(board.getId());
		model.addAttribute("loginId", loginId);
		return "redirect:list?loginId={loginId}";
	}

	@RequestMapping("transmit")
	public String test6(@RequestParam("loginId") String loginId,SurveyDto survey, Model model) {
		// 설문지작성하고 맨 처음화면으로 가기
		surveyInfo.insert(survey);
		model.addAttribute("loginId",loginId);
		return "redirect:signUpAfter?loginId={loginId}";
	}

	@RequestMapping(value = { "seungyeon", "seung" }, method = RequestMethod.GET)
	public String classroomSeungyeon(User user,SeungyeonDto seungyeonDto, Model model)
	{
		String message = seungyeonInfoService.dataSeungyeon(seungyeonDto);
		if(message != null)
			model.addAttribute("mmm",message);
//		model.addAttribute("seung" ,seungyeonInfo.selectByFacilityCode(seungyeonDto.getFacilityCode()));
		model.addAttribute("user", userInfo.selectByLoginId(user.getLoginId()));
		model.addAttribute("seungyeon", seungyeonInfo.selectAll());
		return "view/classroomInfo";
	}

	@RequestMapping(value = "ilmangwan", method = RequestMethod.GET)
	public String classroomIlmangwan(User user, Model model) {
		model.addAttribute("user", userInfo.selectByLoginId(user.getLoginId()));
		model.addAttribute("ilmangwan", ilmangwanInfo.selectAll());
		return "view/classroomInfo";
	}

	@RequestMapping("woldanggwan")
	public String classroomWoldanggwan(User user, Model model) {
		model.addAttribute("user", userInfo.selectByLoginId(user.getLoginId()));
		model.addAttribute("woldang", woldanggwanInfo.selectAll());
		return "view/classroomInfo";
	}

	@RequestMapping("yeollamgwan")
	public String classroomYeollamgwan(User user, Model model) {
		model.addAttribute("user", userInfo.selectByLoginId(user.getLoginId()));
		model.addAttribute("message", "정보가없습니다.");
		return "view/classroomInfo";
	}

	@RequestMapping("icheoneunuch")
	public String classroomIcheoneunuch(User user, Model model) {
		model.addAttribute("user", userInfo.selectByLoginId(user.getLoginId()));
		model.addAttribute("icheon", icheoneunuchInfo.selectAll());
		return "view/classroomInfo";
	}

	@RequestMapping("millenniumcenter")
	public String classroomMillenniumcenter(User user, Model model) {
		model.addAttribute("user", userInfo.selectByLoginId(user.getLoginId()));
		model.addAttribute("mill", millenniumcenterInfo.selectAll());
		return "view/classroomInfo";
	}

	@RequestMapping("saintMichael")
	public String classroomSaintMichael(User user, Model model) {
		model.addAttribute("user", userInfo.selectByLoginId(user.getLoginId()));
		model.addAttribute("saint", saintMichaelInfo.selectAll());
		return "view/classroomInfo";
	}

	@RequestMapping("Migaelgwan")
	public String classroomMigaelgwan(User user, Model model) {
		model.addAttribute("user", userInfo.selectByLoginId(user.getLoginId()));
		model.addAttribute("migael", migaelgwanInfo.selectAll());
		return "view/classroomInfo";
	}

	@RequestMapping("schoolyard")
	public String classroomSchoolyard(User user, Model model) {
		model.addAttribute("user", userInfo.selectByLoginId(user.getLoginId()));
		model.addAttribute("mes", "정보가 없습니다");
		return "view/classroomInfo";
	}
	
	//등급 확인하기
	@RequestMapping(value="grade", method=RequestMethod.GET)
	public String gradeCheck(User user,Model model)
	{
		model.addAttribute("user",userInfo.selectByLoginId(user.getLoginId()));
		return "view/grade";
	}
	
	//그날 강의실비었나 조회하기
	@ResponseBody
	@RequestMapping(value="dateInfo", method=RequestMethod.POST)
	public String classroomCheck(DateDto dateDto,Model model)
	{
		int rC = dateInfo.selectByCurrentTime(dateDto);
		return String.valueOf(rC);
	}
	
	//강의실 어디가 비어있는지 확인 시켜주기
	@ResponseBody
	@RequestMapping(value="roomInfo", method=RequestMethod.POST)
	public List<String> checkRoom(DateDto dateDto)
	{ 
		return dateInfo.selectByIdDate(dateDto);
	}
	
	//강의실 대여하기
	@RequestMapping("rentClass")
	public String rentClass(User user, DateDto dateDto,Model model)
	{
		dateInfo.selectByInsert(dateDto);
		model.addAttribute("user",userInfo.selectByLoginId(user.getLoginId()));
		return "view/classroomInfo";
	}
	
	//자유게시판 보이게 하기
	@RequestMapping(value = "list", method = RequestMethod.GET)
	public String test3(Pagination pagination,User user,Model model) {
		pagination.setRecordCount(boardInfo.selectCount());
		model.addAttribute("list", boardInfo.selectPage(pagination));
		model.addAttribute("user",userInfo.selectByLoginId(user.getLoginId()));
		return "view/list";
	}
	
	//강의실 빌려주기 
	@RequestMapping("rent")
	public String rent(User user,Pagination pagination,Model model)
	{
		pagination.setRecordCount(swapWriteInfo.selectCount());
		model.addAttribute("user", userInfo.selectByLoginId(user.getLoginId()));
		model.addAttribute("swap",swapWriteInfo.selectPage(pagination));
		return "view/rental";
	}

	@RequestMapping("showStaff")
	public String showBoard(User user, Model model)
	{
		List<DateDto> dates = dateInfo.selectAllRoom();
		for(DateDto date : dates)
		{
			List<User> users = userInfo.findByDateId(date.getId());
			date.setStudents(users);
		}
		model.addAttribute("dates", dates);
		model.addAttribute("user", userInfo.selectByLoginId(user.getLoginId()));
		return "view/showStaff";
	}
	
	@RequestMapping("approvalPlease")
	public String approvalPlease(User user,Model model)
	{
		model.addAttribute("user",userInfo.selectByLoginId(user.getLoginId()));
		model.addAttribute("date", dateInfo.selectByAll(user.getId()));
		return "view/approvalPlease";
	}
	
	@RequestMapping("approvalSubmit") //관리자가 승인할때 이 메소드 호출
	public String approvalSubmit(@RequestParam("loginId") String loginId,DateDto date,User user, Model model)
	{
		dateInfo.updateApprovalSubmit(date);
		model.addAttribute("date", dateInfo.selectByAll(user.getId()));
		model.addAttribute("user",userInfo.selectByLoginId(user.getLoginId()));
		model.addAttribute("loginId", loginId);
		return "redirect:showStaff?loginId={loginId}";
	}
	
	@RequestMapping("approvalReject")
	public String approvalReject(@RequestParam("loginId") String loginId,DateDto date,User user, Model model)
	{
		dateInfo.updateApprovalReject(date);
		model.addAttribute("date", dateInfo.selectByAll(user.getId()));
		model.addAttribute("user",userInfo.selectByLoginId(user.getLoginId()));
		model.addAttribute("loginId", loginId);
		return "redirect:showStaff?loginId={loginId}";
	}
	
	//강의실 나누기 -> 그사람이 수업이라면 그 수업시간 틈을타 강의실 대여 해주기
	@RequestMapping("writeClassroom")
	public String writeClassroom(User user,Model model)
	{
		model.addAttribute("user", userInfo.selectByLoginId(user.getLoginId()));
		return "view/writeClassroom";
	}
	
	//강의실 게시물글 올리기
	@RequestMapping("writeSubmit")
	public String writeForm(@RequestParam("loginId") String loginId,SwapWriteDto swapWriteDto ,User user, Model model)
	{
		swapWriteInfo.insertSwapWrite(swapWriteDto);
		model.addAttribute("loginId",loginId);
		model.addAttribute("user", userInfo.selectById(user.getId()));
		return "redirect:rent?loginId={loginId}";
	}
	
	//어떤사람이 강의실 빌리고 수업시간이 있을경우 수업시간에 빌릴 수 있게 다른사람이 신청하기
	@RequestMapping("application")
	public String application(SwapWriteDto swapWriteDto,User user,Model model)
	{
		model.addAttribute("user", userInfo.selectByLoginId(user.getLoginId()));
		model.addAttribute("swap", swapWriteInfo.selectByNumber(swapWriteDto.getNumber()));
		return "view/application";
	}
	
	//강의실 
	@RequestMapping("borrow")
	public String borrow(@RequestParam("loginId") String loginId,SwapWriteDto swapDto,Model model)
	{
		swapWriteInfo.updateSwapWrite(swapDto);
		model.addAttribute("loginId",loginId);
		return "redirect:rent?loginId={loginId}";
	}
	
	@RequestMapping("questionnaireInfo1")
	public String questionnaireInfo1(User user, Model model)
	{
		model.addAttribute("swap", swapWriteInfo.ListAll(user.getLoginId()));
		model.addAttribute("user", userInfo.selectByLoginId(user.getLoginId()));
		return "view/questionnaireInfo1";
	}
	
	//설문지 작성하기
	@RequestMapping("questionnaireInfo2")
	public String questionnaireInfo2(SwapWriteDto swapDto,User user,Model model)
	{
		model.addAttribute("swap", swapWriteInfo.selectByBorrower(swapDto));
		model.addAttribute("user", userInfo.selectByLoginId(user.getLoginId()));
		return "view/questionnaireInfo2";
	}
	
	@RequestMapping("surveyList")
	public String surveyList(User user, Model model)
	{
		model.addAttribute("user", userInfo.selectByLoginId(user.getLoginId()));
		model.addAttribute("survey", surveyInfo.selectByConfirm());
		return "view/surveyList";
	}
	
	@RequestMapping("nice")
	public String updateNice(@RequestParam("loginId") String loginId, SurveyDto surveyDto ,Model model)
	{
		surveyInfo.updateNice(surveyDto);
		model.addAttribute("loginId", loginId);
		return "redirect:surveyList?loginId={loginId}";
	}
	
	@RequestMapping("warning")
	public String updateWaining(@RequestParam("loginId") String loginId, SurveyDto surveyDto , Model model)
	{
		surveyInfo.updateWarning(surveyDto);
		model.addAttribute("loginId", loginId);
		return "redirect:surveyList?loginId={loginId}";
	}
	
	@RequestMapping("demotion")
	public String updateDemotion(@RequestParam("loginId") String loginId, SurveyDto surveyDto , Model model)
	{
		System.out.println(surveyDto);
		surveyInfo.updateDemotion(surveyDto);
		model.addAttribute("loginId", loginId);
		return "redirect:surveyList?loginId={loginId}";
	}
}
