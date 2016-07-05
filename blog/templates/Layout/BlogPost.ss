<% require themedCSS('blog', 'blog') %>

<div class="blog-entry content-container <% if $SideBarView %>unit size3of4<% end_if %>">
	<article>
		<h1>$Title</h1>
		<br>
		<h4>Preparation time</h4> $Preparation mins
		<h4>Cooking Time</h4> $Cooking mins
		<h4>Directions</h4>$Content
		<h4>Ingredients</h4><p>$Ingredients</p>
		
		<% if $FeaturedImage %>
			<p class="post-image">$FeaturedImage.setWidth(795)</p>
		<% end_if %>
		
		<% include EntryMeta %>
	</article>

	$Form
	$CommentsForm
</div>

<% include BlogSideBar %>
