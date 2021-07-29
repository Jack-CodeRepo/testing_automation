/*
Test sur le framework cypress
*/


// apprendre les imports
import { cliquerSurElement } from "/cypress/integration/myFonctions/myFonctions"

// =============================================================================
// VARIABLES
// =============================================================================

const myData = require("/cypress/integration/myFonctions/myVariables")


// =============================================================================
// SCRIPT
// =============================================================================
describe('gihub test', function(){

    it('Visiter Github', function(){
        cy.visit(myData['myUrl'])
        cy.contains('Jack')
        cy.url().should('include','Jack-CodeRepo')
    })

    it(`Consulter le dépôt: ${myData['myRepo']}`, function(){
        cliquerSurElement('a', myData['myRepo'])                                        // testing_automation repository
        cliquerSurElement(myData['linkCypressProj'], myData['stringCypressProj'])       // cypress folder in cypress projectName
        cliquerSurElement(myData['linkCypress'], myData['stringCypress'])
        cliquerSurElement(myData['linkIntegration'], myData['stringIntegration'])       // integration folder in cypress folder
    })
})


