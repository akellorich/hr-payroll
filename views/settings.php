<!DOCTYPE html>
<html lang="en">
<head>
   
    <?php  require_once("header.txt")?>
    <title>Rentwise - Admin Dashboard</title>
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
                Settings
            </h2>

            <div class="search-wrapper">
               <i class="fas fa-search"></i>
                <input type="text" name="search" id="search" placeholder="Search here ...">
            </div>

            <div class="user-wrapper">
                <img src="../images/blankavatar.jpg"  height="40px" width="40px"alt="" class="profilephoto">
                <div>
                    <h4 class="username">System Administrator</h4>
                    <small class="role">Admin Account</small>
                </div>
            </div>
        </div>

        <main id="settingsdetails">
            <div class="card containergroup">
                <div class="card-body">
                    <nav class="nav-justified ">
                        <div class="nav nav-tabs " id="nav-tab" role="tablist">
                            <!-- <a class="nav-item nav-link active" id="pop1-tab" data-toggle="tab" href="#tenants" role="tab" aria-controls="tenants" aria-selected="true">Tenants</a> -->
                            <a class="nav-item nav-link active" id="inventoryitems-tab" data-toggle="tab" href="#uploadabledocuments" role="tab" aria-controls="pop2" aria-selected="false">Uploadable Documents</a>
                            <a class="nav-item nav-link" id="inventorycategory-tab" data-toggle="tab" href="#emailsettings" role="tab" aria-controls="pop2" aria-selected="false">Email</a>
                            <a class="nav-item nav-link" id="inventorytype-tab" data-toggle="tab" href="#smssettings" role="tab" aria-controls="pop2" aria-selected="false">SMS</a>
                            <a class="nav-item nav-link" id="inventorytype-tab" data-toggle="tab" href="#whatsappsettings" role="tab" aria-controls="pop2" aria-selected="false">WhatsApp</a>

                        </div>
                    </nav>

                    <!-- Add the Tabs -->
                    <div class="tab-content text-left" id="nav-tabContent">
                       
                        <div class="tab-pane fade show active" id="uploadabledocuments" role="tabpanel" aria-labelledby="pop2-tab">
                            <div class="pt-3"></div>
                            <table class="table table-sm table-striped table-hover">
                                <thead>
                                    <th>#</th>
                                    <th>Document Name</th>
                                    <th>Applies To</th>
                                    <th>Directory</th>
                                    <th>Date Added</th>
                                    <th>Added By</th>
                                    <th>&nbsp;</th>
                                    <th>&nbsp;</th>
                                </thead>
                                <tbody></tbody>
                            </table>
                            <button class="btn btn-sm btn-success" id="addnewuploadabledocument"><i class="fal fa-plus fa-fw fa-lg"></i> Add Uploadable Document</button>
                        </div>

                        <div class="tab-pane" id="smssettings" role="tabpanel" aria-labelledby="pop2-tab">
                            <h3>SMS Settings</h3>
                        
                        </div>

                        <div class="tab-pane" id="emailsettings" role="tabpanel" aria-labelledby="pop2-tab">
                            <h3>Email Settings</h3>
                        
                        </div>

                        <div class="tab-pane" id="whatsappsettings" role="tabpanel" aria-labelledby="pop2-tab">
                            <h3>WhatsApp Settings</h3>
                        
                        </div>
                    </div>
                </div>
            </div>
        </main>
    </div>
    <!-- End of Template -->

    <!-- Modal for uploadable document -->
    <div class="modal" tabindex="-1" role="dialog" id="uplodabledocumentsmodal">
        <div class="modal-dialog" role="document">
            <div class="modal-content">
                <div class="modal-header">
                    <h5 class="modal-title">Document Details</h5>
                    <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                        <span aria-hidden="true">&times;</span>
                    </button>
                </div>
                <div class="modal-body">
                    <div class="uploadabledocumentsnotifications"></div>
                    <input type="hidden" name="documentid" id="documentid" value="0">
                    <div class="form-group">
                        <label for="documentname">Document Name</label>
                        <input type="text" name="documentname" id="documentname" class="form-control form-control-sm">
                    </div>
                    <div class="form-group">
                        <label for="documentappliesto">Applies to ...</label>
                        <select name="documentappliesto" id="documentappliesto" class="form-control form-control-sm">
                            <option value="">&lt;Choose&gt;</option>
                            <option value="tenants">Tenants</option>
                            <option value="employees">Employees</option>
                        </select>
                    </div>

                    <div class="form-group">
                        <label for="documentdirectoryname">Directory Name</label>
                        <input type="text" name="directoryname" id="directoryname" class="form-control form-control-sm">
                    </div>
                </div>
                <div class="modal-footer">
                    <button type="button" class="btn btn-outline-secondary btn-sm" id="clearuploadabledocument"><i class="fal fa-hand-sparkles fa-lg fa-fw"></i> Clear Fields</button>
                    <button type="button" class="btn btn-success btn-sm" id="saveuploadabledocument"><i class="fal fa-save fa-lg fa-fw"></i> Save Document</button>
                    <button type="button" class="btn btn-outline-danger btn-sm" data-dismiss="modal"><i class="fal fa-times fa-lg fa-fw"></i> Close Window</button>
                </div>
            </div>
        </div>
    </div>
</body>
<?php require_once("footer.txt")?>
<script src="../js/settings.js"></script> 
</html>