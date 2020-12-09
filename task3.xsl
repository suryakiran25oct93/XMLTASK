<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
	<xsl:template match="/">
		<html>
		<head>
	<style type="text/css">
        body {
            margin:10px;
            background-color:#ccff00;
            font-family:verdana,helvetica,sans-serif;
        }
        </style>
		</head>
		<body>
		<h3>Address Information</h3>
		<table border="2">
		<tr>
		<th>name</th>
		<th>city</th>
		<th>state</th>
		<th>country</th>
		</tr>
		<xsl:for-each select='address-book/address'>
		<tr>
		<td>
		<xsl:attribute name="name" >
		<xsl:value-of select="address/name"></xsl:value-of>
		</xsl:attribute>
		</td>
		<td><xsl:value-of select="city"></xsl:value-of></td>
		<td><xsl:value-of select="state"></xsl:value-of></td>
		<td><xsl:value-of select="country"></xsl:value-of></td>
		</tr>
		</xsl:for-each>
		</table>
		</body>
		</html>
	</xsl:template>
</xsl:stylesheet>