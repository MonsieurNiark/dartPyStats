package fr.namelessfox.dartPyStats.domain;

import java.io.Serializable;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.ManyToOne;
import javax.persistence.Table;

@Entity
@Table(name = "dart_input")
public class DartInput implements Serializable{

	@Id
	@GeneratedValue(strategy = GenerationType.AUTO)
	@Column(name = "id_dart_input")
	private Integer id;
	
	@ManyToOne
	private Game game;
	
	@ManyToOne
	private Player player;
	
	private Integer score;
	
	private Integer input;
}
