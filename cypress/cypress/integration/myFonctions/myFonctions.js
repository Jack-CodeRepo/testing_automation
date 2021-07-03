var visible = 'be.visible'


export function texteDoitEtreVisible(selector, texte){
    cy.get(selector).contains(texte).should(visible)
}

export function cliquerSurElement(selector, texte){
    cy.get(selector, {timeout: 10_000}).contains(texte).should(visible).click()
}