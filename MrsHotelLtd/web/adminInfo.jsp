<div ng-controller="adminInfo" style="width: 100%; height: auto; background-image: url('resources/images/Reception_Metropol.jpg'); background-size: cover;">
    <div class="admin-reservation" style="width: 100%; min-height: 450px;">
        <div style="background-color: red; height: 50px; width: 50px; font-size: 30px; border-radius: 10px; text-align: center;">{{roombooking.length}}</div>
        <table class="table table-responsive">
            <tr class="reservation-heading">
                <td>Room Number</td>
                <td>Name</td>
                <td>Phone</td>
                
            </tr>
            <tr ng-repeat="member in roombooking">
                
                <td>{{member.roomNo}}</td>
                <td>{{member.name}}</td>
                <td>{{member.phone}}</td>
            </tr>
        </table>
    </div>
</div>