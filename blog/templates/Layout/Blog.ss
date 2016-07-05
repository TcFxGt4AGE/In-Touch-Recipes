<% require themedCSS('blog', 'blog') %>
$BlogSearchForm
<div class="blog-entry content-container <% if $SideBarView %>unit size3of4<% end_if %>">

	<article>
	
		<h1 style="text-align: center;color: #bd5f26;">
			<% if $ArchiveYear %>
				<%t Blog.Archive 'Archive' %>:
				<% if $ArchiveDay %>
					$ArchiveDate.Nice
				<% else_if $ArchiveMonth %>
					$ArchiveDate.format('F, Y')
				<% else %>
					$ArchiveDate.format('Y')
				<% end_if %>
			<% else_if $CurrentTag %>
				<%t Blog.Tag 'Tag' %>: $CurrentTag.Title
			<% else_if $CurrentCategory %>
				<%t Blog.Category 'Category' %>: $CurrentCategory.Title
			<% else %>
			<% end_if %>
		</h1>

		<div class="content">$Content</div>

		<% if $PaginatedList.Exists %>
			<% loop $PaginatedList %>
				<% include PostSummary %>
			<% end_loop %>
		<% else %>
			<p><%t Blog.NoPosts 'There are no posts' %></p>
		<% end_if %>
	</article>

	$Form
	$CommentsForm

	<% with $PaginatedList %>
		<% include Pagination %>
	<% end_with %>
</div>

<% include BlogSideBar %>
