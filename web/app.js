/**
 * Created by clement on 08/12/14.
 */


(function () {
    var app = angular.module('store', []);

    var data = {
        text: 'hello',
        phrase: ['how ', 'are ', 'you', '?'],
        canRespond: true,
        tags: [
            {
                name: "Joli Film",
                title: "joli film de fiction"
            }
        ]
    };

    var searchReview = {results : []}

    app.controller('sayHello', function () {

        data.text += " you";
        this.data = data;
        return data;
    });

    app.controller('MediaController', function () {
        this.newtag = {};

        this.search = function (tagSeek) {
            this.bfound = false;

            var found = _.cloneDeep(_.find(data.tags, {'name': tagSeek}));
//            var found =
//            {
//                name: "toto",
//                title: "toto"
//            };
            searchReview.results.push(found);
            this.bfound = found;
            this.newtag = found;

        };

        return searchReview;
    });

})();