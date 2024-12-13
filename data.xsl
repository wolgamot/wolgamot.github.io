<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform" version="1.0">
  <xsl:template match="/">
    <html>
      <xsl:for-each select="website">
        <body>
          <xsl:for-each select="about">
            <h1>
              <xsl:value-of select="name"/>
            </h1>
            <h2>Contact: </h2>
            <xsl:for-each select="contact/platform">
              <h3><xsl:value-of select="name"/>: <xsl:value-of select="user"/></h3>
            </xsl:for-each>
          </xsl:for-each>
        </body>
      </xsl:for-each>
    </html>
  </xsl:template>
</xsl:stylesheet>
