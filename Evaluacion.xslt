<?xml version="1.0" encoding="UTF-8"?>

<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">

    <xsl:output method="html" version="5.0" encoding="UTF-8" ident="yes" />

    <xsl:template match="/">

        <html>
            <head>
                <!-- CSS Only -->
                <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.2.2/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-Zenh87qX5JnK2Jl0vWa8Ck2rdkQ2Bzep5IDxbcnCeuOxjzrPF/et3URy9Bv1WTRi" crossorigin="anonymous" />

                <title>Evaluacion CES3</title>
            </head>

            <top>
                <xsl:for-each select="bib">
                    <div class="p-3 bg-info bg-opacity-10 border border-info border-start-0 rounded-end">
                        <h1 class="text-center">
                            <xsl:value-of select="@nombre" />
                            <xsl:value-of select="@centro" class="h1" />
                        </h1>
                        <img src="https://i0.wp.com/cms.babbel.news/wp-content/uploads/2022/02/Most_Beautiful_Libraries-1.png?resize=830%2C467" class="rounded mx-auto d-block" width="500" height="350" />
                    </div>

                </xsl:for-each>
            </top>

            <body>
                <div class="p-3 bg-info bg-opacity-10 border border-info border-start-0 rounded-end">
                    <h2 class="text-center">Libros</h2>
                    <div class="border border-dark">
                        <xsl:for-each select="bib/libro">
                            <div class="d-grid gap-3">
                                <div class="p-2 bg-light border">
                                    <p>
                                        <xsl:value-of select="titulo" />
                                    </p>
                                    <p>
                                        Autor:
                                        <xsl:value-of select="autor/apellido" />
                                        <xsl:value-of select="autor/nombre" />
                                    </p>
                                    <p>
                                        Editorial:
                                        <xsl:value-of select="editorial" />
                                    </p>
                                    <p>
                                        Precio:  $
                                        <xsl:value-of select="precio" />
                                        USD
                                    </p>
                                    <div class="container">
                                        <div class="border border-dark">
                                            <h5 class="text-center">Informacion personal</h5>
                                            <p>
                                                Ciudad:
                                                <xsl:value-of select="autor/infoAutor/ciudad" />
                                            </p>
                                            <p>
                                                Pais:
                                                <xsl:value-of select="autor/infoAutor/pais" />
                                            </p>
                                            <p>
                                                Telefono:
                                                <xsl:value-of select="autor/infoAutor/telefono" />
                                            </p>
                                            <p>
                                                Correo:
                                                <xsl:value-of select="autor/infoAutor/correo" />
                                            </p>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </xsl:for-each>
                    </div>
                </div>
            </body>
        </html>

    </xsl:template>

</xsl:stylesheet>