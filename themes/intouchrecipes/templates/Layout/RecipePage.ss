    <article>
        <div class="container">
            <div class="row">
                <div class="col-lg-8 col-lg-offset-2 col-md-10 col-md-offset-1">
						<h2 class="post-title"><?php echo $row->Title;?></h2>
						<h3 class="post-subtitle"><?php echo $row->Description;?></h3>
						<br>
						<h4>Preparation time</h4> <?php echo $row->prep;?> mins
						<h4>Cooking Time</h4> <?php echo $row->cook;?> mins
						<p><?php echo $row->HowTo;?></p>
						<h4>Ingredients</h4><p><?php echo $row->ingredients;?></p>
						<h4>Photos</h4><img class="img-responsive" src="<?php echo base_url ('/upload');?>/<?php echo $row->FeatureImage;?>"/>
                    <p class="post-meta">Posted by <?php echo $row->username;?> on <?php echo $row->DateTime;?></p>
					<a href="<?php echo site_url('Blog/editArticle');?>/<?php echo $row->Id;?>" style="color: #78bf22;">Update Recipe</a>
					<a href="<?php echo site_url('Blog/deleteArticle');?>/<?php echo $row->Id;?>" style="color: #78bf22;">Delete Recipe</a>
                </div>
            </div>
        </div>
    </article>