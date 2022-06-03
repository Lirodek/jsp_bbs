package control;

import java.io.IOException;
import java.util.ArrayList;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import control.BoardService;

@WebServlet("/myPage/*")
public class controller extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
	
	ArrayList<String> nonClass ;
	
    public controller() {
        super();
        nonClass = new ArrayList<String>();
        nonClass.add("MyProfile");
        nonClass.add("DeleteForm");

    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		//response.getWriter().append("Served at: ").append(request.getContextPath());
		
		
		//System.out.println(request.getRequestURI());
		//System.out.println(request.getContextPath());
		try {
			request.setCharacterEncoding("utf-8");
		} catch (Exception e) {
			// TODO: handle exception
		}
		
		
		String serviceStr = request.getRequestURI().substring(
				(request.getContextPath()+"/board/").length()
				);
		//System.out.println(serviceStr);
		
		int page = 1;
		if(request.getParameter("page")!=null) {
			page = Integer.parseInt(request.getParameter("page"));
		}
		request.setAttribute("nowPage", page);
		
		if(nonClass.contains(serviceStr)) {
			request.setAttribute("mainUrl", serviceStr);
		}else {
		
			try {
				BoardService service = 
						(BoardService)Class.forName("board_p.service_p.Board"+serviceStr)
						.newInstance();
				
				service.execute(request, response);
			
			} catch (Exception e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}
		}
		
		if(!serviceStr.equals("FileDown")) {
			//System.out.println("doGet() 왔다감");
			RequestDispatcher dispatcher = request.getRequestDispatcher("/bbb_view/template.jsp");
			
			dispatcher.forward(request, response);
		}
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
	}

}