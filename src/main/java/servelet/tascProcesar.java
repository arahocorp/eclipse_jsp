package servelet;

import java.io.IOException;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.Statement;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 * Servlet implementation class tascProcesar
 */
@WebServlet("/tascProcesar")
public class tascProcesar extends HttpServlet {
	private static final long serialVersionUID = 1L;

	/**
	 * Default constructor.
	 */
	public tascProcesar() {
		// TODO Auto-generated constructor stub
	}

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse
	 *      response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		// TODO Auto-generated method stub
		response.getWriter().append("Served at: ").append(request.getContextPath());
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse
	 *      response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		// TODO Auto-generated method stub
		String titulo, asunto, descripcion, responsable, recordatorio, adjuntos, etiquetas, prioridad,
				duracion_estimada, proyecto_area, estado_avance, fecha_inicio, fecha_entrega, fecha_finalizacion,
				comentarios;

		titulo = request.getParameter("titulo");
		asunto = request.getParameter("asunto");
		descripcion = request.getParameter("descripcion");
		responsable = request.getParameter("responsable");
		recordatorio = request.getParameter("recordatorio");
		etiquetas = request.getParameter("etiquetas");
		prioridad = request.getParameter("prioridad");
		duracion_estimada = request.getParameter("duracion_estimada");
		proyecto_area = request.getParameter("proyecto_area");
		estado_avance = request.getParameter("estado_avance");
		fecha_inicio = request.getParameter("fecha_inicio");
		fecha_entrega = request.getParameter("fecha_entrega");
		fecha_finalizacion = request.getParameter("fecha_finalizacion");
		comentarios = request.getParameter("comentarios");

		String sql = "INSERT INTO task (titulo, asunto, descripcion, responsable, recordatorio, etiquetas, prioridad, duracion_estimada, proyecto_area, estado_avance, fecha_inicio, fecha_entrega, fecha_finalizacion, comentarios) VALUES ('"
				+ titulo + "','" + asunto + "','" + descripcion + "','" + responsable + "','" + recordatorio
				+ "','" + etiquetas + "','" + prioridad + "','" + duracion_estimada + "','" + proyecto_area
				+ "','" + estado_avance + "','" + fecha_inicio + "','" + fecha_entrega + "','" + fecha_finalizacion
				+ "','" + comentarios + "')";

		try {
			Class.forName("com.mysql.cj.jdbc.Driver");
			String url = "jdbc:mysql://localhost:3306/tasc";
			Connection con = DriverManager.getConnection(url, "root", "");
			Statement st = con.createStatement();
			st.executeUpdate(sql);
			response.sendRedirect("index.jsp?msj=addOk");
		} catch (Exception e) {
			response.sendRedirect("index.jsp?msj=addNOk&error=" + e.getMessage());
		}
	}

}
