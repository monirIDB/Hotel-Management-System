var aapp = angular.module("hotelAdminApp", ["ngRoute"]);
aapp.controller("hotelAdminCtrl", function ($scope) {

});
aapp.config(function ($routeProvider) {
    $routeProvider
            .when("/", {
                templateUrl: "adminInfo.jsp"
            })

            .when("/adminmembership", {
                templateUrl: "adminMembership.jsp"

            })
            .when("/adminChackIn", {
                templateUrl: "adminCheckIn.jsp"

            })
            .when("/adminchackout", {
                templateUrl: "adminCheckOut.jsp"

            });
});

aapp.controller("adminMembershipCtrl", function ($scope, $http) {

    $scope.membersGrant = [];
    $scope.member = {
        id: -1,
        name: "",
        address: "",
        email: "",
        phone: "",
        nid: "",
        statues: "true"
    };

    _refreshMemberTrueData();


    $scope.adduserMembership = function () {
        var method = "";
        var url = "";
        if ($scope.member.id == -1) {
            method = "POST";
            url = 'http://localhost:8080/MrsHotelLtd/rest/memberservice';
        } else {
            method = "PUT";
            url = 'http://localhost:8080/MrsHotelLtd/rest/memberservice/' + $scope.member.id;
        }
        $http({
            method: method,
            url: url,
            data: angular.toJson($scope.member),
            headers: {
                'Content-Type': 'application/json'
            }
        }).then(addMemberSuccess, addMemberError);
    };


    $scope.switchMemberUpdate = function (pmember) {
        $scope.member.id = pmember.id;
        $scope.member.name = pmember.name;
        $scope.member.address = pmember.address;
        $scope.member.email = pmember.email;
        $scope.member.phone = pmember.phone;
        $scope.member.nid = pmember.nid;
        $scope.member.statues = "true";


    };

    $scope.deleteMember = function (pmember) {

        $http({
            method: 'DELETE',
            url: 'http://localhost:8080/MrsHotelLtd/rest/memberservice/' + pmember.id
        }).then(addMemberSuccess, addMemberError);
    };





    function addMemberSuccess() {

        $scope.memberShipMessage = "successfully";
        $scope.member = {
            id: -1,
            name: "",
            address: "",
            email: "",
            phone: "",
            nid: "",
            statues: "true"
        };
        _refreshMemberTrueData();
        _refreshMemberRequestData();
    }

    function addMemberError() {
        $scope.memberShipMessage = "fail";
    }

    function _refreshMemberTrueData() {
        $http({
            method: 'GET',
            url: 'http://localhost:8080/MrsHotelLtd/rest/memberservice'
        }).then(function successCallback(response) {
            $scope.membersGrant = response.data;
            console.log(response.data);
        }, function errorCallback(response) {
            console.log(response.statusText);
        });
    }


    $scope.membersRequest = [];
    _refreshMemberRequestData();

    $scope.acceptRequest = function (memberr) {
        $scope.member.id = memberr.id;
        $scope.member.name = memberr.name;
        $scope.member.address = memberr.address;
        $scope.member.email = memberr.email;
        $scope.member.phone = memberr.phone;
        $scope.member.nid = memberr.nid;
        $scope.member.statues = "true";


        $http({
            method: "PUT",
            url: 'http://localhost:8080/MrsHotelLtd/rest/memberservice/' + $scope.member.id,
            data: angular.toJson($scope.member),
            headers: {
                'Content-Type': 'application/json'
            }
        }).then(addMemberSuccess, addMemberError);


    };

    $scope.rejectRequest = function (memberr) {

        $http({
            method: 'DELETE',
            url: 'http://localhost:8080/MrsHotelLtd/rest/memberservice/' + memberr.id
        }).then(addMemberSuccess, addMemberError);
    };


    function _refreshMemberRequestData() {
        $http({
            method: 'GET',
            url: 'http://localhost:8080/MrsHotelLtd/rest/memberrequest'
        }).then(function successCallback(response) {
            $scope.membersRequest = response.data;
            console.log(response.data);
        }, function errorCallback(response) {
            console.log(response.statusText);
        });
    }



});


