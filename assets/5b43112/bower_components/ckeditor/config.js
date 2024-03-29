/**
 * @license Copyright (c) 2003-2019, CKSource - Frederico Knabben. All rights reserved.
 * For licensing, see https://ckeditor.com/legal/ckeditor-oss-license
 */

CKEDITOR.editorConfig = function( config ) {
	config.filebrowserBrowseUrl = 'http://localhost/assets/b43112/bower_components/kcfinder/browse.php?type=files';
	config.filebrowserImageBrowseUrl = 'http://localhost/assets/b43112/bower_components/kcfinder/browse.php?type=images';
	config.filebrowserFlashBrowseUrl = 'http://localhost/assets/b43112/bower_components/kcfinder/browse.php?type=flash';
	config.filebrowserUploadUrl = 'http://localhost/assets/b43112/bower_components/kcfinder/upload.php?type=files';
	config.filebrowserImageUploadUrl = 'http://localhost/assets/b43112/bower_components/kcfinder/upload.php?type=images';
	config.filebrowserFlashUploadUrl = 'http://localhost/assets/b43112/bower_components/kcfinder/upload.php?type=flash';

	// The toolbar groups arrangement, optimized for two toolbar rows.
	config.toolbarGroups = [
		{ name: 'clipboard',   groups: [ 'clipboard', 'undo' ] },
		{ name: 'editing',     groups: [ 'find', 'selection', 'spellchecker' ] },
		{ name: 'links' },
		{ name: 'insert' },
		{ name: 'forms' },
		{ name: 'tools' },
		{ name: 'document',	   groups: [ 'mode', 'document', 'doctools' ] },
		{ name: 'others' },
		'/',
		{ name: 'basicstyles', groups: [ 'basicstyles', 'cleanup' ] },
		{ name: 'paragraph',   groups: [ 'list', 'indent', 'blocks', 'align', 'bidi' ] },
		{ name: 'styles' },
		{ name: 'colors' },
		{ name: 'about' }
	];

	// Remove some buttons provided by the standard plugins, which are
	// not needed in the Standard(s) toolbar.
	config.removeButtons = 'Underline,Subscript,Superscript';

	// Set the most common block elements.
	config.format_tags = 'p;h1;h2;h3;pre';

	// Simplify the dialog windows.
	config.removeDialogTabs = 'image:advanced;link:advanced';
};
