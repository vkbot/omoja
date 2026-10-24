.class public Lorg/apache/poi/xssf/model/ThemesTable;
.super Lorg/apache/poi/ooxml/POIXMLDocumentPart;
.source "SourceFile"

# interfaces
.implements Lorg/apache/poi/xssf/model/Themes;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/apache/poi/xssf/model/ThemesTable$ThemeElement;
    }
.end annotation


# instance fields
.field private colorMap:Lorg/apache/poi/xssf/usermodel/IndexedColorMap;

.field private theme:Lorg/openxmlformats/schemas/drawingml/x2006/main/ThemeDocument;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Lorg/apache/poi/ooxml/POIXMLDocumentPart;-><init>()V

    .line 2
    sget-object v0, Lorg/openxmlformats/schemas/drawingml/x2006/main/ThemeDocument;->Factory:Lorg/apache/xmlbeans/impl/schema/b;

    invoke-virtual {v0}, Lorg/apache/xmlbeans/impl/schema/b;->a()Lorg/apache/xmlbeans/XmlObject;

    move-result-object v0

    check-cast v0, Lorg/openxmlformats/schemas/drawingml/x2006/main/ThemeDocument;

    iput-object v0, p0, Lorg/apache/poi/xssf/model/ThemesTable;->theme:Lorg/openxmlformats/schemas/drawingml/x2006/main/ThemeDocument;

    .line 3
    invoke-interface {v0}, Lorg/openxmlformats/schemas/drawingml/x2006/main/ThemeDocument;->addNewTheme()Lorg/openxmlformats/schemas/drawingml/x2006/main/CTOfficeStyleSheet;

    move-result-object p0

    invoke-interface {p0}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTOfficeStyleSheet;->addNewThemeElements()Lorg/openxmlformats/schemas/drawingml/x2006/main/CTBaseStyles;

    return-void
.end method

.method public constructor <init>(Ljava/io/InputStream;)V
    .locals 0

    .line 10
    invoke-direct {p0}, Lorg/apache/poi/ooxml/POIXMLDocumentPart;-><init>()V

    .line 11
    invoke-virtual {p0, p1}, Lorg/apache/poi/xssf/model/ThemesTable;->readFrom(Ljava/io/InputStream;)V

    return-void
.end method

.method public constructor <init>(Lorg/apache/poi/openxml4j/opc/PackagePart;)V
    .locals 1

    .line 4
    invoke-direct {p0, p1}, Lorg/apache/poi/ooxml/POIXMLDocumentPart;-><init>(Lorg/apache/poi/openxml4j/opc/PackagePart;)V

    .line 5
    invoke-virtual {p1}, Lorg/apache/poi/openxml4j/opc/PackagePart;->getInputStream()Ljava/io/InputStream;

    move-result-object p1

    .line 6
    :try_start_0
    invoke-virtual {p0, p1}, Lorg/apache/poi/xssf/model/ThemesTable;->readFrom(Ljava/io/InputStream;)V
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

.method public constructor <init>(Lorg/openxmlformats/schemas/drawingml/x2006/main/ThemeDocument;)V
    .locals 0

    .line 12
    invoke-direct {p0}, Lorg/apache/poi/ooxml/POIXMLDocumentPart;-><init>()V

    iput-object p1, p0, Lorg/apache/poi/xssf/model/ThemesTable;->theme:Lorg/openxmlformats/schemas/drawingml/x2006/main/ThemeDocument;

    return-void
.end method


