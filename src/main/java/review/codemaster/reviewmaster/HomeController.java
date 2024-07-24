package review.codemaster.reviewmaster;

import java.util.List;
import java.util.Locale;

import javax.inject.Inject;
import javax.servlet.http.HttpServletRequest;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;

import review.codemaster.service.IF_ReviewService;
import review.codemaster.vo.CommentVO;
import review.codemaster.vo.PageVO;
import review.codemaster.vo.ReviewVO;

/** aaa
 * Handles requests for the application home page.
 */
@Controller
public class HomeController {
	@Inject
	IF_ReviewService rservice;
	
	private static final Logger logger = LoggerFactory.getLogger(HomeController.class);
	
	/**
	 * Simply selects the home view to render by returning its name.
	 */
	@RequestMapping(value = "/", method = RequestMethod.GET)
	public String home(Locale locale, Model model) {
		logger.info("Welcome home! The client locale is {}.", locale);		
		return "home";
	}
	@GetMapping(value = "/input")
	public String input() {
		return "inputform";
	}
	@PostMapping(value = "/inputSave")
	public String inputSave(@ModelAttribute ReviewVO rvo) throws Exception {
		rservice.insert(rvo);
		return "redirect:/";
	}
	@GetMapping(value = "/search")
	public String search(Model model, @ModelAttribute PageVO pagevo) throws Exception {
		if(pagevo.getPage()==null) {
			pagevo.setPage(1);
		}
		pagevo.setTotalCount(rservice.getTotalCount(pagevo.getSearchKeyword()));
		List<ReviewVO> allList = rservice.select(pagevo);
		model.addAttribute("pagevo" ,pagevo);
		model.addAttribute("allListitems", allList);
		pagevo.prt();
		return "searchform";
	}
	@GetMapping(value = "/delete")
	public String delete(@RequestParam String delno) throws Exception {
		rservice.delete(delno);
		return "redirect:/";
	}
	@GetMapping(value = "/update")
	public String update(Model model, @RequestParam String modno) throws Exception {
		ReviewVO rvo = rservice.modselect(modno);
		model.addAttribute("item", rvo);
		return "modform";
	}
	@PostMapping(value = "/modSave")
	public String modSave(@ModelAttribute ReviewVO rvo) throws Exception {
		rservice.update(rvo);
		return "redirect:/";
	}
	@PostMapping(value = "/comment")
	public String comment(@ModelAttribute CommentVO cvo, HttpServletRequest request) throws Exception {
		rservice.insertcmt(cvo);
		String referer = request.getHeader("Referer"); // 헤더에서 이전 페이지를 읽는다.
		return "redirect:"+ referer; // 이전 페이지로 리다이렉트
	}
	@GetMapping(value = "/viewDetail")
	public String viewDetail() throws Exception {
		
		return "view";
	}
	//https://bubblecastle.tistory.com/9
	
}
