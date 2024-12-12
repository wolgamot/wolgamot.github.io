<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform" version="1.0">
  <xsl:template match="/">
    <html>
      <xsl:for-each select="website">
        <body>
          <xsl:for-each select="about">
            <h1>
              <xsl:for-each value-of="name"/>
            </h1>
            <h2>Contact: </h2>
            <xsl:for-each select="contact/platform"><xsl:for-each value-of="name"/>: <xsl:for-each value-of="user"/></xsl:for-each>
          </xsl:for-each>
        </body>
      </xsl:for-each>
    </html>
  </xsl:template>
</xsl:stylesheet>
