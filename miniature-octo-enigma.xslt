<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform" version="1.0">
	<xsl:template match="/">
    <html>
    <head>
    <title>Scoreboards per server</title>
    </head>
    <body>
    <h1>Scoreboards per server</h1>
    <xsl:for-each select="config/gameServer">
    <h2>Scoreboard on server: <xsl:value-of select="serverSettings/generalSeverSettings/name"/> </h2>
    <table border="0">
    <tr bgcolor="#4CAF50">
        <th>Nickname</th>
        <th>Score</th>
    </tr>
    <xsl:for-each select="players/player">
    <xsl:sort select="status/points" order="descending" data-type="number"/>
    <tr>
    <td><xsl:value-of select="@nickname"/></td>
    <td><xsl:value-of select="status/points"/></td>
    </tr>
    </xsl:for-each>
        </table>
    </xsl:for-each>
    </body>
    </html>
	</xsl:template>
</xsl:stylesheet>