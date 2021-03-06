package brownshome.scriptwars.game.tanks;

public enum Direction {
	UP(0, -1),
	LEFT(-1, 0),
	DOWN(0, 1),
	RIGHT(1, 0);
	
	final int dx, dy;
	
	Direction(int dx, int dy) {
		this.dx = dx;
		this.dy = dy;
	}
	
	public int moveX(int x) {
		return x + dx;
	}
	
	public int moveY(int y) {
		return y + dy;
	}
	
	public Coordinates move(Coordinates coord) {
		return new Coordinates(moveX(coord.getX()), moveY(coord.getY()));
	}
	
	public Direction opposite() {
		return values()[(ordinal() + 2) % 4];
	}
	
	public Direction clockwise() {
		return values()[(ordinal() + 3) % 4];
	}
	
	public Direction antiClockwise() {
		return values()[(ordinal() + 1) % 4];
	}
	
	/**
	 * @param x The x displacement
	 * @param y The y displacement
	 * 
	 * @return A direction object represented by the given coordinates. If the coordinates
	 * do not match a cardinal direction {@code null} is returned.
	 */
	public static Direction getDirection(int x, int y) {
		if(x > 0 && y == 0) return RIGHT;
		if(x < 0 && y == 0) return LEFT;
		if(x == 0 && y < 0) return UP;
		if(x == 0 && y > 0) return DOWN;
		return null;
	}

	/**
	 * @param targetPosition The end of the ray
	 * @param myPosition The start of the ray
	 * 
	 * @return A direction object represented by the given coordinates. If the coordinates
	 * do not match a cardinal direction {@code null} is returned.
	 */
	public static Direction getDirection(Coordinates targetPosition, Coordinates myPosition) {
		return getDirection(targetPosition.getX() - myPosition.getX(), targetPosition.getY() - myPosition.getY());
	}
}
