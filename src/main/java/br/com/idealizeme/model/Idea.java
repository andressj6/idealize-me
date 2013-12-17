package br.com.idealizeme.model;


import javax.persistence.*;
import javax.xml.soap.Text;
import java.io.Serializable;
import java.util.List;

/**
 * Created by guilherme on 16/12/13.
 */

@Entity
@Table(name = "ideas")
public class Idea implements Serializable{

    @Id
    @GeneratedValue
    private Long id;
    @Column(columnDefinition = "text")
    private String ideaPitch;
    private String ideaName;
    @Column(columnDefinition = "text")
    private String ideaProblem;
    @Column(columnDefinition = "text")
    private String ideaSolution;
    @Column(columnDefinition = "text")
    private String marketTarget;
    @Column(columnDefinition = "text")
    private String marketCompetion;
    @Column(columnDefinition = "text")
    private String marketAdvantage;
    @Column(columnDefinition = "text")
    private String productUseCases;
    @Column(columnDefinition = "text")
    private String productFeatures;
    @Column(columnDefinition = "text")
    private String productBrand;
    @Column(columnDefinition = "text")
    private String businessMonetization;
    @Column(columnDefinition = "text")
    private String businessDistribution;
    @Column(columnDefinition = "text")
    private String businessFinancials;
    @Column(columnDefinition = "text")
    private String executionPeople;
    @Column(columnDefinition = "text")
    private String executionMilestones;
    @ManyToOne
    private User owner;
    @OneToMany
    private List<User> helpers;

    public Long getId() {
        return id;
    }

    public void setId(Long id) {
        this.id = id;
    }

    public String getIdeaPitch() {
        return ideaPitch;
    }

    public void setIdeaPitch(String ideaPitch) {
        this.ideaPitch = ideaPitch;
    }

    public String getIdeaName() {
        return ideaName;
    }

    public void setIdeaName(String ideaName) {
        this.ideaName = ideaName;
    }

    public User getOwner() {
        return owner;
    }

    public void setOwner(User owner) {
        this.owner = owner;
    }

    public List<User> getHelpers() {
        return helpers;
    }

    public void setHelpers(List<User> helpers) {
        this.helpers = helpers;
    }

    public String getIdeaProblem() {
        return ideaProblem;
    }

    public void setIdeaProblem(String ideaProblem) {
        this.ideaProblem = ideaProblem;
    }

    public String getIdeaSolution() {
        return ideaSolution;
    }

    public void setIdeaSolution(String ideaSolution) {
        this.ideaSolution = ideaSolution;
    }

    public String getMarketTarget() {
        return marketTarget;
    }

    public void setMarketTarget(String marketTarget) {
        this.marketTarget = marketTarget;
    }

    public String getMarketCompetion() {
        return marketCompetion;
    }

    public void setMarketCompetion(String marketCompetion) {
        this.marketCompetion = marketCompetion;
    }

    public String getMarketAdvantage() {
        return marketAdvantage;
    }

    public void setMarketAdvantage(String marketAdvantage) {
        this.marketAdvantage = marketAdvantage;
    }

    public String getProductUseCases() {
        return productUseCases;
    }

    public void setProductUseCases(String productUseCases) {
        this.productUseCases = productUseCases;
    }

    public String getProductFeatures() {
        return productFeatures;
    }

    public void setProductFeatures(String productFeatures) {
        this.productFeatures = productFeatures;
    }

    public String getProductBrand() {
        return productBrand;
    }

    public void setProductBrand(String productBrand) {
        this.productBrand = productBrand;
    }

    public String getBusinessMonetization() {
        return businessMonetization;
    }

    public void setBusinessMonetization(String businessMonetization) {
        this.businessMonetization = businessMonetization;
    }

    public String getBusinessDistribution() {
        return businessDistribution;
    }

    public void setBusinessDistribution(String businessDistribution) {
        this.businessDistribution = businessDistribution;
    }

    public String getBusinessFinancials() {
        return businessFinancials;
    }

    public void setBusinessFinancials(String businessFinancials) {
        this.businessFinancials = businessFinancials;
    }

    public String getExecutionPeople() {
        return executionPeople;
    }

    public void setExecutionPeople(String executionPeople) {
        this.executionPeople = executionPeople;
    }

    public String getExecutionMilestones() {
        return executionMilestones;
    }

    public void setExecutionMilestones(String executionMilestones) {
        this.executionMilestones = executionMilestones;
    }
}
