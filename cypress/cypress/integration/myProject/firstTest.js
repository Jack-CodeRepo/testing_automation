
var linkCypress = 'a[title=cypress]'
var stringCypress = 'cypress'
var visible = 'be.visible'


var myUrl='https://github.com/Jack-CodeRepo'
var myRepo="testing_automation"

// on déclare des fonctions
function texteDoitEtreVisible(selector, texte){
    cy.get(selector).contains(texte).should(visible)
}

function cliquerSurElement(selector, texte){
    cy.get(selector).contains(texte).click()
}


describe('gihub test', function(){

    it('Visiter Github', function(){
        cy.visit(myUrl)
        cy.contains('Jack')
        cy.url().should('include','Jack-CodeRepo')
    })

    it('Consulter un dépôt', function(){
        cy.get('a').contains(myRepo);
        cy.get('a').contains(myRepo).click()


        // appel des fonctions
        // et ça marche !
        texteDoitEtreVisible('a',stringCypress)
        cliquerSurElement(linkCypress, stringCypress)
        cy.url().should('include', stringCypress)
        texteDoitEtreVisible(linkCypress, stringCypress)
        cliquerSurElement(linkCypress, stringCypress)
    })

})


