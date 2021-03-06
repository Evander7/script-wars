package brownshome.scriptwars.site;

import java.util.Collection;

import brownshome.scriptwars.game.GameType;
import brownshome.scriptwars.game.tanks.*;

public class StaticBean {
	public Collection<GameType> getTypeList() {
		return GameType.getGameTypes();
	}
	
	public String getTankGameAmmo() {
		return String.valueOf(Tank.MAX_AMMO);
	}
	
	public String getTankGameShotSpeed() {
		return String.valueOf(Shot.SPEED);
	}
}
