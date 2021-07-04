/*
Test sur le framework cypress
*/


// apprendre les imports
import { cliquerSurElement } from "/cypress/integration/myFonctions/myFonctions"

// =============================================================================
// VARIABLES
// =============================================================================
var linkCypress = 'a[title=cypress]'
var linkIntegration = 'a[title=integration]'
var stringCypress = 'cypress'
var stringIntegration = "integration"

var myUrl='https://github.com/Jack-CodeRepo'
var myRepo="testing_automation"



// =============================================================================
// SCRIPT
// =============================================================================
describe('gihub test', function(){

    it('Visiter Github', function(){
        cy.visit(myUrl)
        cy.contains('Jack')
        cy.url().should('include','Jack-CodeRepo')
    })

    it(`Consulter le dépôt: ${myRepo}`, function(){
        cliquerSurElement('a', myRepo)                              // testing_automation repository
        cliquerSurElement(linkCypress, stringCypress)               // cypress folder in cypress projectName
        // pour des raisons obscures, l'url est 
        //      https://github.com/Jack-CodeRepo/testing_automation 
        // et non pas
        //      https://github.com/Jack-CodeRepo/testing_automation/tree/main/cypress 
        // ajout d'un reload pour cnserver l'url et conserver la rue
        cy.reload()                                                 
        cliquerSurElement(linkCypress, stringCypress)
        cliquerSurElement(linkIntegration, stringIntegration)       // integration folder in cypress folder

    })
})


