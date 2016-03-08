package com.firstproject.jbehave;

import net.thucydides.core.annotations.Steps;
import org.jbehave.core.annotations.Given;
import org.jbehave.core.annotations.Then;
import org.jbehave.core.annotations.When;
import org.jbehave.core.annotations.Named;

import com.firstproject.steps.EndUserSteps;

public class DefinitionSteps {

    @Steps
    EndUserSteps endUser;

    @Given("the user is on the Wikionary home page")
    public void givenTheUserIsOnTheWikionaryHomePage() {
        endUser.mainPageOpening();
        endUser.is_the_home_page();
    }

    @When("the user looks up the definition of the word $word")
    public void whenTheUserLooksUpTheDefinitionOf(@Named("word") String word) {
        endUser.looks_for(word);
    }

    @Then("they should see the definition $definition")
    public void thenTheyShouldSeeADefinitionContainingTheWords(@Named("definition") String definition) {
        endUser.should_see_definition(definition);
    }

}
