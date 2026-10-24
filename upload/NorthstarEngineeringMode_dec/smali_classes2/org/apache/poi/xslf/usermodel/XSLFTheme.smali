.class public Lorg/apache/poi/xslf/usermodel/XSLFTheme;
.super Lorg/apache/poi/ooxml/POIXMLDocumentPart;
.source "SourceFile"


# instance fields
.field private _theme:Lorg/openxmlformats/schemas/drawingml/x2006/main/CTOfficeStyleSheet;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Lorg/apache/poi/ooxml/POIXMLDocumentPart;-><init>()V

    .line 2
    sget-object v0, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTOfficeStyleSheet;->Factory:Lorg/apache/xmlbeans/impl/schema/b;

    invoke-virtual {v0}, Lorg/apache/xmlbeans/impl/schema/b;->a()Lorg/apache/xmlbeans/XmlObject;

    move-result-object v0

    check-cast v0, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTOfficeStyleSheet;

    iput-object v0, p0, Lorg/apache/poi/xslf/usermodel/XSLFTheme;->_theme:Lorg/openxmlformats/schemas/drawingml/x2006/main/CTOfficeStyleSheet;

    return-void
.end method

.method public constructor <init>(Lorg/apache/poi/openxml4j/opc/PackagePart;)V
    .locals 2

    .line 3
    invoke-direct {p0, p1}, Lorg/apache/poi/ooxml/POIXMLDocumentPart;-><init>(Lorg/apache/poi/openxml4j/opc/PackagePart;)V

    .line 4
    invoke-virtual {p0}, Lorg/apache/poi/ooxml/POIXMLDocumentPart;->getPackagePart()Lorg/apache/poi/openxml4j/opc/PackagePart;

    move-result-object p1

    invoke-virtual {p1}, Lorg/apache/poi/openxml4j/opc/PackagePart;->getInputStream()Ljava/io/InputStream;

    move-result-object p1

    .line 5
    :try_start_0
    sget-object v0, Lorg/openxmlformats/schemas/drawingml/x2006/main/ThemeDocument;->Factory:Lorg/apache/xmlbeans/impl/schema/b;

    sget-object v1, Lorg/apache/poi/ooxml/POIXMLTypeLoader;->DEFAULT_XML_OPTIONS:Li5/z1;

    invoke-virtual {v0, p1, v1}, Lorg/apache/xmlbeans/impl/schema/b;->c(Ljava/io/InputStream;Li5/z1;)Lorg/apache/xmlbeans/XmlObject;

    move-result-object v0

    check-cast v0, Lorg/openxmlformats/schemas/drawingml/x2006/main/ThemeDocument;

    .line 6
    invoke-interface {v0}, Lorg/openxmlformats/schemas/drawingml/x2006/main/ThemeDocument;->getTheme()Lorg/openxmlformats/schemas/drawingml/x2006/main/CTOfficeStyleSheet;

    move-result-object v0

    iput-object v0, p0, Lorg/apache/poi/xslf/usermodel/XSLFTheme;->_theme:Lorg/openxmlformats/schemas/drawingml/x2006/main/CTOfficeStyleSheet;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz p1, :cond_0

    .line 7
    invoke-virtual {p1}, Ljava/io/InputStream;->close()V

    :cond_0
    return-void

    :catchall_0
    move-exception p0

    .line 8
    :try_start_1
    throw p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    :catchall_1
    move-exception v0

    if-eqz p1, :cond_1

    .line 9
    :try_start_2
    invoke-virtual {p1}, Ljava/io/InputStream;->close()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    goto :goto_0

    :catchall_2
    move-exception p1

    invoke-virtual {p0, p1}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :cond_1
    :goto_0
    throw v0
.end method

