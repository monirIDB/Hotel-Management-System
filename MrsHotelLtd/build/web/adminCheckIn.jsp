<div ng-controller="adminCheckIn" style="width: 100%; height: auto; background-image: url('resources/images/Reception_Metropol.jpg'); background-size: cover;">
    <div class="admin-reservation">
        <div style="width: 100%; height: auto;">
            <button ng-click="switchCheckIn(reserve)" data-toggle="modal" data-target="#ckeckin" class="btn btn-primary btn-md">Check In</button>
            <span style="background-color: green; font-size: 25px; border-radius: 5px;">&nbsp;{{&nbsp;20 - roombooking.length&nbsp;}}&nbsp;</span><br/>
            <p style="text-align: center; font-size: 25px; color: white;">Reservation Request</p>
        </div>
        <table class="table table-responsive">
            <tr class="reservation-heading">
                <td>#</td>
                <td>Name</td>
                <td>Address</td>
                <td>email</td>
                <td>Phone</td>
                <td>Booking Date</td>
                <!--                <td>Room Number</td>-->
                <td colspan="2">Add/Delete</td>
            </tr>
            <tr ng-repeat="reserve in reservations">
                <td>{{reserve.id}}</td>
                <td>{{reserve.name}}</td>
                <td>{{reserve.address}}</td>
                <td>{{reserve.email}}</td>
                <td>{{reserve.phone}}</td>
                <td>{{reserve.bookingDate}}</td>
                <!--                <td>{{reserve.roomNo}}</td>-->
                <td><button ng-click="switchCheckIn(reserve)" data-toggle="modal" data-target="#ckeckin" class="btn btn-primary btn-xs">Add</button></td>
                <td><button ng-click="deleteReservation(reserve)" class="btn btn-danger btn-xs">Delete</button></td>
            </tr>
        </table>
    </div>



    <!-- modal check in -->
    <div class="modal fade" id="ckeckin" role="dialog">
        <div class="modal-dialog modal-lg">
            <div class="modal-content">
                <div class="modal-header">
                    <button type="button" class="close" data-dismiss="modal">&times;</button>
                    <h4 class="modal-title">Check In</h4>
                </div>
                <div class="modal-body">
                    {{checkinsuccess}}
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
                                    <input type="text" ng-model="reservation.phone" class="form-control" id="phone" name="phone" placeholder="Enter your phone number" required/>
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
                            </div>
                            <div class="row">
                                <div class="col-md-3"></div>
                                <div class="col-md-6">
                                    <div class="form-group">
                                        <label for="room">Room Number</label>
                                        <select ng-model="reservation.roomNo" class="form-control" id="room" name="room" required>
                                            <option>100</option>
                                            <option>101</option>
                                            <option>102</option>
                                            <option>103</option>
                                            <option>104</option>
                                            <option>105</option>
                                            <option>106</option>
                                            <option>107</option>
                                            <option>108</option>
                                            <option>109</option>
                                            <option>110</option>
                                            <option>111</option>
                                            <option>112</option>
                                            <option>113</option>
                                            <option>114</option>
                                            <option>115</option>
                                            <option>116</option>
                                            <option>117</option>
                                            <option>118</option>
                                            <option>119</option>
                                            <option>120</option>
                                        </select>
                                    </div>
                                    <!--                                    <div class="form-group">
                                                                            <label for="room">Room Number</label>
                                                                            <select ng-options="rev.roomNo for rev in hrooms" ng-model="reservation.roomNo" class="form-control" id="room" name="room" required>
                                                                                
                                                                            </select>
                                                                        </div>-->
                                </div>
                                <div class="col-md-3"></div>
                            </div>
                        </div>
                        <button type="submit" ng-click="addReservation()" ng-disabled="reservationForm.$invalid" class="btn btn-primary">Submit</button>
                    </form>
                </div>
                <div class="modal-footer">
                    <button type="button" class="btn btn-default" data-dismiss="modal">Close</button>
                </div>
            </div>
        </div>
    </div>


</div>