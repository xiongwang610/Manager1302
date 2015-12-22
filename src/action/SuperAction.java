package action;

import javax.servlet.ServletContext;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.apache.struts2.interceptor.ServletRequestAware;
import org.apache.struts2.interceptor.ServletResponseAware;
import org.apache.struts2.util.ServletContextAware;

import com.opensymphony.xwork2.ActionSupport;

public class SuperAction extends ActionSupport
		implements ServletContextAware, ServletRequestAware, ServletResponseAware {

	
	/**
	 * 
	 */
	private static final long serialVersionUID = 1L;
	protected HttpServletResponse response; //响应对象
	protected HttpServletRequest request; //请求对象
	protected ServletContext applicationContext; //全局对象
	protected HttpSession session; //会画对象
	
	public void setServletResponse(HttpServletResponse response) {
		
		this.response = response;
	}


	public void setServletRequest(HttpServletRequest request) {
		
		this.request = request;
		this.session = request.getSession();

	}

	
	public void setServletContext(ServletContext applicationContext) {
		
		this.applicationContext = applicationContext;

	}

}