aapp.controller("adminCheckIn", function ($scope, $http) {
    $scope.hrooms = [];
    $scope.hroom = {id: -1, roomNo: "", statues: ""};
    $scope.reservations = [];
    $scope.reservation = {
        id: -1,
        name: "",
        address: "",
        email: "",
        phone: "",
        bookingDate: "",
        checkOutDate: "0",
        dayCount: "0",
        roomNo: "",
        roomCount: "1",
        bel: "0",
        statues: "true"

    };



    $http({
        method: 'GET',
        url: 'http://localhost:8080/MrsHotelLtd/rest/reservation/true'
    }).then(function successCallback(response) {
        $scope.roombooking = response.data;
        console.log(response.data);
    }, function errorCallback(response) {
        console.log(response.statusText);
    });



    _refreshReservationData();
    _refreshRoomData();


    $scope.addReservation = function () {
        var method = "";
        var url = "";
        if ($scope.reservation.id == -1) {
            method = "POST";
            url = 'http://localhost:8080/MrsHotelLtd/rest/reservation';
        } else {
            method = "PUT";
            url = 'http://localhost:8080/MrsHotelLtd/rest/reservation/' + $scope.reservation.id;
        }
        $http({
            method: method,
            url: url,
            data: angular.toJson($scope.reservation),
            headers: {
                'Content-Type': 'application/json'
            }
        }).then(checkinSuccess, checkinError);




//        $http({
//            method: "PUT",
//            url: 'http://localhost:8080/MrsHotelLtd/rest/room/' + $scope.hroom.id,
//            data: angular.toJson($scope.hroom),
//            headers: {
//                'Content-Type': 'application/json'
//            }
//        }).then(console.log("response.data"), console.log("response.statusText"));
//        
//        


    };


    $scope.deleteReservation = function (reserve) {
        $http({
            method: 'DELETE',
            url: 'http://localhost:8080/MrsHotelLtd/rest/reservation/' + reserve.id
        }).then(checkinSuccess, checkinError);
    };


    $scope.switchCheckIn = function (reserve) {
        $scope.reservation.id = reserve.id;
        $scope.reservation.name = reserve.name;
        $scope.reservation.address = reserve.address;
        $scope.reservation.email = reserve.email;
        $scope.reservation.phone = reserve.phone;
        $scope.reservation.bookingDate = reserve.bookingDate;
        $scope.reservation.checkOutDate = "0";
        $scope.reservation.dayCount = "0";
        $scope.reservation.roomNo = reserve.roomNo;
        $scope.reservation.roomCount = "1";
        $scope.reservation.bel = "0";
        $scope.reservation.statues = "true";


    };
    function _refreshReservationData() {
        $http({
            method: 'GET',
            url: 'http://localhost:8080/MrsHotelLtd/rest/reservation'
        }).then(function successCallback(response) {
            $scope.reservations = response.data;
            console.log(response.data);
        }, function errorCallback(response) {
            console.log(response.statusText);
        });
    }

    function _refreshRoomData() {
        $http({
            method: 'GET',
            url: 'http://localhost:8080/MrsHotelLtd/rest/room'
        }).then(function successCallback(response) {
            $scope.hrooms = response.data;
            console.log(response.data);
        }, function errorCallback(response) {
            console.log(response.statusText);
        });
    }

    function checkinSuccess() {
        $scope.checkinsuccess = "You are now check in!";
        $scope.reservation = {
            id: -1,
            name: "",
            address: "",
            email: "",
            phone: "",
            bookingDate: "",
            checkOutDate: "0",
            dayCount: "0",
            roomNo: "",
            roomCount: "1",
            bel: "0",
            statues: "true"

        };
        _refreshReservationData();

    }
    ;

    function checkinError() {
        $scope.checkinsuccess = "You are not check in!";
    }
    ;




});


aapp.controller("adminCheckOutCtrl", function ($scope, $http) {
    $scope.reservations = [];
    $scope.reservation = {
        id: -1,
        name: "",
        address: "",
        email: "",
        phone: "",
        bookingDate: "",
        checkOutDate: "",
        dayCount: "",
        roomNo: "",
        roomCount: "",
        bel: "",
        statues: "checkout"

    };


    _refreshReservationData();

    $scope.ckeckOut = function () {
        var method = "";
        var url = "";
        if ($scope.reservation.id == -1) {
            method = "POST";
            url = 'http://localhost:8080/MrsHotelLtd/rest/reservation';
        } else {
            method = "PUT";
            url = 'http://localhost:8080/MrsHotelLtd/rest/reservation/' + $scope.reservation.id;
        }
        $http({
            method: method,
            url: url,
            data: angular.toJson($scope.reservation),
            headers: {
                'Content-Type': 'application/json'
            }
        }).then(checkOutSuccess, checkOutEror);
    };

    function checkOutSuccess() {
        $scope.checkOutMessage = "Check Out Successful";
        _refreshReservationData();
        $scope.reservation = {
            id: -1,
            name: "",
            address: "",
            email: "",
            phone: "",
            bookingDate: "",
            checkOutDate: "",
            dayCount: "",
            roomNo: "",
            roomCount: "",
            bel: "",
            statues: "checkout"

        };
    }
    ;

    function checkOutEror() {
        $scope.checkOutMessage = "Check Out Error";
    }
    ;

    $scope.belCalculation = function () {
        var d1 = $scope.reservation.bookingDate;
        var d2 = $scope.reservation.checkOutDate;
        $scope.reservation.dayCount = dateDiffInDays(d2, d1);
        $scope.reservation.bel = $scope.reservation.dayCount * 1000;

    };

    function dateDiffInDays(date1, date2) {
        var d1 = new Date(date1);
        var d2 = new Date(date2);
        var timeDiff = Math.abs(d2.getTime() - d1.getTime());
        var diffDays = Math.ceil(timeDiff / (1000 * 3600 * 24));
        return diffDays;
    }



    $scope.switchCheckout = function (reserve) {
        $scope.reservation.id = reserve.id;
        $scope.reservation.name = reserve.name;
        $scope.reservation.address = reserve.address;
        $scope.reservation.email = reserve.email;
        $scope.reservation.phone = reserve.phone;
        $scope.reservation.bookingDate = reserve.bookingDate;
        //$scope.reservation.checkOutDate = "0";
        // $scope.reservation.dayCount = "0";
        $scope.reservation.roomNo = reserve.roomNo;
        $scope.reservation.roomCount = "1";
        //$scope.reservation.bel = "0";
        $scope.reservation.statues = "checkout";
    };

    function _refreshReservationData() {
        $http({
            method: 'GET',
            url: 'http://localhost:8080/MrsHotelLtd/rest/reservation/true'
        }).then(function successCallback(response) {
            $scope.reservations = response.data;
            console.log(response.data);
        }, function errorCallback(response) {
            console.log(response.statusText);
        });
    }

});

aapp.controller("adminInfo", function ($scope, $http) {
    $http({
        method: 'GET',
        url: 'http://localhost:8080/MrsHotelLtd/rest/reservation/true'
    }).then(function successCallback(response) {
        $scope.roombooking = response.data;
        console.log(response.data);
    }, function errorCallback(response) {
        console.log(response.statusText);
    });

});