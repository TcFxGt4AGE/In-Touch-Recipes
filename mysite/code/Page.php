<?php
class Page extends SiteTree {

	private static $db = array(
	);

	private static $has_one = array(
	);
	
}
class Page_Controller extends ContentController {

	/**
	 * An array of actions that can be accessed via a request. Each array element should be an action name, and the
	 * permissions or conditions required to allow the user to access it.
	 *
	 * <code>
	 * array (
	 *     'action', // anyone can access this action
	 *     'action' => true, // same as above
	 *     'action' => 'ADMIN', // you must have ADMIN permissions to access this action
	 *     'action' => '->checkAction' // you can only access this action if $this->checkAction() returns true
	 * );
	 * </code>
	 *
	 * @var array
	 */
	private static $allowed_actions = array (
	);

	public function init() {
		parent::init();
	Requirements::css($this->ThemeDir()."/css/styles.css");
	Requirements::css($this->ThemeDir()."/css/bootstrap.min.css");
	Requirements::css($this->ThemeDir()."/css/clean-blog.min.css");
	Requirements::css($this->ThemeDir()."/css/bootstrap3-wysihtml5.css");
	Requirements::css("http://maxcdn.bootstrapcdn.com/font-awesome/4.1.0/css/font-awesome.min.css");
	Requirements::css("http://fonts.googleapis.com/css?family=Lora:400,700,400italic,700italic");
	Requirements::css("http://fonts.googleapis.com/css?family=Open+Sans:300italic,400italic,600italic,700italic,800italic,400,300,600,700,800");
	Requirements::javascript("http://ajax.googleapis.com/ajax/libs/jquery/2.0.2/jquery.min.js");
	Requirements::javascript($this->ThemeDir()."/js/bootstrap.min.js");
	Requirements::javascript($this->ThemeDir()."/js/forms.js");
	Requirements::javascript($this->ThemeDir()."/js/plugins/ckeditor/ckeditor.js");
	Requirements::javascript($this->ThemeDir()."/js/plugins/bootstrap-wysihtml5/bootstrap3-wysihtml5.all.min.js");
	Requirements::javascript($this->ThemeDir()."/js/clean-blog.min.js");
	
	}

}