# virtual methods
.method public commit()V
    .locals 2

    invoke-virtual {p0}, Lorg/apache/poi/ooxml/POIXMLDocumentPart;->getPackagePart()Lorg/apache/poi/openxml4j/opc/PackagePart;

    move-result-object v0

    invoke-virtual {v0}, Lorg/apache/poi/openxml4j/opc/PackagePart;->getOutputStream()Ljava/io/OutputStream;

    move-result-object v0

    :try_start_0
    invoke-virtual {p0, v0}, Lorg/apache/poi/xssf/model/ThemesTable;->writeTo(Ljava/io/OutputStream;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/io/OutputStream;->close()V

    :cond_0
    return-void

    :catchall_0
    move-exception p0

    :try_start_1
    throw p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    :catchall_1
    move-exception v1

    if-eqz v0, :cond_1

    :try_start_2
    invoke-virtual {v0}, Ljava/io/OutputStream;->close()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    goto :goto_0

    :catchall_2
    move-exception v0

    invoke-virtual {p0, v0}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :cond_1
    :goto_0
    throw v1
.end method

.method public getThemeColor(I)Lorg/apache/poi/xssf/usermodel/XSSFColor;
    .locals 2

    iget-object v0, p0, Lorg/apache/poi/xssf/model/ThemesTable;->theme:Lorg/openxmlformats/schemas/drawingml/x2006/main/ThemeDocument;

    invoke-interface {v0}, Lorg/openxmlformats/schemas/drawingml/x2006/main/ThemeDocument;->getTheme()Lorg/openxmlformats/schemas/drawingml/x2006/main/CTOfficeStyleSheet;

    move-result-object v0

    invoke-interface {v0}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTOfficeStyleSheet;->getThemeElements()Lorg/openxmlformats/schemas/drawingml/x2006/main/CTBaseStyles;

    move-result-object v0

    invoke-interface {v0}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTBaseStyles;->getClrScheme()Lorg/openxmlformats/schemas/drawingml/x2006/main/CTColorScheme;

    move-result-object v0

    sget-object v1, Lorg/apache/poi/xssf/model/ThemesTable$1;->$SwitchMap$org$apache$poi$xssf$model$ThemesTable$ThemeElement:[I

    invoke-static {p1}, Lorg/apache/poi/xssf/model/ThemesTable$ThemeElement;->byId(I)Lorg/apache/poi/xssf/model/ThemesTable$ThemeElement;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    move-result p1

    aget p1, v1, p1

    const/4 v1, 0x0

    packed-switch p1, :pswitch_data_0

    return-object v1

    :pswitch_0
    invoke-interface {v0}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTColorScheme;->getFolHlink()Lorg/openxmlformats/schemas/drawingml/x2006/main/CTColor;

    move-result-object p1

    goto :goto_0

    :pswitch_1
    invoke-interface {v0}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTColorScheme;->getHlink()Lorg/openxmlformats/schemas/drawingml/x2006/main/CTColor;

    move-result-object p1

    goto :goto_0

    :pswitch_2
    invoke-interface {v0}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTColorScheme;->getAccent6()Lorg/openxmlformats/schemas/drawingml/x2006/main/CTColor;

    move-result-object p1

    goto :goto_0

    :pswitch_3
    invoke-interface {v0}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTColorScheme;->getAccent5()Lorg/openxmlformats/schemas/drawingml/x2006/main/CTColor;

    move-result-object p1

    goto :goto_0

    :pswitch_4
    invoke-interface {v0}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTColorScheme;->getAccent4()Lorg/openxmlformats/schemas/drawingml/x2006/main/CTColor;

    move-result-object p1

    goto :goto_0

    :pswitch_5
    invoke-interface {v0}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTColorScheme;->getAccent3()Lorg/openxmlformats/schemas/drawingml/x2006/main/CTColor;

    move-result-object p1

    goto :goto_0

    :pswitch_6
    invoke-interface {v0}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTColorScheme;->getAccent2()Lorg/openxmlformats/schemas/drawingml/x2006/main/CTColor;

    move-result-object p1

    goto :goto_0

    :pswitch_7
    invoke-interface {v0}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTColorScheme;->getAccent1()Lorg/openxmlformats/schemas/drawingml/x2006/main/CTColor;

    move-result-object p1

    goto :goto_0

    :pswitch_8
    invoke-interface {v0}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTColorScheme;->getDk2()Lorg/openxmlformats/schemas/drawingml/x2006/main/CTColor;

    move-result-object p1

    goto :goto_0

    :pswitch_9
    invoke-interface {v0}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTColorScheme;->getLt2()Lorg/openxmlformats/schemas/drawingml/x2006/main/CTColor;

    move-result-object p1

    goto :goto_0

    :pswitch_a
    invoke-interface {v0}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTColorScheme;->getDk1()Lorg/openxmlformats/schemas/drawingml/x2006/main/CTColor;

    move-result-object p1

    goto :goto_0

    :pswitch_b
    invoke-interface {v0}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTColorScheme;->getLt1()Lorg/openxmlformats/schemas/drawingml/x2006/main/CTColor;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTColor;->isSetSrgbClr()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p1}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTColor;->getSrgbClr()Lorg/openxmlformats/schemas/drawingml/x2006/main/CTSRgbColor;

    move-result-object p1

    invoke-interface {p1}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTSRgbColor;->getVal()[B

    move-result-object p1

    goto :goto_1

    :cond_0
    invoke-interface {p1}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTColor;->isSetSysClr()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p1}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTColor;->getSysClr()Lorg/openxmlformats/schemas/drawingml/x2006/main/CTSystemColor;

    move-result-object p1

    invoke-interface {p1}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTSystemColor;->getLastClr()[B

    move-result-object p1

    :goto_1
    new-instance v0, Lorg/apache/poi/xssf/usermodel/XSSFColor;

    iget-object p0, p0, Lorg/apache/poi/xssf/model/ThemesTable;->colorMap:Lorg/apache/poi/xssf/usermodel/IndexedColorMap;

    invoke-direct {v0, p1, p0}, Lorg/apache/poi/xssf/usermodel/XSSFColor;-><init>([BLorg/apache/poi/xssf/usermodel/IndexedColorMap;)V

    return-object v0

    :cond_1
    return-object v1

    :pswitch_data_0
    .packed-switch 0x1
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

.method public inheritFromThemeAsRequired(Lorg/apache/poi/xssf/usermodel/XSSFColor;)V
    .locals 1

    if-nez p1, :cond_0

    return-void

    :cond_0
    invoke-virtual {p1}, Lorg/apache/poi/xssf/usermodel/XSSFColor;->getCTColor()Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTColor;

    move-result-object v0

    invoke-interface {v0}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTColor;->isSetTheme()Z

    move-result v0

    if-nez v0, :cond_1

    return-void

    :cond_1
    invoke-virtual {p1}, Lorg/apache/poi/xssf/usermodel/XSSFColor;->getTheme()I

    move-result v0

    invoke-virtual {p0, v0}, Lorg/apache/poi/xssf/model/ThemesTable;->getThemeColor(I)Lorg/apache/poi/xssf/usermodel/XSSFColor;

    move-result-object p0

    invoke-virtual {p1}, Lorg/apache/poi/xssf/usermodel/XSSFColor;->getCTColor()Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTColor;

    move-result-object p1

    invoke-virtual {p0}, Lorg/apache/poi/xssf/usermodel/XSSFColor;->getCTColor()Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTColor;

    move-result-object p0

    invoke-interface {p0}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTColor;->getRgb()[B

    move-result-object p0

    invoke-interface {p1, p0}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTColor;->setRgb([B)V

    return-void
.end method

.method public readFrom(Ljava/io/InputStream;)V
    .locals 2

    :try_start_0
    sget-object v0, Lorg/openxmlformats/schemas/drawingml/x2006/main/ThemeDocument;->Factory:Lorg/apache/xmlbeans/impl/schema/b;

    sget-object v1, Lorg/apache/poi/ooxml/POIXMLTypeLoader;->DEFAULT_XML_OPTIONS:Li5/z1;

    invoke-virtual {v0, p1, v1}, Lorg/apache/xmlbeans/impl/schema/b;->c(Ljava/io/InputStream;Li5/z1;)Lorg/apache/xmlbeans/XmlObject;

    move-result-object p1

    check-cast p1, Lorg/openxmlformats/schemas/drawingml/x2006/main/ThemeDocument;

    iput-object p1, p0, Lorg/apache/poi/xssf/model/ThemesTable;->theme:Lorg/openxmlformats/schemas/drawingml/x2006/main/ThemeDocument;
    :try_end_0
    .catch Li5/z0; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p0

    new-instance p1, Ljava/io/IOException;

    invoke-virtual {p0}, Ljava/lang/Throwable;->getLocalizedMessage()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0, p0}, Ljava/io/IOException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw p1
.end method

.method public setColorMap(Lorg/apache/poi/xssf/usermodel/IndexedColorMap;)V
    .locals 0

    iput-object p1, p0, Lorg/apache/poi/xssf/model/ThemesTable;->colorMap:Lorg/apache/poi/xssf/usermodel/IndexedColorMap;

    return-void
.end method

.method public writeTo(Ljava/io/OutputStream;)V
    .locals 1

    iget-object p0, p0, Lorg/apache/poi/xssf/model/ThemesTable;->theme:Lorg/openxmlformats/schemas/drawingml/x2006/main/ThemeDocument;

    sget-object v0, Lorg/apache/poi/ooxml/POIXMLTypeLoader;->DEFAULT_XML_OPTIONS:Li5/z1;

    invoke-interface {p0, p1, v0}, Lorg/openxmlformats/schemas/drawingml/x2006/main/ThemeDocument;->save(Ljava/io/OutputStream;Li5/z1;)V

    return-void
.end method
