package net.codejava.customer.entity;

import java.util.ArrayList;
import java.util.Date;
import java.util.List;

import javax.persistence.CascadeType;
import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.FetchType;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.JoinColumn;
import javax.persistence.ManyToOne;
import javax.persistence.OneToMany;
import javax.persistence.Temporal;
import javax.persistence.TemporalType;

import lombok.AllArgsConstructor;
import lombok.Builder;
import lombok.Getter;
import lombok.NoArgsConstructor;
import lombok.Setter;
import org.springframework.format.annotation.DateTimeFormat;

@Entity
@Getter
@Setter
@AllArgsConstructor
@NoArgsConstructor
@Builder
public class Article {

	@Id
	@GeneratedValue(strategy = GenerationType.IDENTITY)
	private Long id;
	private String title;
	private String slug;
	@Column(columnDefinition = "TEXT")
	private String shortDescription;
	@Column(columnDefinition = "TEXT")
	private String content;
	private String photo;
	private Boolean highlight;
	private int view;
	
	@Temporal(TemporalType.DATE)
	@DateTimeFormat(pattern = "yyyy-MM-dd")
	private Date createDate;
	private String createBy;
	
	@ManyToOne(fetch = FetchType.LAZY, cascade = CascadeType.MERGE, optional = false)
	@JoinColumn(name = "category_id", nullable = false)
	private Category category;

	@OneToMany(mappedBy = "comment", cascade = CascadeType.MERGE)
	private List<Comment> comments = new ArrayList<>();

}
