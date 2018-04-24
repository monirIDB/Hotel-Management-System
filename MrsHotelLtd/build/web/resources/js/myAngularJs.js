var app = angular.module("hotelApp", ["ngRoute"]);
app.controller("hotelCtrl", function ($scope) {
    
    

});
app.config(function ($routeProvider) {
    $routeProvider
            .when("/", {
                templateUrl: "home.jsp"
            })
            .when("/reservation", {
                templateUrl: "reservation.jsp"

            })

            .when("/registration", {
                templateUrl: "registration.jsp"

            });
});



app.controller("memberShipCtrl", function ($scope, $http) {
    $scope.member = {
        id: -1,
        name: "",
        address: "",
        email: "",
        phone: "",
        nid: "",
        statues: "false"
    };

    $http({
            method: 'GET',
            url: 'http://localhost:8080/MrsHotelLtd/rest/memberservice'
        }).then(function(response) {
            $scope.greantedMenber = response.data;
        }, function(response) {
            console.log(response.statusText);
            
        });

    $scope.adduserMembership = function () {

        $http({
            method: 'POST',
            url: 'http://localhost:8080/MrsHotelLtd/rest/memberservice',
            data: angular.toJson($scope.member),
            headers: {
                'Content-Type': 'application/json'
            }
        }).then(addMemberSuccess, addMemberError);
    };


    function addMemberSuccess() {
        
        $scope.memberShipMessage = "Your member ship request is successfully submited";
        $scope.member = {
            id: -1,
            name: "",
            address: "",
            email: "",
            phone: "",
            nid: "",
            statues: "false"
        };
    }
    function addMemberError() {
        $scope.memberShipMessage = "Your member ship request is fail";
    }


});

app.controller("reservationCtrl", function ($scope, $http) {
    $scope.reservation = {
            id: -1,
            name: "",
            address: "",
            email: "",
            phone: "",
            bookingDate: "",
            checkOutDate: "0",
            dayCount: "",
            roomNo: "0",
            roomCount: "",
            bel: "0",
            statues: "false"
    
        };
    $scope.addReservation = function () {

        $http({
            method: 'POST',
            url: 'http://localhost:8080/MrsHotelLtd/rest/reservation',
            data: angular.toJson($scope.reservation),
            headers: {
                'Content-Type': 'application/json'
            }
        }).then(addReservationSuccess, addReservationError);
    };


    function addReservationSuccess() {
        $scope.reservationMessage = "Your reservation request is successfully submited";
         $scope.reservation = {
            id: -1,
            name: "",
            address: "",
            email: "",
            phone: "",
            bookingDate: "",
            checkOutDate: "0",
            dayCount: "",
            roomNo: "0",
            roomCount: "",
            bel: "0",
            statues: "false"
    
        };
    }
    function addReservationError() {
        $scope.reservationMessage = "Your reservation request is fail";
    }

});

app.controller("loginCtrl", function ($scope){
    $scope.login = {email: "", password: ""};
    $scope.dologin = function (){
        if($scope.login.email == "admin@gmail.com" && $scope.login.password == "admin"){
            $scope.page = "admin.jsp";
        }else{
            $scope.page = "#";
            $scope.loginmessage = "Email or Password dose not match";
        }
    };
});

