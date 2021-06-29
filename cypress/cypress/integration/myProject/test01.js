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