.method private static getMapColor(Ljava/lang/String;Lorg/openxmlformats/schemas/drawingml/x2006/main/CTColorScheme;)Lorg/openxmlformats/schemas/drawingml/x2006/main/CTColor;
    .locals 3

    const/4 v0, 0x0

    if-eqz p0, :cond_d

    if-nez p1, :cond_0

    goto/16 :goto_1

    :cond_0
    invoke-virtual {p0}, Ljava/lang/String;->hashCode()I

    move-result v1

    const/4 v2, -0x1

    sparse-switch v1, :sswitch_data_0

    goto/16 :goto_0

    :sswitch_0
    const-string v1, "folHlink"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_1

    goto/16 :goto_0

    :cond_1
    const/16 v2, 0xb

    goto/16 :goto_0

    :sswitch_1
    const-string v1, "hlink"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_2

    goto/16 :goto_0

    :cond_2
    const/16 v2, 0xa

    goto/16 :goto_0

    :sswitch_2
    const-string v1, "lt2"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_3

    goto/16 :goto_0

    :cond_3
    const/16 v2, 0x9

    goto/16 :goto_0

    :sswitch_3
    const-string v1, "lt1"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_4

    goto/16 :goto_0

    :cond_4
    const/16 v2, 0x8

    goto/16 :goto_0

    :sswitch_4
    const-string v1, "dk2"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_5

    goto :goto_0

    :cond_5
    const/4 v2, 0x7

    goto :goto_0

    :sswitch_5
    const-string v1, "dk1"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_6

    goto :goto_0

    :cond_6
    const/4 v2, 0x6

    goto :goto_0

    :sswitch_6
    const-string v1, "accent6"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_7

    goto :goto_0

    :cond_7
    const/4 v2, 0x5

    goto :goto_0

    :sswitch_7
    const-string v1, "accent5"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_8

    goto :goto_0

    :cond_8
    const/4 v2, 0x4

    goto :goto_0

    :sswitch_8
    const-string v1, "accent4"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_9

    goto :goto_0

    :cond_9
    const/4 v2, 0x3

    goto :goto_0

    :sswitch_9
    const-string v1, "accent3"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_a

    goto :goto_0

    :cond_a
    const/4 v2, 0x2

    goto :goto_0

    :sswitch_a
    const-string v1, "accent2"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_b

    goto :goto_0

    :cond_b
    const/4 v2, 0x1

    goto :goto_0

    :sswitch_b
    const-string v1, "accent1"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_c

    goto :goto_0

    :cond_c
    const/4 v2, 0x0

    :goto_0
    packed-switch v2, :pswitch_data_0

    return-object v0

    :pswitch_0
    invoke-interface {p1}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTColorScheme;->getFolHlink()Lorg/openxmlformats/schemas/drawingml/x2006/main/CTColor;

    move-result-object p0

    return-object p0

    :pswitch_1
    invoke-interface {p1}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTColorScheme;->getHlink()Lorg/openxmlformats/schemas/drawingml/x2006/main/CTColor;

    move-result-object p0

    return-object p0

    :pswitch_2
    invoke-interface {p1}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTColorScheme;->getLt2()Lorg/openxmlformats/schemas/drawingml/x2006/main/CTColor;

    move-result-object p0

    return-object p0

    :pswitch_3
    invoke-interface {p1}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTColorScheme;->getLt1()Lorg/openxmlformats/schemas/drawingml/x2006/main/CTColor;

    move-result-object p0

    return-object p0

    :pswitch_4
    invoke-interface {p1}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTColorScheme;->getDk2()Lorg/openxmlformats/schemas/drawingml/x2006/main/CTColor;

    move-result-object p0

    return-object p0

    :pswitch_5
    invoke-interface {p1}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTColorScheme;->getDk1()Lorg/openxmlformats/schemas/drawingml/x2006/main/CTColor;

    move-result-object p0

    return-object p0

    :pswitch_6
    invoke-interface {p1}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTColorScheme;->getAccent6()Lorg/openxmlformats/schemas/drawingml/x2006/main/CTColor;

    move-result-object p0

    return-object p0

    :pswitch_7
    invoke-interface {p1}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTColorScheme;->getAccent5()Lorg/openxmlformats/schemas/drawingml/x2006/main/CTColor;

    move-result-object p0

    return-object p0

    :pswitch_8
    invoke-interface {p1}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTColorScheme;->getAccent4()Lorg/openxmlformats/schemas/drawingml/x2006/main/CTColor;

    move-result-object p0

    return-object p0

    :pswitch_9
    invoke-interface {p1}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTColorScheme;->getAccent3()Lorg/openxmlformats/schemas/drawingml/x2006/main/CTColor;

    move-result-object p0

    return-object p0

    :pswitch_a
    invoke-interface {p1}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTColorScheme;->getAccent2()Lorg/openxmlformats/schemas/drawingml/x2006/main/CTColor;

    move-result-object p0

    return-object p0

    :pswitch_b
    invoke-interface {p1}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTColorScheme;->getAccent1()Lorg/openxmlformats/schemas/drawingml/x2006/main/CTColor;

    move-result-object p0

    return-object p0

    :cond_d
    :goto_1
    return-object v0

    nop

    :sswitch_data_0
    .sparse-switch
        -0x46311b59 -> :sswitch_b
        -0x46311b58 -> :sswitch_a
        -0x46311b57 -> :sswitch_9
        -0x46311b56 -> :sswitch_8
        -0x46311b55 -> :sswitch_7
        -0x46311b54 -> :sswitch_6
        0x1848a -> :sswitch_5
        0x1848b -> :sswitch_4
        0x1a3a9 -> :sswitch_3
        0x1a3aa -> :sswitch_2
        0x5ec3c62 -> :sswitch_1
        0x1000415f -> :sswitch_0
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method


