package org.apache.jsp;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.jsp.*;
import DAO.DAOCliente;

public final class executar_005feditar_005fcliente_jsp extends org.apache.jasper.runtime.HttpJspBase
    implements org.apache.jasper.runtime.JspSourceDependent {

  private static final JspFactory _jspxFactory = JspFactory.getDefaultFactory();

  private static java.util.List<String> _jspx_dependants;

  private org.glassfish.jsp.api.ResourceInjector _jspx_resourceInjector;

  public java.util.List<String> getDependants() {
    return _jspx_dependants;
  }

  public void _jspService(HttpServletRequest request, HttpServletResponse response)
        throws java.io.IOException, ServletException {

    PageContext pageContext = null;
    HttpSession session = null;
    ServletContext application = null;
    ServletConfig config = null;
    JspWriter out = null;
    Object page = this;
    JspWriter _jspx_out = null;
    PageContext _jspx_page_context = null;

    try {
      response.setContentType("text/html;charset=UTF-8");
      pageContext = _jspxFactory.getPageContext(this, request, response,
      			null, true, 8192, true);
      _jspx_page_context = pageContext;
      application = pageContext.getServletContext();
      config = pageContext.getServletConfig();
      session = pageContext.getSession();
      out = pageContext.getOut();
      _jspx_out = out;
      _jspx_resourceInjector = (org.glassfish.jsp.api.ResourceInjector) application.getAttribute("com.sun.appserv.jsp.resource.injector");

      out.write("\n");
      out.write("\n");
      out.write("\n");
      out.write("\n");
      out.write("\n");

    
    DAOCliente daoCliente = new DAOCliente();
    
    int id = Integer.parseInt(request.getParameter("id")); 
    String nome = request.getParameter("nome");
    String email = request.getParameter("email");
    String telefone = request.getParameter("telefone");
    
    
    try{
        
        if(nome != null && nome != "" && nome != "unkown"){
            daoCliente.updateNome(nome, id);
        }
        
        if(email != null && email != ""){
            daoCliente.updateEmail(email, id);
        }
        
        if(telefone != null && telefone != ""){
            daoCliente.updateTelefone(telefone, id);
        }        
        
        out.print("Cliente editado com sucesso!");
        out.print("<br>");
        out.print("Você será redirecionado à página inicial");
        out.print("<meta http-equiv='refresh' content='3, url=index.jsp'>");
        
    } catch(Exception e){
        throw new RuntimeException("Erro ao executar editar cliente: " + e);
    }


    } catch (Throwable t) {
      if (!(t instanceof SkipPageException)){
        out = _jspx_out;
        if (out != null && out.getBufferSize() != 0)
          out.clearBuffer();
        if (_jspx_page_context != null) _jspx_page_context.handlePageException(t);
        else throw new ServletException(t);
      }
    } finally {
      _jspxFactory.releasePageContext(_jspx_page_context);
    }
  }
}
