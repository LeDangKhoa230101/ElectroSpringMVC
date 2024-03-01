package ElectroMVC.Entity;

public class Slides {
	private int id;
	private String img;
	private String title;
	
	public Slides() {
		super();
	}

	public Slides(int id, String img, String title) {
		super();
		this.id = id;
		this.img = img;
		this.title = title;
	}

	public int getId() {
		return id;
	}

	public void setId(int id) {
		this.id = id;
	}

	public String getImg() {
		return img;
	}

	public void setImg(String img) {
		this.img = img;
	}

	public String getTitle() {
		return title;
	}

	public void setTitle(String title) {
		this.title = title;
	}
}
