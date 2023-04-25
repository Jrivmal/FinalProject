package application;

import javafx.application.Application;
import javafx.scene.Scene;
import javafx.scene.control.TableColumn;
import javafx.scene.control.TableView;
import javafx.scene.control.cell.PropertyValueFactory;
import javafx.scene.layout.BorderPane;
import javafx.stage.Stage;
import words.words;

public class Main extends Application {
	public static void main(String[]args) {
		launch(args);
	}

	private Object stylesheet;

	@Override
	public void start(Stage primaryStage) {
		
		BorderPane root = new BorderPane();
		
		TableView table = new TableView<words>();
		TableColumn firstWordColumn = new TableColumn<words, String>("WORDS");
		firstWordColumn.setCellValueFactory(new PropertyValueFactory<words, String>("words"));
			
	table.getColumns().add(firstWordColumn);
	root.setCenter(table);
	
table.setColumnResizePolicy(TableView.CONSTRAINED_RESIZE_POLICY);

table.getItems().add(new words("such"));
table.getItems().add(new words("stayed"));
table.getItems().add(new words("purple"));
table.getItems().add(new words("to"));
table.getItems().add(new words("so"));
table.getItems().add(new words("thing"));
table.getItems().add(new words("countenance"));
table.getItems().add(new words("other"));
table.getItems().add(new words("but"));
table.getItems().add(new words("surely"));
table.getItems().add(new words("till"));
table.getItems().add(new words("Once"));
table.getItems().add(new words("separate"));
table.getItems().add(new words("prophet"));
table.getItems().add(new words("wished"));
table.getItems().add(new words("obeisance"));
table.getItems().add(new words("expressing"));
table.getItems().add(new words("had"));
table.getItems().add(new words("melancholy"));
table.getItems().add(new words("dying"));
														
	Scene scene = new Scene(root, 500,300);
	scene.getStylesheets().add("stylesheet.css");
	primaryStage.setTitle("Top 20 Words");
		primaryStage.setScene(scene);
	primaryStage.show();
	{ 
	}
		
		
	}
	
	
}
Word.java(package)
package words;


public class words  {
	private String words;


public words(String words) {
	
	this.words = words;
}


public String getWords() {
	return words;
}


public void setWords(String words) {
	this.words = words;
}

}


StyleSheet.css
.root{
	-fx-font-family: 'Times New Roman';
	-fx-font-size: 20px;
	-fx-font-style: normal;
	-fx-font-weight: normal;
}
