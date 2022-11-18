<?xml version="1.0"?>

<xsl:stylesheet version="1.0"
xmlns:xsl="http://www.w3.org/1999/XSL/Transform">

<xsl:template match="/">
  <html>
  <body bgcolor="purple">
    <h1>Customer Information</h1>
    <table border="5px">
    <tr bgcolor="blue">
      <th style="text-align:left">Customer_ID</th>
      <th style="text-align:left">First Name</th>
      <th style="text-align:left">Middle Name</th>
      <th style="text-align:left">Last Name</th>
      <th style="text-align:left">Street</th>
      <th style="text-align:left">City</th>
      <th style="text-align:left">State</th>
      <th style="text-align:left">Phone_Number</th>
    </tr>
      <xsl:for-each select="printer_customer_management/customer">
        <xsl:sort select="fname"/>
        <xsl:if test="city !='Bhubaneshwar'">
          <tr bgcolor="green">
          <td><xsl:value-of select="id"/></td>
          <td><xsl:value-of select="fname"/></td>
          <td><xsl:value-of select="mname"/></td>
          <td><xsl:value-of select="lname"/></td>
          <td><xsl:value-of select="street"/></td>
          <td bgcolor="pink"><xsl:value-of select="city"/></td>
          <td><xsl:value-of select="state"/></td>
          <td><xsl:value-of select="phone"/></td>
          </tr>
        </xsl:if>

      </xsl:for-each>
    </table>
  </body>
  </html>
</xsl:template>

</xsl:stylesheet>