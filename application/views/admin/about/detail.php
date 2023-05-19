<?php
// print_r("<pre>");
// print_r($get_all_courses);
// die();
$this->load->view('admin/includes/headerStyle'); ?>
<?php $this->load->view('admin/includes/aside'); ?>
<?php $this->load->view('admin/includes/navbar'); ?>
<style>
    .spaceB {
        display: flex;
        justify-content: space-between;
    }
</style>
<div class="content-wrapper">
    <!-- Content -->

    <div class="container-xxl flex-grow-1 container-p-y">

        <!-- Basic Bootstrap Table -->
        <div class="card">

            <h5 class="card-header spaceB">Təfərrüat
                <a href="<?php echo base_url('dashboard_about') ?>">
                    <button type="button" class="btn  btn-sm btn-danger">Geri</button>
                </a>
            </h5>

            <div class="card-body">



                <label for="title"><b>Başlıq</b></label>
                <br>
                <p>
                    <?php echo $about_detail['b_title']; ?>
                </p>
                <br>

                <label for="descr"><b>Təsvir</b></label>
                <p>
                    <?php echo $about_detail['b_description']; ?>
                </p>



                <div class="col-xs-12 col-sm-12 col-md-12 col-lg-12" style="float: left; margin:0px">
                    <label for="img"><b>Şəkil</b></label>
                    <br>
                    <br>
                    <?php if ($about_detail['b_img']) { ?>
                        <img data-enlargable width="300px" height="auto" style="object-fit: cover; cursor: pointer;"
                            src="<?php echo base_url('uploads/about/' . $about_detail['b_img']); ?>" alt="">
                    <?php } else { ?>
                        <img width="300px" height="auto" style="object-fit: cover;"
                            src="https://icon-library.com/images/no-user-image-icon/no-user-image-icon-27.jpg" alt="">
                    <?php } ?>
                </div>


                <?php if ($admin['a_status'] == "Verified user") { ?>
                    <a href="<?php echo base_url('about_edit/' . $about_detail['b_id']); ?>"
                        style="text-decoration: none; color: white; margin-top:20px" type="button" class="btn btn-warning">
                        <s style="text-decoration:none;" class="tf-icons bx bx-edit"></s>&nbsp; Redaktə et
                    </a>
                <?php } else { ?>
                <?php } ?>



                <?php if ($about_detail['b_img']) { ?>
                    <a href="<?php echo base_url('uploads/about/' . $about_detail['b_img']); ?>"
                        download="<?php echo $about_detail['b_img'] ?>"
                        style="text-decoration: none; color: white; margin-top:20px" type="button" class="btn btn-primary">
                        <s style="text-decoration:none;" class="tf-icons bx bx-download"></s>&nbsp; Şəkli yüklə
                    </a>
                <?php } ?>




                <script>
                    $('img[data-enlargable]').addClass('img-enlargable').click(function () {
                        var src = $(this).attr('src');
                        $('<div>').css({
                            background: 'RGBA(0,0,0,.5) url(' + src + ') no-repeat center',
                            backgroundSize: 'contain',
                            width: '100%', height: '100%',
                            position: 'fixed',
                            zIndex: '10000',
                            top: '0', left: '0',
                            cursor: 'zoom-out'
                        }).click(function () {
                            $(this).remove();
                        }).appendTo('body');
                    });
                </script>



            </div>


            <!-- ======================SWEERALERT====================== -->
            <!-- <script src="<?php echo base_url('assets/admin'); ?>/assets/js/sweet_alert_2.js"></script>
        <script>
            $(document).ready(function(){
                $(".button_remove").click(function(e){
                e.preventDefault(); 
                $url = $(this).data("url");

                Swal.fire({
                    title: 'Are you sure?',
                    text: "You won't be able to revert this!",
                    icon: 'warning',
                    showCancelButton: true,
                    confirmButtonColor: '#3085d6',
                    cancelButtonColor: '#d33',
                    confirmButtonText: 'Yes, delete it!'
                    }).then((result) => {
                        if (result.isConfirmed) {
                            window.location.href = $url;
                            Swal.fire(
                                'Deleted!',
                                'Your file has been deleted.',
                                'success'
                            )
                        }
                    })
                })
            })
        </script> -->
            <!-- ======================SWEERALERT====================== -->

            <!-- ===========================FLASHDATA=========================== -->
            <?php if ($this->session->flashdata('err')) { ?>
                <div class="bs-toast toast toast-placement-ex m-2 fade bg-danger bottom-0 end-0 show" role="alert"
                    aria-live="assertive" aria-atomic="true" data-delay="2000">
                    <div class="toast-header">
                        <button type="button" class="btn-close" data-bs-dismiss="toast" aria-label="Close"></button>
                    </div>
                    <div class="toast-body"><i class="bx bx-bell me-2"></i>
                        <?php echo $this->session->flashdata('err'); ?>
                    </div>
                </div>
            <?php } ?>
            <?php if ($this->session->flashdata('success')) { ?>
                <div class="bs-toast toast toast-placement-ex m-2 fade bg-success bottom-0 end-0 show" role="alert"
                    aria-live="assertive" aria-atomic="true" data-delay="2000">
                    <div class="toast-header">
                        <button type="button" class="btn-close" data-bs-dismiss="toast" aria-label="Close"></button>
                    </div>
                    <div class="toast-body"><i class="bx bx-bell me-2"></i>
                        <?php echo $this->session->flashdata('success'); ?>
                    </div>
                </div>
            <?php } ?>
            <!-- ===========================FLASHDATA=========================== -->

            <?php $this->load->view('admin/includes/footerStyle'); ?>