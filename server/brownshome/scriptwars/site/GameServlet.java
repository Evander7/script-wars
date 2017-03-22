package brownshome.scriptwars.site;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.*;

import brownshome.scriptwars.server.game.GameType;

@WebServlet("/games/*")
public class GameServlet extends HttpServlet {
	@Override
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws IOException, ServletException {
		String gameName = request.getServletMapping().getMatchValue();
		GameType type = GameType.getGameType(gameName);
		
		if(type == null) {
			response.sendError(HttpServletResponse.SC_NOT_FOUND, "Invalid game type: " + gameName);
			return;
		}
		
		request.setAttribute("gametype", type);
		getServletContext().getRequestDispatcher("/gameTemplate.jsp").forward(request, response);
	}
}