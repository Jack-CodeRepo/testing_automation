/*
Test sur le framework cypress
*/


// =============================================================================
// VARIABLES
// =============================================================================
var linkCypress = 'a[title=cypress]'
var stringCypress = 'cypress'
var visible = 'be.visible'

var myUrl='https://github.com/Jack-CodeRepo'
var myRepo="testing_automation"


// =============================================================================
// FONCTIONS
// =============================================================================
function texteDoitEtreVisible(selector, texte){
    cy.get(selector).contains(texte).should(visible)
}

function cliquerSurElement(selector, texte){
    cy.get(selector).contains(texte).click()
}



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
        cy.get('a').contains(myRepo);
        cy.get('a').contains(myRepo).click()

        texteDoitEtreVisible('a',stringCypress)
        cliquerSurElement(linkCypress, stringCypress)
        texteDoitEtreVisible(linkCypress, stringCypress)
        cliquerSurElement(linkCypress, stringCypress)
        cliquerSurElement(linkCypress, stringCypress)

    })

})


