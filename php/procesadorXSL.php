<?php
	$_GET["name_g"];					/* recollim el parámetre passat per url (i.e http://nomarxiu.php?alumno=0) */
	
	$xsl_filename = "groups2.xsl";	/* nom arxiu xsl */
	$xml_filename = "groups.xml";	/* nom arxiu xml */
	
	$doc = new DOMDocument();
	$xsl = new XSLTProcessor();
	
	$doc->load($xsl_filename);
	
	$xsl->importStyleSheet($doc);
	$xsl->setParameter('', 'param',$_GET["name_g"]);	/* pasam paràmetre al xsl */
	
	$doc->load($xml_filename);
	
	echo $xsl->transformToXML($doc);
?>