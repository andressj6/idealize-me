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
    private Text ideaPitch;
    private String ideaName;
    private Text ideaProblem;
    private Text ideaSolution;
    private Text marketTarget;
    private Text marketCompetion;
    private Text marketAdvantage;
    private Text productUseCases;
    private Text productFeatures;
    private Text productBrand;
    private Text businessMonetization;
    private Text businessDistribution;
    private Text businessFinancials;
    private Text executionPeople;
    private Text executionMilestones;
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

    public Text getIdeaPitch() {
        return ideaPitch;
    }

    public void setIdeaPitch(Text ideaPitch) {
        this.ideaPitch = ideaPitch;
    }

    public String getIdeaName() {
        return ideaName;
    }

    public void setIdeaName(String ideaName) {
        this.ideaName = ideaName;
    }

    public Text getIdeaProblem() {
        return ideaProblem;
    }

    public void setIdeaProblem(Text ideaProblem) {
        this.ideaProblem = ideaProblem;
    }

    public Text getIdeaSolution() {
        return ideaSolution;
    }

    public void setIdeaSolution(Text ideaSolution) {
        this.ideaSolution = ideaSolution;
    }

    public Text getMarketTarget() {
        return marketTarget;
    }

    public void setMarketTarget(Text marketTarget) {
        this.marketTarget = marketTarget;
    }

    public Text getMarketCompetion() {
        return marketCompetion;
    }

    public void setMarketCompetion(Text marketCompetion) {
        this.marketCompetion = marketCompetion;
    }

    public Text getMarketAdvantage() {
        return marketAdvantage;
    }

    public void setMarketAdvantage(Text marketAdvantage) {
        this.marketAdvantage = marketAdvantage;
    }

    public Text getProductUseCases() {
        return productUseCases;
    }

    public void setProductUseCases(Text productUseCases) {
        this.productUseCases = productUseCases;
    }

    public Text getProductFeatures() {
        return productFeatures;
    }

    public void setProductFeatures(Text productFeatures) {
        this.productFeatures = productFeatures;
    }

    public Text getProductBrand() {
        return productBrand;
    }

    public void setProductBrand(Text productBrand) {
        this.productBrand = productBrand;
    }

    public Text getBusinessMonetization() {
        return businessMonetization;
    }

    public void setBusinessMonetization(Text businessMonetization) {
        this.businessMonetization = businessMonetization;
    }

    public Text getBusinessDistribution() {
        return businessDistribution;
    }

    public void setBusinessDistribution(Text businessDistribution) {
        this.businessDistribution = businessDistribution;
    }

    public Text getBusinessFinancials() {
        return businessFinancials;
    }

    public void setBusinessFinancials(Text businessFinancials) {
        this.businessFinancials = businessFinancials;
    }

    public Text getExecutionPeople() {
        return executionPeople;
    }

    public void setExecutionPeople(Text executionPeople) {
        this.executionPeople = executionPeople;
    }

    public Text getExecutionMilestones() {
        return executionMilestones;
    }

    public void setExecutionMilestones(Text executionMilestones) {
        this.executionMilestones = executionMilestones;
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
}