# virtual methods
.method public final commit()V
    .locals 4

    new-instance v0, Li5/z1;

    sget-object v1, Lorg/apache/poi/ooxml/POIXMLTypeLoader;->DEFAULT_XML_OPTIONS:Li5/z1;

    invoke-direct {v0, v1}, Li5/z1;-><init>(Li5/z1;)V

    new-instance v1, Ljavax/xml/namespace/QName;

    const-string v2, "http://schemas.openxmlformats.org/drawingml/2006/main"

    const-string v3, "theme"

    invoke-direct {v1, v2, v3}, Ljavax/xml/namespace/QName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Li5/z1;->b(Ljavax/xml/namespace/QName;)V

    invoke-virtual {p0}, Lorg/apache/poi/ooxml/POIXMLDocumentPart;->getPackagePart()Lorg/apache/poi/openxml4j/opc/PackagePart;

    move-result-object v1

    invoke-virtual {v1}, Lorg/apache/poi/openxml4j/opc/PackagePart;->getOutputStream()Ljava/io/OutputStream;

    move-result-object v1

    :try_start_0
    invoke-virtual {p0}, Lorg/apache/poi/xslf/usermodel/XSLFTheme;->getXmlObject()Lorg/openxmlformats/schemas/drawingml/x2006/main/CTOfficeStyleSheet;

    move-result-object p0

    invoke-interface {p0, v1, v0}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTOfficeStyleSheet;->save(Ljava/io/OutputStream;Li5/z1;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Ljava/io/OutputStream;->close()V

    :cond_0
    return-void

    :catchall_0
    move-exception p0

    :try_start_1
    throw p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    :catchall_1
    move-exception v0

    if-eqz v1, :cond_1

    :try_start_2
    invoke-virtual {v1}, Ljava/io/OutputStream;->close()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    goto :goto_0

    :catchall_2
    move-exception v1

    invoke-virtual {p0, v1}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :cond_1
    :goto_0
    throw v0
.end method

.method public getCTColor(Ljava/lang/String;)Lorg/openxmlformats/schemas/drawingml/x2006/main/CTColor;
    .locals 0
    .annotation runtime Lorg/apache/poi/util/Internal;
    .end annotation

    iget-object p0, p0, Lorg/apache/poi/xslf/usermodel/XSLFTheme;->_theme:Lorg/openxmlformats/schemas/drawingml/x2006/main/CTOfficeStyleSheet;

    invoke-interface {p0}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTOfficeStyleSheet;->getThemeElements()Lorg/openxmlformats/schemas/drawingml/x2006/main/CTBaseStyles;

    move-result-object p0

    if-nez p0, :cond_0

    const/4 p0, 0x0

    goto :goto_0

    :cond_0
    invoke-interface {p0}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTBaseStyles;->getClrScheme()Lorg/openxmlformats/schemas/drawingml/x2006/main/CTColorScheme;

    move-result-object p0

    :goto_0
    invoke-static {p1, p0}, Lorg/apache/poi/xslf/usermodel/XSLFTheme;->getMapColor(Ljava/lang/String;Lorg/openxmlformats/schemas/drawingml/x2006/main/CTColorScheme;)Lorg/openxmlformats/schemas/drawingml/x2006/main/CTColor;

    move-result-object p0

    return-object p0
.end method

.method public getMajorFont()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lorg/apache/poi/xslf/usermodel/XSLFTheme;->_theme:Lorg/openxmlformats/schemas/drawingml/x2006/main/CTOfficeStyleSheet;

    invoke-interface {p0}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTOfficeStyleSheet;->getThemeElements()Lorg/openxmlformats/schemas/drawingml/x2006/main/CTBaseStyles;

    move-result-object p0

    invoke-interface {p0}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTBaseStyles;->getFontScheme()Lorg/openxmlformats/schemas/drawingml/x2006/main/CTFontScheme;

    move-result-object p0

    invoke-interface {p0}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTFontScheme;->getMajorFont()Lorg/openxmlformats/schemas/drawingml/x2006/main/CTFontCollection;

    move-result-object p0

    invoke-interface {p0}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTFontCollection;->getLatin()Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextFont;

    move-result-object p0

    invoke-interface {p0}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextFont;->getTypeface()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public getMinorFont()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lorg/apache/poi/xslf/usermodel/XSLFTheme;->_theme:Lorg/openxmlformats/schemas/drawingml/x2006/main/CTOfficeStyleSheet;

    invoke-interface {p0}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTOfficeStyleSheet;->getThemeElements()Lorg/openxmlformats/schemas/drawingml/x2006/main/CTBaseStyles;

    move-result-object p0

    invoke-interface {p0}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTBaseStyles;->getFontScheme()Lorg/openxmlformats/schemas/drawingml/x2006/main/CTFontScheme;

    move-result-object p0

    invoke-interface {p0}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTFontScheme;->getMinorFont()Lorg/openxmlformats/schemas/drawingml/x2006/main/CTFontCollection;

    move-result-object p0

    invoke-interface {p0}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTFontCollection;->getLatin()Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextFont;

    move-result-object p0

    invoke-interface {p0}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextFont;->getTypeface()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public getName()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lorg/apache/poi/xslf/usermodel/XSLFTheme;->_theme:Lorg/openxmlformats/schemas/drawingml/x2006/main/CTOfficeStyleSheet;

    invoke-interface {p0}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTOfficeStyleSheet;->getName()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public getXmlObject()Lorg/openxmlformats/schemas/drawingml/x2006/main/CTOfficeStyleSheet;
    .locals 0
    .annotation runtime Lorg/apache/poi/util/Internal;
    .end annotation

    iget-object p0, p0, Lorg/apache/poi/xslf/usermodel/XSLFTheme;->_theme:Lorg/openxmlformats/schemas/drawingml/x2006/main/CTOfficeStyleSheet;

    return-object p0
.end method

.method public importTheme(Lorg/apache/poi/xslf/usermodel/XSLFTheme;)V
    .locals 0

    invoke-virtual {p1}, Lorg/apache/poi/xslf/usermodel/XSLFTheme;->getXmlObject()Lorg/openxmlformats/schemas/drawingml/x2006/main/CTOfficeStyleSheet;

    move-result-object p1

    iput-object p1, p0, Lorg/apache/poi/xslf/usermodel/XSLFTheme;->_theme:Lorg/openxmlformats/schemas/drawingml/x2006/main/CTOfficeStyleSheet;

    return-void
.end method

.method public setName(Ljava/lang/String;)V
    .locals 0

    iget-object p0, p0, Lorg/apache/poi/xslf/usermodel/XSLFTheme;->_theme:Lorg/openxmlformats/schemas/drawingml/x2006/main/CTOfficeStyleSheet;

    invoke-interface {p0, p1}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTOfficeStyleSheet;->setName(Ljava/lang/String;)V

    return-void
.end method
