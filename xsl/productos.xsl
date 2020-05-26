<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform" version="1.0">
    <xsl:output method="html"/>
    <xsl:template match="/">
        <html>
            <head>
                <title>CocheS20PVT</title>
                <meta charset="UTF-8"/>
                <link href="../css/productos.css" rel="stylesheet" type="text/css" />
            </head>
            <body>
                <header>
                    <div id="portada">
                        <div id="portada_foto">
                            <xsl:for-each select="contenedor/portada">
                                <img>
                                    <xsl:attribute name="src">
                                        <xsl:value-of select="imagen"/>
                                    </xsl:attribute>
                                    <xsl:attribute name="alt">
                                        <xsl:value-of select="altportada"/>
                                    </xsl:attribute>
                                </img>
                            </xsl:for-each>
                        </div>
                    </div>
                </header>
                <nav>
                    <div id="enlaces">
                        <xsl:for-each select="contenedor/enlaces">
                            <a href="../es/portada.html">
                                <div id="en1" class="links">
                                    <xsl:value-of select="inicio"/>
                                </div>
                            </a>
                            <a href="#">
                                <div id="en2" class="links">
                                    <xsl:choose>
                                        <xsl:when test="mas='more'">
                                            <xsl:value-of select="mas"/>     <!-- doble condiciones me he fijado en el xsd de productos  que en el enlace mas
                                                                                  permite la opcion de mas modelos/more -->
                                        </xsl:when>
                                        <xsl:otherwise>
                                            <xsl:value-of select="mas"/>
                                        </xsl:otherwise>
                                    </xsl:choose>
                                </div>
                            </a>
                        </xsl:for-each>
                    </div>
                </nav>
                <main>
                    <div id="central">
                        <xsl:for-each select="contenedor/central/primario">
                            <xsl:if test="titulo='SF90Stradale'">
                                <div id="primario">
                                    <p>
                                        <xsl:value-of select="titulo"/>
                                    </p>
                                </div>
                            </xsl:if>
                        
                            <aside>
                                <div id="imagenes">
                                    <img>
                                        <xsl:attribute name="src">
                                            <xsl:value-of select="imagen"/>
                                        </xsl:attribute>
                                        <xsl:attribute name="alt">
                                            <xsl:value-of select="altprimario"/>
                                        </xsl:attribute>
                                    </img>
                                </div>
                            </aside>
                            <article>
                                <div id="precio">
                                    <xsl:if test="precio &gt; 100000">
                                        <p>
                                            <xsl:value-of select="precio"/>
                                        </p>
                                    </xsl:if>
                                </div>
                                <div id="texto">
                                    <xsl:choose>
                                        <xsl:when test="texto=''">
                                            <p>
                                                <xsl:value-of select="texto"/>
                                            </p>
                                   
                                        </xsl:when>
                                        <xsl:otherwise>
                                            <p>
                                                <xsl:value-of select="texto"/>
                                            </p>
                                        </xsl:otherwise>
                                    </xsl:choose>
                                </div>
                                <div id="subcontexto">
                                    <p>
                                        <xsl:value-of select="subtexto"/>
                                    </p>
                                </div>
                            </article>
                        </xsl:for-each> 
                    </div>
                </main>
                <div id="secundario">
                    <div id="central_secundario">
                        <xsl:for-each select="contenedor/central/secundario">
                            <xsl:if test="titulo = 'F8Spider'">
                                <div id="segundo">
                                    <p>
                                        <xsl:value-of select="titulo"/>
                                    </p>
                                </div>

                                <div id="imagenes_secundario"> <!-- esto es como el aside de arriba -->
                                    <div id="imagenes_secundario_dos"> 
                                        <img>
                                            <xsl:attribute name="src">
                                                <xsl:value-of select="imagen"/>
                                            </xsl:attribute>
                                            <xsl:attribute name="alt">
                                                <xsl:value-of select="altsecundario"/>
                                            </xsl:attribute>
                                        </img>
                                    </div>
                                </div>
                                <div id="texto_secundario"> <!--article como -->
                                    <div id="precio_secundario">
                                        <xsl:if test="precio = 44.000000">
                                        <p>
                                            <xsl:value-of select="precio"/>
                                        </p>
                                        </xsl:if>
                                    </div>
                                    <div id="tex_secundario">
                                        <p>
                                            <xsl:value-of select="texto"/>
                                        </p>
                                    </div>
                                </div>
                            </xsl:if>
                        </xsl:for-each>
                    </div>
                </div>
                <div id="terciario">
                    <div id="central_terciario">
                        <xsl:for-each select="contenedor/central/tercero">
                            <xsl:if test="titulo='Potofino'">
                                <div id="tercero">
                                    <p>
                                        <xsl:value-of select="titulo"/>
                                    </p>
                                </div>

                                <div id="imagenes_tercero">
                                    <div id="imagenes_tercero_tres">
                                        <img>
                                            <xsl:attribute name="src">
                                                <xsl:value-of select="imagen"/>
                                            </xsl:attribute>
                                            <xsl:attribute name="alt">
                                                <xsl:value-of select="alttercero"/>
                                            </xsl:attribute>
                                        </img>
                                    </div>
                                </div>
                                <div id="texto_tercero">
                                    <div id="precio_tercero">
                                        <xsl:if test="precio=24.60000">
                                        <p>
                                            <xsl:value-of select="precio"/>
                                        </p>
                                        </xsl:if>
                                    </div>
                                    <div id="tex_tercero">
                                        <p>
                                            <xsl:value-of select="texto"/>
                                        </p>
                                    </div>
                                </div>
                            </xsl:if>
                        </xsl:for-each>
                    </div>
                </div>

                <footer>
                    <div id="final">
                        <xsl:for-each select="contenedor/final/propaganda">
                            <div id="masinfo">
                                <p>
                                    <xsl:value-of select="titulo"/>
                                </p>
                            </div>
                            <div id="final_imagenes"> <!--esta etiqueta es como refencia el aside de arriba -->
                                <div id="imagenes_final">
                                    <img>
                                        <xsl:attribute name="src">
                                            <xsl:value-of select="imagen"/>
                                        </xsl:attribute>
                                        <xsl:attribute name="alt">
                                            <xsl:value-of select="altpropaganda"/>
                                        </xsl:attribute>
                                    </img>
                                </div>
                            </div>
                            
                        </xsl:for-each>
                    </div>
                    <div id="finalsub">
                        <xsl:for-each select="contenedor/final/propaganda">
                            
                            <div id="masinfosub">
                                <p>
                                    <xsl:value-of select="titulo"/>
                                </p>
                            </div>
                           
                        </xsl:for-each>
                    </div>
                </footer>
            </body>
        </html>
    </xsl:template>
</xsl:stylesheet>
