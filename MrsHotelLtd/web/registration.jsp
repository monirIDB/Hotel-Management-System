
<div ng-controller="memberShipCtrl">
    <div class="reg-background-image">
        <div class="reg-special-member">
            Enjoining Our Special Service<br/>
            <span>&nbsp;{{&nbsp;greantedMenber.length&nbsp;}}&nbsp;</span><br/>
            Please Register to be our Special member
        </div>
    </div>
    <div class="reg-form">
        <div class="container">
            <br/> 
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
            <br/><br/>
        </div>
    </div>
<!--    <div class="reg-feadback-search">
        <h3 style="text-align: center; color: #296192;">Check Your Membership Statues</h3>

        <form>
            <div class="row">
                <div class="col-md-2">

                </div>
                <div class="col-md-8">
                    
                    <div class="input-group">
                        <span class="input-group-addon"><i class="glyphicon glyphicon-user"></i></span>
                        <input type="email" ng-model="search.email"class="form-control" name="regsearch" placeholder="Search statues by email" required/>
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

    </div>
    <div class="reg-feadback-search-result">
        <h1 style="text-align: center; color: white;">{{searchMessage}}</h1>
    </div>-->
</div>
