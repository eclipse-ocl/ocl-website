<?php 
if ($_SERVER["SERVER_NAME"] != "www.eclipse.org") {
	header("Location: http://www.eclipse.org/modeling/mdt/updates/");
}
require_once ("../../includes/buildServer-common.php");
require($_SERVER["DOCUMENT_ROOT"] . "/modeling/includes/updates-common.php");

$PRS = array(
);

function notes()
{
	print "<p><i style=\"color:red\"><b>NOTE:</b>As of Helios (Eclipse 3.6), MDT plugins should be installed from the <a href=\"/modeling/updates/\">Modeling Update Site</a>.</i></p>\n";
}

update_manager("MDT", "Eclipse Modeling", $PRS, true, true);
?>
