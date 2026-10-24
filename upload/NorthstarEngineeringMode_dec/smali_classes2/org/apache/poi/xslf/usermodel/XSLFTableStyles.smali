.class public Lorg/apache/poi/xslf/usermodel/XSLFTableStyles;
.super Lorg/apache/poi/ooxml/POIXMLDocumentPart;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Iterable;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lorg/apache/poi/ooxml/POIXMLDocumentPart;",
        "Ljava/lang/Iterable<",
        "Lorg/apache/poi/xslf/usermodel/XSLFTableStyle;",
        ">;"
    }
.end annotation


# instance fields
.field private _styles:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lorg/apache/poi/xslf/usermodel/XSLFTableStyle;",
            ">;"
        }
    .end annotation
.end field

.field private _tblStyleLst:Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTableStyleList;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Lorg/apache/poi/ooxml/POIXMLDocumentPart;-><init>()V

    return-void
.end method

.method public constructor <init>(Lorg/apache/poi/openxml4j/opc/PackagePart;)V
    .locals 3

    .line 2
    invoke-direct {p0, p1}, Lorg/apache/poi/ooxml/POIXMLDocumentPart;-><init>(Lorg/apache/poi/openxml4j/opc/PackagePart;)V

    .line 3
    invoke-virtual {p0}, Lorg/apache/poi/ooxml/POIXMLDocumentPart;->getPackagePart()Lorg/apache/poi/openxml4j/opc/PackagePart;

    move-result-object p1

    invoke-virtual {p1}, Lorg/apache/poi/openxml4j/opc/PackagePart;->getInputStream()Ljava/io/InputStream;

    move-result-object p1

    .line 4
    :try_start_0
    sget-object v0, Lorg/openxmlformats/schemas/drawingml/x2006/main/TblStyleLstDocument;->Factory:Lorg/apache/xmlbeans/impl/schema/b;

    invoke-virtual {v0, p1}, Lorg/apache/xmlbeans/impl/schema/b;->b(Ljava/io/InputStream;)Lorg/apache/xmlbeans/XmlObject;

    move-result-object v0

    check-cast v0, Lorg/openxmlformats/schemas/drawingml/x2006/main/TblStyleLstDocument;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz p1, :cond_0

    .line 5
    invoke-virtual {p1}, Ljava/io/InputStream;->close()V

    .line 6
    :cond_0
    invoke-interface {v0}, Lorg/openxmlformats/schemas/drawingml/x2006/main/TblStyleLstDocument;->getTblStyleLst()Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTableStyleList;

    move-result-object p1

    iput-object p1, p0, Lorg/apache/poi/xslf/usermodel/XSLFTableStyles;->_tblStyleLst:Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTableStyleList;

    .line 7
    invoke-interface {p1}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTableStyleList;->getTblStyleList()Ljava/util/List;

    move-result-object p1

    .line 8
    new-instance v0, Ljava/util/ArrayList;

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v0, p0, Lorg/apache/poi/xslf/usermodel/XSLFTableStyles;->_styles:Ljava/util/List;

    .line 9
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTableStyle;

    iget-object v1, p0, Lorg/apache/poi/xslf/usermodel/XSLFTableStyles;->_styles:Ljava/util/List;

    .line 10
    new-instance v2, Lorg/apache/poi/xslf/usermodel/XSLFTableStyle;

    invoke-direct {v2, v0}, Lorg/apache/poi/xslf/usermodel/XSLFTableStyle;-><init>(Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTableStyle;)V

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_1
    return-void

    :catchall_0
    move-exception p0

    .line 11
    :try_start_1
    throw p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    :catchall_1
    move-exception v0

    if-eqz p1, :cond_2

    .line 12
    :try_start_2
    invoke-virtual {p1}, Ljava/io/InputStream;->close()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    goto :goto_1

    :catchall_2
    move-exception p1

    invoke-virtual {p0, p1}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :cond_2
    :goto_1
    throw v0
.end method


# virtual methods
.method public getStyles()Ljava/util/List;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lorg/apache/poi/xslf/usermodel/XSLFTableStyle;",
            ">;"
        }
    .end annotation

    iget-object p0, p0, Lorg/apache/poi/xslf/usermodel/XSLFTableStyles;->_styles:Ljava/util/List;

    invoke-static {p0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method public getXmlObject()Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTableStyleList;
    .locals 0

    iget-object p0, p0, Lorg/apache/poi/xslf/usermodel/XSLFTableStyles;->_tblStyleLst:Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTableStyleList;

    return-object p0
.end method

.method public iterator()Ljava/util/Iterator;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Iterator<",
            "Lorg/apache/poi/xslf/usermodel/XSLFTableStyle;",
            ">;"
        }
    .end annotation

    iget-object p0, p0, Lorg/apache/poi/xslf/usermodel/XSLFTableStyles;->_styles:Ljava/util/List;

    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    return-object p0
.end method
