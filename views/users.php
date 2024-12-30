<!DOCTYPE html>
<html lang="en">
<head>
    <?php  require_once("header.txt")?>
    <title>HR-Payroll - Users</title>
</head>
<body>
    <input type="checkbox" name="nav-toggle" id="nav-toggle">
    <?php require_once("sidebar.txt"); ?>
    <div class="main-content">
        <div class="header">
            <h2>
                <label for="nav-toggle">
                    <i class="fas fa-bars"></i>
                </label>
                Users
            </h2>

            <div class="search-wrapper">
               <i class="fas fa-search"></i>
                <input type="text" name="search" id="search" placeholder="Search here ...">
            </div>

            <div class="user-wrapper">
                <img src="../images/user_profiles/1.jpg"  height="40px" width="40px"alt="" class="profilephoto">
                <div>
                    <h4 class="username">Richard Onyango</h4>
                    <small class="role">System Admin</small>
                </div>
            </div>
        </div>

        <main id="usersmanager">
            <div class="container-fluid">
                <div class="card">
                    <div class="card-body">
                        <div class="row">
                            <div class="col col-md-3 mt-1">
                                <section class=" ">
                                    <div class="container">
                                        <div class="row">
                                            <div class="col-md-12 text-center ">
                                                <nav class="nav-justified ">
                                                    <div class="nav nav-tabs " id="nav-tab" role="tablist">
                                                        <a class="nav-item nav-link active" id="pop1-tab" data-toggle="tab" href="#pop1" role="tab" aria-controls="pop1" aria-selected="true">Users</a>
                                                        <a class="nav-item nav-link" id="pop2-tab" data-toggle="tab" href="#pop2" role="tab" aria-controls="pop2" aria-selected="false">Roles</a>
                                                    </div>
                                                </nav>
                                                <div class="tab-content text-left" id="nav-tabContent">
                                                    
                                                    <div class="tab-pane fade show active" id="pop1" role="tabpanel" aria-labelledby="pop1-tab">
                                                        <div class="pt-3"></div>
                                                        <div class="form-group">
                                                            <label for="userslist">User</label>
                                                            <select name="userslist" id="userslist" class='form-control form-control-sm mb-2'></select>
                                                            <button class="btn btn-secondary btn-sm" id="changestatusbutton"><i class="fal fa-user-slash fa-lg fa-fw"></i> Disable</button>
                                                            <button class="btn btn-danger btn-sm" id="changepasswordbutton"><i class="fal fa-user-lock fa-lg fa-fw"></i> Reset Password</button>
                                                            <div id="userroles" class="mt-3">
                                                                <p class='font-weight-bold'>Assigned Roles:</p>
                                                                <div id="userroleslist">
                                                                    <div class='alert alert-info' role='alert'><i class='fas fa-info-circle fa-lg'></i> No roles defined currently.</div>
                                                                </div>
                                                            </div>
                                                            <div id="accessiblecompanies" class="mt-3">
                                                                <p class="font-weight-bold">Accessible Companies</p>
                                                                <div id="accessiblecompanieslist">
                                                                    <div class='alert alert-info' role='alert'>
                                                                        <i class='fas fa-info-circle fa-lg'></i> 
                                                                        No companies currently assigned.
                                                                    </div> 
                                                                </div>
                                                            </div>
                                                            <button class="btn btn-sm btn-danger w-100" id="specialpermissions"><i class="fal fa-tasks fa-lg fa-fw"></i> Special Permissions</button>
                                                        </div>
                                                    </div>
                                                    
                                                    <div class="tab-pane fade" id="pop2" role="tabpanel" aria-labelledby="pop2-tab">
                                                        <div class="pt-3"></div>
                                                        <div id="roles" class="roles"></div>
                                                        <div class="roleusers mt-3" id="roleusers"></div>
                                                    </div>

                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                </section>
                            </div>
                            
                            <div class="col">
                                <div id="userdetails" class="mt-2">
                                    <div class="card containergroup">
                                        <div class="card-header">
                                            <h5>User Details</h5>
                                        </div>
                                        <div class="card-body">
                                            <div id="errordiv"></div>
                                            <div class="row"> 
                                                <div class="col">
                                                    <div class="form-group">
                                                        <input type="hidden" id="userid" value="0">
                                                        <input type="hidden" id="accountactive" value="0">
                                                        <label for="username">Username:</label>
                                                        <div class="input-group">
                                                            <div class="input-group-prepend">
                                                                <span class="input-group-text"><i class="fas fa-user fa-sm fa-fw"></i></span>
                                                            </div>
                                                            <input type="text" name="username" id="username" class="form-control  form-control-sm"  autocomplete="off">
                                                        </div>
                                                    </div>
                                                </div>
                                                <div class="col">
                                                    <div class="form-group">
                                                        <label for="firstname">First Name:</label>
                                                        <div class="input-group">
                                                                <div class="input-group-prepend">
                                                                <span class="input-group-text"><i class="fas fa-user-tie  fa-sm fa-fw"></i></span>
                                                            </div>
                                                            <input type="text" name="firstname" id="firstname" class="form-control  form-control-sm"  autocomplete="off">
                                                        </div> 
                                                    </div>
                                                </div>
                                                
                                                <div class="col">
                                                    <div class="form-group">
                                                        <label for="middlename">Middle Name:</label>
                                                        <div class="input-group">
                                                                <div class="input-group-prepend">
                                                                <span class="input-group-text"><i class="fas fa-user-tie  fa-sm fa-fw"></i></span>
                                                            </div>
                                                            <input type="text" name="middlename" id="middlename" class="form-control  form-control-sm"  autocomplete="off">
                                                        </div>  
                                                    </div>
                                                </div>

                                                <div class="col">
                                                    <div class="form-group">
                                                        <label for="lastname">Last Name:</label>
                                                        <div class="input-group">
                                                                <div class="input-group-prepend">
                                                                <span class="input-group-text"><i class="fas fa-user-tie  fa-sm fa-fw"></i></span>
                                                            </div>
                                                            <input type="text" name="lastname" id="lastname" class="form-control  form-control-sm"  autocomplete="off">
                                                        </div>   
                                                    </div>
                                                </div>

                                            </div>
                                            <div class="row">
                                                <div class="col">
                                                    <div class="form-group">
                                                        <label for="password">Password:</label>
                                                        <div class="input-group">
                                                                <div class="input-group-prepend">
                                                                <span class="input-group-text"><i class="fas fa-key  fa-sm fa-fw"></i></span>
                                                            </div>
                                                            <input type="password" name="password" id="password" class="form-control  form-control-sm"  autocomplete="off">
                                                        </div>  
                                                    </div>
                                                </div>

                                                <div class="col">
                                                    <div class="form-group">
                                                        <label for="confirmpassword">Confirm Password:</label>
                                                        <div class="input-group">
                                                                <div class="input-group-prepend">
                                                                <span class="input-group-text"><i class="fas fa-key  fa-sm fa-fw"></i></span>
                                                            </div>
                                                            <input type="password" name="confirmpassword" id="confirmpassword" class="form-control  form-control-sm"  autocomplete="off">
                                                        </div>
                                                    
                                                    </div>      
                                                </div>
                                                
                                                <div class="col">
                                                    <div class="form-group">
                                                        <label for="email">Email:</label>
                                                        <div class="input-group">
                                                                <div class="input-group-prepend">
                                                                <span class="input-group-text"><i class="fas fa-at  fa-sm fa-fw"></i></span>
                                                            </div>
                                                            <input type="email" name="email" id="email" class="form-control  form-control-sm"  autocomplete="off">
                                                        </div>
                                                    </div>
                                                </div>

                                                <div class="col">
                                                    <div class="form-group">
                                                        <label for="mobile">Mobile:</label>
                                                        <div class="input-group">
                                                                <div class="input-group-prepend">
                                                                <span class="input-group-text"><i class="fas fa-phone  fa-sm fa-fw"></i></span>
                                                            </div>
                                                            <input type="number" name="mobile" id="mobile" class="form-control  form-control-sm"  autocomplete="off"> 
                                                        </div>
                                                    </div>
                                                </div>
                                            </div>

                                            <div class="row">
                                                <div class="col">
                                                    <div class="check-group">
                                                        <input type="checkbox" class="check-control" id="systemadmin" name="systemadmin">
                                                        <label for="systemadmin" class="check-label">System Administrator</label>
                                                    </div>
                                                </div>
                                                <div class="col">
                                                    <div class="check-group">
                                                        <input type="checkbox" class="check-control" id="changepasswordonlogon" name="changepasswordonlogon">
                                                        <label for="changepasswordonlogon" class="check-label">Change password on Logon</label>
                                                    </div>
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                    <div class="row">
                                        <div class="col btn-group mt-2 btn-group-toggle" id="filterprivileges" data-toggle="buttons">
                                        
                                        </div>
                                    </div>
                                    <div class="row">
                                        <div class="col" id="userprivileges">  

                                        </div>
                                    </div>

                                    <div class="d-flex justify-content-between">
                                        <div>
                                            <div class="check-group">
                                                <input type="checkbox" class="check-control" id="selectalluserprivileges" name="selectalluserprivileges">
                                                <label for="selectalluserprivileges" class="check-label">Select All</label>
                                            </div>
                                        </div>
                                        <div>
                                            <button class='btn btn-secondary btn-sm' id='saveuser'><i class="fal fa-save fa-lg fa-fw"></i> Save User</button>
                                            <button class='btn btn-danger btn-sm' id='clearuser'><i class="fal fa-broom fa-lg fa-fw"></i> Clear Fields</button>
                                            <button class='btn btn-success btn-sm' id='adduserrole' data-toggle='modal' data-target='#userrolesadd'><i class="fal fa-plus-circle fa-lg fa-fw"></i> Attach Role</button>
                                            <button class='btn btn-success btn-sm' id='addusercompany'><i class="fal fa-plus-circle fa-lg fa-fw"></i> Attach Company</button>
                                        </div>
                                    </div>
                                </div>

                                <div id="roledetails" class="mt-2">
                                <div class="row">
                                    <div class="col">
                                        <div class="card containergroup">
                                            <div class="card-header">
                                                <h5>Role Details</h5>
                                            </div>
                                            <div class="card-body">
                                                <div id="roleerrors" class="roleerrors"></div>
                                                <div class="row">
                                                    <div class="col">
                                                        <div class="control-group">
                                                            <input type="hidden" id="roleid" name="roleid" value="0">
                                                            <label for="rolename">Role Name</label>
                                                            <input type="text" id="rolename" name="rolename" class='form-control form-control-sm'  autocomplete="off">
                                                        </div>
                                                    </div>
                                                    <div class="col">
                                                        <div class="control-group">
                                                            <label for="roledescription">Role Description</label>
                                                            <input type="text" id="roledescription" name="roledescription" class='form-control form-control-sm'  autocomplete="off">
                                                            <p>
                                                        </div>
                                                    </div>
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                                <div class="row">
                                    <div class="col btn-group mt-2 btn-group-toggle" id="filterroleprivileges" data-toggle="buttons">
                                    
                                    </div>
                                </div>
                                <div class="row">
                                    <div class="col" id="roleprivileges" class="mt-2">
                                    </div>
                                </div>
                                <div class="row">
                                    <div class="col col-md-2 mb-2">
                                        <div class="check-group">
                                            <input type="checkbox" class="check-control" id="selectallroleprivileges" name="selectallroleprivileges">
                                            <label for="selectallroleprivileges" class="check-label">Select All</label>
                                        </div>
                                    </div>
                                    <div class="col mb-2">
                                        <button class='btn btn-secondary btn-sm' id="saverole"><i class="fal fa-save fa-lg"> </i> Save Role</button>
                                        <button class='btn btn-danger btn-sm' id='deleterole'><i class="fal fa-times-circle fa-lg"></i> Delete Role</button>
                                        <button class='btn btn-info btn-sm' id='clearrole'><i class="fal fa-eraser fa-lg"></i> Clear Form</button>
                                    </div>
                                </div>
                            </div>
                            <div class="modal fade alert-dismissable fade" id="userrolesadd">
                                <div class="modal-dialog">
                                    <div class="modal-content" id="heldsalesdetails">
                                        <div class="modal-header">
                                            <p  class="modal-title" >Select Role(s)</p>
                                            <button type="button" class="close" data-dismiss="modal">
                                                <span>&times;</span>
                                            </button>
                                        </div> <!-- -->
                                        <div class="modal-body" id="">
                                            <div id="userroleerrors"></div>
                                            <div id="usernonroles"></div>
                                        </div>
                                        <div class="modal-footer">
                                            <button type="button" class="btn btn-secondary btn-sm" id="saveuserrole" >Save Roles</button>
                                            <button type="button" class="btn btn-danger btn-sm" id="cancelsaveuserrole" data-dismiss="modal">Close</button>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
                
            </div> 
        </main>
    </div>
    <!-- End of Template -->
    <!-- Modal for assigning special permissions  -->
    <div class="modal" tabindex="-1" role="dialog" id="specialpermissionsmodal">
        <div class="modal-dialog" role="document">
            <div class="modal-content">
                
                <div class="modal-header">
                    <h5 class="modal-title">User's special permission</h5>
                    <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                        <span aria-hidden="true">&times;</span>
                    </button>
                </div>
                
                <div class="modal-body">
                    <nav class="nav-justified ">
                        <div class="nav nav-tabs " id="specialprivileges-tab" role="tablist">
                            <a class="nav-item nav-link active" id="pop1-requisitions" data-toggle="tab" href="#requisitionprivileges" role="tab" aria-controls="pop1" aria-selected="true">Requisitions</a>
                            <a class="nav-item nav-link" id="pop2-purchaseorders" data-toggle="tab" href="#purchaseorderprivileges" role="tab" aria-controls="pop2" aria-selected="false">Purchase Order</a>
                            <a class="nav-item nav-link" id="pop3-signature" data-toggle="tab" href="#signature" role="tab" aria-controls="pop2" aria-selected="false">Signature</a>
                        </div>
                    </nav>
                
                    <div class="tab-content text-left" id="nav-tabContent"> 
                        <!-- Requisition privileges tab  -->
                        <div class="tab-pane fade show active" id="requisitionprivileges" role="tabpanel" aria-labelledby="pop1-tab">
                            <div class="pt-3"></div>
                            <table class="table table-sm table-striped" id="requisitionprivilegestable"></table>
                        </div>
                        <!-- Purchase Order privileges tab  -->
                        <div class="tab-pane fade" id="purchaseorderprivileges" role="tabpanel" aria-labelledby="pop2-purchaseorders">
                        <div class="pt-3"></div>
                            <table class="table table-sm table-striped" id="purchaseorderprivilegestable"></table>
                        </div>
                        <!-- Signature tab  -->
                        <div class="tab-pane fade" id="signature" role="tabpanel" aria-labelledby="pop3-signature">
                            <div class="pt-3"></div>
                            <div id="attachmenterror"></div>
                            <img src="../images/noimage.jpg" alt="signature" id="signaturepreview" height=150px width=300px>
                            <div class="form-group row">
                                <label for="documentfile" class="col-sm-3 col-form-label">Signature:</label>
                                <div class="col-sm-9">
                                    <input type="file" id="signaturedocument" accept="image/*" name="signaturedocument" class='form-control form-control-sm'>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
                
                <div class="modal-footer">
                    <button type="button" class="btn btn-success btn-sm" id="saveuserspecialprivileges"><i class="fal fa-save fa-lg fa-fw"></i> Save changes</button>
                    <button type="button" class="btn btn-danger btn-sm" data-dismiss="modal"><i class="fal fa-times-circle fa-lg fa-fw"></i> Close</button>
                </div>
            </div>
        </div>
    </div>

    <!-- Modal for attaching to a company  -->
    <div class="modal" tabindex="-1" role="dialog" id="accessiblecompaniesmodal">
        <div class="modal-dialog" role="document">
            <div class="modal-content">
                <div class="modal-header">
                    <h5 class="modal-title">Attach Company</h5>
                    <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                    <span aria-hidden="true">&times;</span>
                    </button>
                </div>
                <div class="modal-body">
                    <div id="membercompanynotification"></div>
                    <table class="table table-sm table-striped" id="accessiblecompaniestable"></table>
                </div>
                <div class="modal-footer">
                    <button type="button" class="btn btn-success btn-sm" id="saveusercompanies">Save changes</button>
                    <button type="button" class="btn btn-secondary btn-sm" data-dismiss="modal">Close</button>
                </div>
            </div>
        </div>
    </div>
</body>
<?php require_once("footer.txt")?>
<script src="../js/users.js"></script>
<!-- <script src="../js/smsmailer.js"></script> -->
</html>