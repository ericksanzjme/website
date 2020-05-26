<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform" version="1.0">
    <xsl:output method="html"/>
    <xsl:template match="/">
        <html>
            <head>
                <title>CocheS20PVT</title>
                <meta charset="UTF-8"/>
                <link href="../css/portada.css" rel="stylesheet" type="text/css" />
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
                            <a href="#">
                                <div id="en1" class="links">
                                    <xsl:value-of select="inicio"/>
                                </div>
                            </a>
                            <a href="../es/productos.html">
                                <div id="en2" class="links">
                                    <xsl:choose>
                                        <xsl:when test="Coches='Autos'">
                                            <xsl:value-of select="Coches"/>      <!-- si miramos el xsd en el elemento Coches tenemos restricioness
                                                                                       y permitimos valores como Autos/Vehiculos/Coches/Productos/
                                                                                       en este caso he puesto dos condiciones jugando con ellas -->
                                        </xsl:when>
                                        <xsl:otherwise>
                                            <xsl:value-of select="Coches"/>
                                        </xsl:otherwise>
                                    </xsl:choose>
                                </div>
                            </a>
                            <a href="#">
                                <div id="en3" class="links">
                                    <xsl:value-of select="Soporte"/>
                                </div>
                            </a>
                            <a href="#">
                                <div id="en4" class="links">
                                    
                                    <xsl:value-of select="Mas"/>
                                </div>
                            </a>
                        </xsl:for-each>
                    </div>
                </nav>
                <main>
                    <div id="central">
                        <xsl:for-each select="contenedor/central">
                            <xsl:if test="precio &gt; 10.000000 ">
                                <div id="titulo">
                                    <p>
                                        <xsl:value-of select="titulo"/>
                                    </p>
                                </div>

                                <aside>
                                    <div id="imagenes">
                                        <img>
                                            <xsl:attribute name="src">
                                                <xsl:value-of select="imagen"/>
                                            </xsl:attribute>
                                            <xsl:attribute name="alt">
                                                <xsl:value-of select="altcentral"/>
                                            </xsl:attribute>
                                        </img>
                                    </div>
                                </aside>
                                <article>
                                    <div id="texto">
                                        <p>
                                            <xsl:value-of select="texto"/>
                                        </p>
                                    </div>
                                    <div id="precio">
                                        <p>
                                            <xsl:value-of select="precio"/>
                                        </p>
                                    </div>
                                </article>
                            </xsl:if>
                        </xsl:for-each>
                    </div>
                </main>
                <footer>
                    <div id="final">
                        <xsl:for-each select="contenedor/final/masinfo">
                            <xsl:if test="titulo='Descubre el ferrari Portofino'">  <!--condicional si introduces otro texto no aparecera-->
                                <div id="masinfo">
                                    <p>
                                        <xsl:value-of select="titulo"/>
                                    </p>
                                </div>
                            </xsl:if>
                            <div id="final_imagenes"> <!--esta etiqueta es como refencia el aside de arriba -->
                                <div id="imagenes_final">
              
                                    <img>
                                        <xsl:attribute name="src">
                                            <xsl:value-of select="imagen"/>
                                        </xsl:attribute>
                                        <xsl:attribute name="alt">
                                            <xsl:value-of select="altfinal"/>
                                        </xsl:attribute>
                                    </img>
                                </div>
                            </div>
                            <div id="texto_final"> <!--esto es como el article de arriba -->
                                <div id="t">
                                    <p>
                                        <xsl:value-of select="texto"/> 
                                    </p>
                                </div>
                                <div id="contexto">
                                    <p>
                                        <xsl:value-of select="contexto"/>
                                    </p>
                                </div>
                                <div id="enlace">
                                    <a href="">
                                        <xsl:value-of select="enlace"/>
                                    </a>
                                </div>
                                <div id="telefono">
                                    <xsl:for-each select="telefono">
                                        <xsl:if test="contexto='Donde contactarnos'">
                                            <ul>
                                            
                                                <li>
                                                    <xsl:value-of select="contexto"/>
                                                </li>
                                                <li>
                                                    <xsl:value-of select="numero"/>
                                                </li>
                                                <li>
                                                    <xsl:value-of select="gmail"/>
                                                </li>
                                            </ul>
                                        </xsl:if>
                                    </xsl:for-each>
                                </div>
                            </div>
                        </xsl:for-each>
                    </div>
                </footer>
            </body>
        </html>
    </xsl:template>
</xsl:stylesheet>
