package tap.app.entities;

public class TrainerFeedBack {

private FeedBack feedback;
private Trainer trainer;
public TrainerFeedBack() {
	super();
	
}
public TrainerFeedBack(FeedBack feedback, Trainer trainer) {
	super();
	this.feedback = feedback;
	this.trainer = trainer;
}
public FeedBack getFeedback() {
	return feedback;
}
public void setFeedback(FeedBack feedback) {
	this.feedback = feedback;
}
public Trainer getTrainer() {
	return trainer;
}
public void setTrainer(Trainer trainer) {
	this.trainer = trainer;
}
@Override
public String toString() {
	return "TrainerFeedBack [feedback=" + feedback + ", trainer=" + trainer + "]";
}




	
}
