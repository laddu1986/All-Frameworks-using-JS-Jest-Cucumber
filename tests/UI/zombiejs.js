/* global describe */
const Browser = require('../../node_modules/zombie');
Browser.localhost('example.com', 8081);

describe('User visits signup page', function () {

    const browser = new Browser({
        waitDuration: 29 * 1000
    });

    before(function (done) {
        browser.visit('/', done);
    });

    describe('Check the DuckDuckGo search results page', () => {

        it('Perform search', () => {
            browser.fill('q', 'TrumpKlon')
            return browser.pressButton('Search');
        });

        it('The page title is correct', function () {
            return browser.assert.text('title', 'TrumpKlon at DuckDuckGo');
        });

        it('Relevant first search result displayed', function () {
            return browser.assert.text('h2.result__title', /TrumpKlon/i);
        });
    });
});