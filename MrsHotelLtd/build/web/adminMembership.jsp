<div ng-controller="adminMembershipCtrl" style="width: 100%; height: auto; background-image: url('resources/images/memberShip.jpg'); background-size: cover;">
    <div class="admin-membership">
        <div style="background-color: #265A99; width: 100%; height: auto;">
            <p style="font-size: 25px; text-align: left; color: white;">Special Member</p>

        </div>
        <table class="table table-responsive">
            <tr class="heading">
                <td>ID</td>
                <td>Name</td>
                <td>Address</td>
                <td>email</td>
                <td>Phone</td>
                <td>National ID</td>
                <td colspan="2"><button data-toggle="modal" data-target="#memberAdd" class="btn btn-primary btn-sm">Add New</button></td>
            </tr>
            <tr ng-repeat="pmember in membersGrant| orderBy: 'id'">
                <td>{{pmember.id}}</td>
                <td>{{pmember.name}}</td>
                <td>{{pmember.address}}</td>
                <td>{{pmember.email}}</td>
                <td>{{pmember.phone}}</td>
                <td>{{pmember.nid}}</td>
                <td><button ng-click="switchMemberUpdate(pmember)" data-toggle="modal" data-target="#memberUpdate" class="btn btn-primary btn-xs">Update</button></td>
                <td><button ng-click="deleteMember(pmember)" class="btn btn-danger btn-xs">Delete</button></td>
            </tr>
        </table>
    </div>

    <div class="admin-membership">
        <div style="background-color: #265A99; width: 100%; height: auto;">
            <p style="font-size: 25px; text-align: center; color: white;">Membership Request You Have Got</p>
        </div>

        <table class="table table-responsive">
            <tr class="heading">
                <td>ID</td>
                <td>Name</td>
                <td>Address</td>
                <td>email</td>
                <td>Phone</td>
                <td>National ID</td>
                <td colspan="2">Accept/Reject</td>
            </tr>
            <tr ng-repeat="memberr in membersRequest| orderBy: 'id'">
                <td>{{memberr.id}}</td>
                <td>{{memberr.name}}</td>
                <td>{{memberr.address}}</td>
                <td>{{memberr.email}}</td>
                <td>{{memberr.phone}}</td>
                <td>{{memberr.nid}}</td>
                <td><button ng-click="acceptRequest(memberr)" class="btn btn-primary btn-xs">Accept</button></td>
                <td><button ng-click="rejectRequest(memberr)" class="btn btn-danger btn-xs">Reject</button></td>
            </tr>
        </table>
    </div>



    <!--Add member Modal -->
    <div class="modal fade" id="memberAdd" role="dialog">
        <div class="modal-dialog modal-lg">
            <div class="modal-content">
                <div class="modal-header">
                    <button type="button" class="close" data-dismiss="modal">&times;</button>
                    <h4 class="modal-title">Add Member</h4>
                </div>
                <div class="modal-body">
                    {{memberShipMessage}}
                    <form >
                        <div class="row">
                            <div class="col-md-6">
                                <div class="form-group">
                                    <label for="name">Name/Company</label>
                                    <input type="text" ng-model="member.name" class="form-control" id="name" name="name" placeholder="Enter your full name or company name" required/>
                                </div>
                                <div class="form-group">
                                    <label for="nid">National ID</label>
                                    <input type="number" ng-model="member.nid" class="form-control" id="nid" name="nid" placeholder="Enter your national id number" required/>
                                </div>
                                <div class="form-group">
                                    <label for="email">Email</label>
                                    <input type="email" ng-model="member.email" class="form-control" id="email" name="email" placeholder="Enter your email" required/>
                                </div>
                            </div>
                            <div class="col-md-6">
                                <div class="form-group">
                                    <label for="address">Address</label>
                                    <textarea ng-model="member.address" class="form-control" rows="4" id="address" name="address" placeholder="Enter your address" required></textarea>
                                </div>
                                <div class="form-group">
                                    <label for="phone">Phone Number</label>
                                    <input type="text" ng-model="member.phone" class="form-control" id="phone" name="phone" placeholder="Enter your phone number" required/>
                                </div>

                            </div>

                        </div>
                        <button type="submit" ng-click="adduserMembership()" class="btn btn-primary">Submit</button>
                    </form>

                </div>
                <div class="modal-footer">
                    <button type="button" class="btn btn-default" data-dismiss="modal">Close</button>
                </div>
            </div>
        </div>
    </div>


    <!--Update member Modal -->
    <div class="modal fade" id="memberUpdate" role="dialog">
        <div class="modal-dialog modal-lg">
            <div class="modal-content">
                <div class="modal-header">
                    <button type="button" class="close" data-dismiss="modal">&times;</button>
                    <h4 class="modal-title">Update Member</h4>
                </div>
                <div class="modal-body">
                    {{memberShipMessage}}
                    <form >
                        <div class="row">
                            <div class="col-md-6">
                                <div class="form-group">
                                    <label for="name">Name/Company</label>
                                    <input type="text" ng-model="member.name" class="form-control" id="name" name="name" placeholder="Enter your full name or company name" required/>
                                </div>
                                <div class="form-group">
                                    <label for="nid">National ID</label>
                                    <input type="text" ng-model="member.nid" class="form-control" id="nid" name="nid" placeholder="Enter your national id number" required/>
                                </div>
                                <div class="form-group">
                                    <label for="email">Email</label>
                                    <input type="email" ng-model="member.email" class="form-control" id="email" name="email" placeholder="Enter your email" required/>
                                </div>
                            </div>
                            <div class="col-md-6">
                                <div class="form-group">
                                    <label for="address">Address</label>
                                    <textarea ng-model="member.address" class="form-control" rows="4" id="address" name="address" placeholder="Enter your address" required></textarea>
                                </div>
                                <div class="form-group">
                                    <label for="phone">Phone Number</label>
                                    <input type="text" ng-model="member.phone" class="form-control" id="phone" name="phone" placeholder="Enter your phone number" required/>
                                </div>

                            </div>

                        </div>
                        <button type="submit" ng-click="adduserMembership()" class="btn btn-primary">Update</button>
                    </form>
                </div>
                <div class="modal-footer">
                    <button type="button" class="btn btn-default" data-dismiss="modal">Close</button>
                </div>
            </div>
        </div>
    </div>


    
</div>

