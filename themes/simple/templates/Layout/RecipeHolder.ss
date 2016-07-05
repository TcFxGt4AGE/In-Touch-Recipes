    <div class="container">
        <div class="row">
            <div class="col-lg-8 col-lg-offset-2 col-md-10 col-md-offset-1">
                <div class="post-preview">
				<% loop $Children %>
					<a href = "<?php echo site_url('Blog/viewArticle');?>/<?php echo $row->Id;?>">
						<h2 class="post-title"><?php echo $row->Title;?></a></td></h2>
                        
						<h3 class="post-subtitle"><?php echo $row->Description;?></h3>
						<img class="img-responsive" src="<?php echo base_url ('/upload');?>/<?php echo $row->FeatureImage;?>"/>
                    
                    <p class="post-meta">Posted by <?php echo $row->username;?> on <?php echo $row->DateTime;?></p>
					<p class="post-meta"><a href="<?php echo site_url('Blog/viewArticle');?>/<?php echo $row->Id;?>" style="color: #78bf22;">View full Recipe.</a></p>
                </div>
                <hr>
            </div>
        </div>
    </div>