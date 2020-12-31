<?php
class ModelExtensionTmdOptionproSetting extends Model {
	public function install() {
$this->db->query("ALTER TABLE  `" . DB_PREFIX . "option` ADD  `option_style` VARCHAR( 255 ) NOT NULL AFTER  `sort_order`");
$this->db->query("ALTER TABLE  `" . DB_PREFIX . "option` ADD `background_color` VARCHAR(255) NOT NULL AFTER `sort_order`");
$this->db->query("ALTER TABLE  `" . DB_PREFIX . "option` ADD `text_color` VARCHAR(255) NOT NULL AFTER `sort_order`");

$this->db->query("ALTER TABLE  `" . DB_PREFIX . "option_description` ADD `option_name` VARCHAR(255) NOT NULL AFTER `name`");
$this->db->query("ALTER TABLE  `" . DB_PREFIX . "option_description` ADD `option_description` text NOT NULL AFTER `name`");
$this->db->query("ALTER TABLE  `" . DB_PREFIX . "option_description` ADD `button_text` VARCHAR(255) NOT NULL AFTER `name`");

$this->db->query("ALTER TABLE  `" . DB_PREFIX . "product_option_value` ADD `tmddefault` int(11) NOT NULL AFTER `weight_prefix`");
$this->db->query("ALTER TABLE  `" . DB_PREFIX . "product_option_value` ADD `sku` VARCHAR(255) NOT NULL AFTER `weight_prefix`");
$this->db->query("ALTER TABLE  `" . DB_PREFIX . "product_option_value` ADD `upc` VARCHAR(255) NOT NULL AFTER `weight_prefix`");
$this->db->query("ALTER TABLE  `" . DB_PREFIX . "product_option_value` ADD `model` VARCHAR(255) NOT NULL AFTER `weight_prefix`");
$this->db->query("ALTER TABLE  `" . DB_PREFIX . "product_option_value` ADD `ean` VARCHAR(255) NOT NULL AFTER `weight_prefix`");
$this->db->query("ALTER TABLE  `" . DB_PREFIX . "product_option_value` ADD `description`  text NOT NULL AFTER `weight_prefix`");
$this->db->query("ALTER TABLE  `" . DB_PREFIX . "product_option_value` ADD `tmdimage`  text NOT NULL AFTER `weight_prefix`");

	}
	public function uninstall() {
$this->db->query("ALTER TABLE `" . DB_PREFIX . "option` DROP `option_style`");
$this->db->query("ALTER TABLE `" . DB_PREFIX . "option` DROP `background_color`");
$this->db->query("ALTER TABLE `" . DB_PREFIX . "option` DROP `text_color`");

$this->db->query("ALTER TABLE `" . DB_PREFIX . "option_description` DROP `option_name`");
$this->db->query("ALTER TABLE `" . DB_PREFIX . "option_description` DROP `option_description`");
$this->db->query("ALTER TABLE `" . DB_PREFIX . "option_description` DROP `button_text`");

$this->db->query("ALTER TABLE `" . DB_PREFIX . "product_option_value` DROP `tmddefault`");
$this->db->query("ALTER TABLE `" . DB_PREFIX . "product_option_value` DROP `sku`");
$this->db->query("ALTER TABLE `" . DB_PREFIX . "product_option_value` DROP `upc`");
$this->db->query("ALTER TABLE `" . DB_PREFIX . "product_option_value` DROP `model`");
$this->db->query("ALTER TABLE `" . DB_PREFIX . "product_option_value` DROP `ean`");
$this->db->query("ALTER TABLE `" . DB_PREFIX . "product_option_value` DROP `description`");
$this->db->query("ALTER TABLE `" . DB_PREFIX . "product_option_value` DROP `tmdimage`");
	}
	
}