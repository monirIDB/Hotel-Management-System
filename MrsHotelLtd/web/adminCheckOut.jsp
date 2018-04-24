<div ng-controller="adminCheckOutCtrl" style="width: 100%; height: auto; background-image: url('resources/images/Reception_Metropol.jpg'); background-size: cover;">
    <div class="admin-reservation">

        <table class="table table-responsive">
            <tr class="reservation-heading">
                <td>#</td>
                <td>Name</td>
                <td>Address</td>
                <td>email</td>
                <td>Phone</td>
                <td>Booking Date</td>
                <td>Room Number</td>
                <td colspan="2">Check Out</td>
            </tr>
            <tr ng-repeat="reserve in reservations">
                <td>{{reserve.id}}</td>
                <td>{{reserve.name}}</td>
                <td>{{reserve.address}}</td>
                <td>{{reserve.email}}</td>
                <td>{{reserve.phone}}</td>
                <td>{{reserve.bookingDate}}</td>
                <td>{{reserve.roomNo}}</td>
                <td><button ng-click="switchCheckout(reserve)" data-toggle="modal" data-target="#ckeckout" class="btn btn-primary btn-xs">Check Out</button></td>

            </tr>
        </table>
    </div>


    <!-- modal check in -->
    <div class="modal fade" id="ckeckout" role="dialog">
        <div class="modal-dialog modal-lg">
            <div class="modal-content">
                <div class="modal-header">
                    <button type="button" class="close" data-dismiss="modal">&times;</button>
                    <h4 class="modal-title">Check Out</h4>
                </div>
                <div class="modal-body">
                    {{checkOutMessage}}
                    <form name="reservationForm" novalidate>
                        <div class="row">
                            <div class="col-md-6">
                                <div class="form-group">
                                    <label for="name">Name/Company</label>
                                    <input type="text" ng-model="reservation.name" class="form-control" id="name" name="name" placeholder="Enter your full name or company name" required/>
                                </div>
                                <div class="form-group">
                                    <label for="address">Address</label>
                                    <input type="text" ng-model="reservation.address" class="form-control" id="address" name="address" placeholder="Enter your address" required/>
                                </div>
                                <div class="form-group">
                                    <label for="email">Email</label>
                                    <input type="email" ng-model="reservation.email" class="form-control" id="email" name="email" placeholder="Enter your email" required/>
                                </div>
                                <div class="form-group">
                                    <label for="phone">Phone Number</label>
                                    <input type="text" ng-model="reservation.phone" class="form-control" id="phone" name="phone" placeholder="Enter your phone number" required/>
                                </div>
                                <div class="form-group">
                                    <label for="roomCount">Room Count</label>
                                    <input type="text" ng-model="reservation.roomCount" class="form-control" id="roomCount" name="roomCount" placeholder="Enter your phone number" required/>
                                </div>
                                <div class="form-group">
                                    <label for="roomNo">Room Number</label>
                                    <input type="text" ng-model="reservation.roomNo" class="form-control" id="roomNo" name="roomNo" placeholder="Enter your phone number" required/>
                                </div>
                            </div>
                            <div class="col-md-6">
                                <div class="form-group">
                                    <label for="date">Booking Date</label>
                                    <input type="text" ng-model="reservation.bookingDate" class="form-control" id="date" name="date" placeholder="dd/MM/yyyy" required/>
                                </div>
                                <div class="form-group">
                                    <label for="checkOutDate">Check Out Date</label>
                                    <input type="text" ng-model="reservation.checkOutDate" class="form-control" id="checkOutDate" name="checkOutDate" placeholder="dd/MM/yyyy" required/>
                                </div>
                                
                                <button type="button" ng-click="belCalculation()" class="btn btn-primary btn-md btn-block">Bel</button>
                                <br/><br/>
                                <div class="form-group">
                                    <label for="dayCount">Staying Day</label>
                                    <input type="text" ng-model="reservation.dayCount" class="form-control" id="dayCount" name="dayCount" placeholder="Your Staying Day" required/>
                                </div>
                                <div class="form-group">
                                    <label for="bel">Your Payable Bel</label>
                                    <input type="text" ng-model="reservation.bel" class="form-control" id="bel" name="bel" placeholder="Your Bel" required/>
                                </div>
                                <br/>
                                <button type="submit" ng-click="ckeckOut()" ng-disabled="reservationForm.$invalid" class="btn btn-primary btn-md">Submit</button>
                            </div>
                        </div>
                    </form>
                </div>
                <div class="modal-footer">
                    <button type="button" class="btn btn-default" data-dismiss="modal">Close</button>
                </div>
            </div>
        </div>
    </div>
</div>