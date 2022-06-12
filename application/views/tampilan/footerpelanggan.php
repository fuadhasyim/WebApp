<html> 
<head> 
</head> 
<title></title> 
<body> 


 <script src="<?php echo base_url()?>assets/js/jquery.js"></script> 
 <script src="<?php echo base_url()?>assets/js/bootstrap.min.js"></script>        
 <script src="<?php echo base_url()?>assets/DataTables/datatables.min.js"></script> 
 <script type="text/javascript"> 
    $(document).ready(function(){ 
       $('#example').DataTable({ 
        "processing":true, 
        "serverSide":true, 
        "lengthMenu":[[3,5,-1],[3,5,"All"]], 
        "ajax":{ 
            url : "<?php echo site_url('pelanggan/data_server')?>", 
            type : "POST" 
        }, 
        "columnDefs": 
        [ 
            { 
                "targets":0, 
                "data":"id", 
            }, 
            { 
                "targets":1, 
                "data":"namapendaftar", 
            }, 
            { 
                "targets":2, 
                "data":"nomerhp", 
            }, 
            { 
                "targets":3, 
                "data":"pilihanpaket", 
            },
            { 
                "targets":4, 
                "data":"tipepaket", 
            },  
            { 
                "targets":5, 
                "data":"tglpemesanan", 
                
            }, 
            { 
                "targets":6, 
                "data":"jumlahpenumpang", 
                
            }, 
            { 
                "targets":7, 
                "data":"alamatjemput", 
                
            }, 
           
            { 
                "targets":8, 
                 "data":null, 
                "searchable":false, 
                "render":function(data,type,full,meta){ 
                    return '<a href="<?=site_url()?>/pelanggan/delete/'+data["id"]+'"><button type="button" class="btn btn-danger" style="width:80px; height:50px;"><font color="white"><i class="fa fa-trash-o"></i> Hapus</font></button></a>';
                }
            }, 
           
        ] 
       }); 
    }); 
</script> 

 
 <footer class="footer"> 
        © My Team
    </footer> 
</body> 

</html>