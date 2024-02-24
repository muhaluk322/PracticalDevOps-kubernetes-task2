describe('Demo  Web App Test', () => {
  
 it('Start page successfully loads', () => {
   cy.visit('/');
 });

 it('Start page shows right content', () => {
   const rightContent = '{name: Tobi, age: 2, species: unknown}';
   cy.visit('/');
   cy.get('p').should('contain', rightContent);
 });

 it('App uses MariaDB', () => {
   const rightContent = 'MariaDB';
   cy.visit('/data');
   cy.get('div').should('contain', rightContent);
 });
});
