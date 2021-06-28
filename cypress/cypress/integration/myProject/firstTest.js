
describe('Un Titre Qui Claque', function (){
    it('Ne fait rien du tout', function (){
        expect(false).not.equal(true)
    })
    it('Ne fait vraiment rien du tout', function (){
        expect(false).to.equal(true)
    })
    it('Ne fait-il vraiment rien ?', function (){
        expect(true).to.equal(true)
    })
})


describe('gihub test', function(){
    var myUrl='https://github.com/Jack-CodeRepo'
    var myRepo="testing_automation"
    it('Visiter Github', function(){
        cy.visit(myUrl)
        cy.contains('Jack')
        cy.url().should('include','Jack-CodeRepo')
        cy.get('a').contains(myRepo)
        cy.get('a').contains(myRepo).click()
        cy.get('[title=cypress]').click()
        cy.url().should('include',myRepo)

    })
})
