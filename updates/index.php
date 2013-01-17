<?php 
if ($_SERVER["SERVER_NAME"] != "www.eclipse.org") {
	header("Location: http://www.eclipse.org/modeling/mdt/updates/");
}
require_once ("../../includes/buildServer-common.php");
require($_SERVER["DOCUMENT_ROOT"] . "/modeling/includes/updates-common.php");

$PRS = array(
	"EMF (XSD)" => "modeling/emf"
);

function notes()
{
	print "<p><i>Use the <a href=\"/modeling/updates/\">Modeling Update Site</a>.</i></p>\n";
}

?>
