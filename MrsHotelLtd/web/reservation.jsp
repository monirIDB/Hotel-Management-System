<div ng-controller="reservationCtrl">
<!--    <div class="reservation-feadback-search">
        <h3 style="text-align: center; color: #296192;">Check Your Reservation Statues</h3>

        <form>
            <div class="row">
                <div class="col-md-2">

                </div>
                <div class="col-md-8">
                    <div class="input-group">
                        <span class="input-group-addon"><i class="glyphicon glyphicon-user"></i></span>
                        <input type="email" class="form-control" name="regsearch" placeholder="Search statues by email" required/>
                        <div class="input-group-btn">
                            <button class="btn btn-default" type="submit">
                                <i class="glyphicon glyphicon-search"></i>
                            </button>
                        </div>
                    </div>
                </div>
                <div class="col-md-2">

                </div>
            </div>
        </form>

    </div>-->
<!--    <div class="reservation-feadback-search-result">
        <h1 style="text-align: center; color: white;">ok</h1>
    </div>-->

    <div class="reservation-background-image">

        <div class="reservation-form">
            <div class="container">
                <br/>
                {{reservationMessage}}
                <form name="reservationForm" novalidate>
                    <div class="row">
                        <div class="col-md-6">
                            <div class="form-group">
                                <label for="name">Name/Company</label>
                                <input type="text" ng-model="reservation.name" class="form-control" id="name" name="name" placeholder="Enter your full name or company name" required/>
                            </div>
                            <div class="form-group">
                                <label for="email">Email</label>
                                <input type="email" ng-model="reservation.email" class="form-control" id="email" name="email" placeholder="Enter your email" required/>
                            </div>
                            <div class="form-group">
                                <label for="phone">Phone Number</label>
                                <input type="number" ng-model="reservation.phone" class="form-control" id="phone" name="phone" placeholder="Enter your phone number" required/>
                            </div>
                            <div class="form-group">
                                <label for="room">Number of Room</label>
                                <select ng-model="reservation.roomCount" class="form-control" id="room" name="room" required>
                                    <option>1</option>
                                </select>
                            </div>
                        </div>
                        <div class="col-md-6">
                            <div class="form-group">
                                <label for="address">Address</label>
                                <textarea ng-model="reservation.address" class="form-control" rows="4" id="address" name="address" placeholder="Enter your address" required></textarea>
                            </div>

                            <div class="form-group">
                                <label for="date">Booking Date</label>
                                <input type="text" ng-model="reservation.bookingDate" class="form-control" id="date" name="date" placeholder="dd/MM/yyyy" required/>
                            </div>
                            <div class="form-group">
                                <label for="day">Number of Day</label>
                                <input type="number" ng-model="reservation.dayCount" class="form-control" id="day" name="day" placeholder="Enter your number of staying day" required/>
                            </div>
                        </div>

                    </div>
                    <button type="submit" ng-click="addReservation()" ng-disabled="reservationForm.$invalid" class="btn btn-primary">Submit</button>
                </form>
                <br/><br/>
            </div>
        </div>

    </div>
</div>

