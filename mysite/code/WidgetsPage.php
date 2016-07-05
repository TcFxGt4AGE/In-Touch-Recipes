<?php

class WidgetsPage extends Page {

	public static $db = array(
	'FontAwesomeIcon' => 'Varchar'
	);

	public static $has_one = array(
	"Sidebar" => "WidgetArea"
	);

	public function getCMSFields() {
	$fields = parent::getCMSFields();
	$fields->addFieldToTab("Root.Content.Widgets", new WidgetAreaEditor("Sidebar"));
	$fields->addFieldToTab('Root.Main', FontAwesomeIconPickerField::create('FontAwesomeIcon', 'Font Awesome Icon'), 'Content');
	return $fields;
	}

}

class WidgetsPage_Controller extends Page_Controller {



}
?>