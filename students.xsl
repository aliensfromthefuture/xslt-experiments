<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
  
<xsl:template match="/class">

  <html>
    <head>
      <title>Student List</title>
      <link rel="stylesheet" href="students.css"/>
    </head>
    <body>
      <h2>Student List</h2>

      <table border="1" cellpadding="10">
        <tr>
          <th>First Name</th>
          <th>Nickname</th>
          <th>Last Name</th>
        </tr>

        <xsl:for-each select="student">
          <tr>
            <td>
              <xsl:value-of select="firstname"/>
            </td>
            <td>
              <em>
                <xsl:value-of select="nickname" />
              </em>
            </td>
            <td>
              <xsl:value-of select="lastname" />
            </td>
          </tr>
        </xsl:for-each>

      </table>
    </body>
  </html>

</xsl:template>

</xsl:stylesheet>
