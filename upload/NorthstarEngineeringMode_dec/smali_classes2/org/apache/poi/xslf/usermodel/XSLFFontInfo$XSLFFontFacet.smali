.class final Lorg/apache/poi/xslf/usermodel/XSLFFontInfo$XSLFFontFacet;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/apache/poi/common/usermodel/fonts/FontFacet;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/apache/poi/xslf/usermodel/XSLFFontInfo;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = "XSLFFontFacet"
.end annotation


# static fields
.field static final synthetic $assertionsDisabled:Z


# instance fields
.field private final fontEntry:Lorg/openxmlformats/schemas/presentationml/x2006/main/CTEmbeddedFontDataId;

.field private final header:Lorg/apache/poi/common/usermodel/fonts/FontHeader;

.field final synthetic this$0:Lorg/apache/poi/xslf/usermodel/XSLFFontInfo;


# direct methods
.method private constructor <init>(Lorg/apache/poi/xslf/usermodel/XSLFFontInfo;Lorg/openxmlformats/schemas/presentationml/x2006/main/CTEmbeddedFontDataId;)V
    .locals 0

    iput-object p1, p0, Lorg/apache/poi/xslf/usermodel/XSLFFontInfo$XSLFFontFacet;->this$0:Lorg/apache/poi/xslf/usermodel/XSLFFontInfo;

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 3
    new-instance p1, Lorg/apache/poi/common/usermodel/fonts/FontHeader;

    invoke-direct {p1}, Lorg/apache/poi/common/usermodel/fonts/FontHeader;-><init>()V

    iput-object p1, p0, Lorg/apache/poi/xslf/usermodel/XSLFFontInfo$XSLFFontFacet;->header:Lorg/apache/poi/common/usermodel/fonts/FontHeader;

    iput-object p2, p0, Lorg/apache/poi/xslf/usermodel/XSLFFontInfo$XSLFFontFacet;->fontEntry:Lorg/openxmlformats/schemas/presentationml/x2006/main/CTEmbeddedFontDataId;

    return-void
.end method

.method public synthetic constructor <init>(Lorg/apache/poi/xslf/usermodel/XSLFFontInfo;Lorg/openxmlformats/schemas/presentationml/x2006/main/CTEmbeddedFontDataId;Lorg/apache/poi/xslf/usermodel/XSLFFontInfo$1;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2}, Lorg/apache/poi/xslf/usermodel/XSLFFontInfo$XSLFFontFacet;-><init>(Lorg/apache/poi/xslf/usermodel/XSLFFontInfo;Lorg/openxmlformats/schemas/presentationml/x2006/main/CTEmbeddedFontDataId;)V

    return-void
.end method

.method private init()V
    .locals 4

    iget-object v0, p0, Lorg/apache/poi/xslf/usermodel/XSLFFontInfo$XSLFFontFacet;->header:Lorg/apache/poi/common/usermodel/fonts/FontHeader;

    invoke-virtual {v0}, Lorg/apache/poi/common/usermodel/fonts/FontHeader;->getFamilyName()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_1

    :try_start_0
    invoke-virtual {p0}, Lorg/apache/poi/xslf/usermodel/XSLFFontInfo$XSLFFontFacet;->getFontData()Lorg/apache/poi/xslf/usermodel/XSLFFontData;

    move-result-object v0

    invoke-virtual {v0}, Lorg/apache/poi/xslf/usermodel/XSLFFontData;->getInputStream()Ljava/io/InputStream;

    move-result-object v0
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    const/16 v1, 0x3e8

    :try_start_1
    invoke-static {v0, v1}, Lorg/apache/poi/util/IOUtils;->toByteArray(Ljava/io/InputStream;I)[B

    move-result-object v1

    iget-object p0, p0, Lorg/apache/poi/xslf/usermodel/XSLFFontInfo$XSLFFontFacet;->header:Lorg/apache/poi/common/usermodel/fonts/FontHeader;

    array-length v2, v1

    const/4 v3, 0x0

    invoke-virtual {p0, v1, v3, v2}, Lorg/apache/poi/common/usermodel/fonts/FontHeader;->init([BII)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-eqz v0, :cond_1

    :try_start_2
    invoke-virtual {v0}, Ljava/io/InputStream;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_2

    :catch_0
    move-exception p0

    goto :goto_1

    :catchall_0
    move-exception p0

    :try_start_3
    throw p0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    :catchall_1
    move-exception v1

    if-eqz v0, :cond_0

    :try_start_4
    invoke-virtual {v0}, Ljava/io/InputStream;->close()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    goto :goto_0

    :catchall_2
    move-exception v0

    :try_start_5
    invoke-virtual {p0, v0}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :cond_0
    :goto_0
    throw v1
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_0

    :goto_1
    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-direct {v0, p0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/Throwable;)V

    throw v0

    :cond_1
    :goto_2
    return-void
.end method


# virtual methods
.method public bridge synthetic getFontData()Ljava/lang/Object;
    .locals 0

    .line 1
    invoke-virtual {p0}, Lorg/apache/poi/xslf/usermodel/XSLFFontInfo$XSLFFontFacet;->getFontData()Lorg/apache/poi/xslf/usermodel/XSLFFontData;

    move-result-object p0

    return-object p0
.end method

.method public getFontData()Lorg/apache/poi/xslf/usermodel/XSLFFontData;
    .locals 1

    iget-object v0, p0, Lorg/apache/poi/xslf/usermodel/XSLFFontInfo$XSLFFontFacet;->this$0:Lorg/apache/poi/xslf/usermodel/XSLFFontInfo;

    .line 2
    iget-object v0, v0, Lorg/apache/poi/xslf/usermodel/XSLFFontInfo;->ppt:Lorg/apache/poi/xslf/usermodel/XMLSlideShow;

    iget-object p0, p0, Lorg/apache/poi/xslf/usermodel/XSLFFontInfo$XSLFFontFacet;->fontEntry:Lorg/openxmlformats/schemas/presentationml/x2006/main/CTEmbeddedFontDataId;

    invoke-interface {p0}, Lorg/openxmlformats/schemas/presentationml/x2006/main/CTEmbeddedFontDataId;->getId()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Lorg/apache/poi/ooxml/POIXMLDocumentPart;->getRelationPartById(Ljava/lang/String;)Lorg/apache/poi/ooxml/POIXMLDocumentPart$RelationPart;

    move-result-object p0

    invoke-virtual {p0}, Lorg/apache/poi/ooxml/POIXMLDocumentPart$RelationPart;->getDocumentPart()Lorg/apache/poi/ooxml/POIXMLDocumentPart;

    move-result-object p0

    check-cast p0, Lorg/apache/poi/xslf/usermodel/XSLFFontData;

    return-object p0
.end method

.method public getWeight()I
    .locals 0

    invoke-direct {p0}, Lorg/apache/poi/xslf/usermodel/XSLFFontInfo$XSLFFontFacet;->init()V

    iget-object p0, p0, Lorg/apache/poi/xslf/usermodel/XSLFFontInfo$XSLFFontFacet;->header:Lorg/apache/poi/common/usermodel/fonts/FontHeader;

    invoke-virtual {p0}, Lorg/apache/poi/common/usermodel/fonts/FontHeader;->getWeight()I

    move-result p0

    return p0
.end method

.method public isItalic()Z
    .locals 0

    invoke-direct {p0}, Lorg/apache/poi/xslf/usermodel/XSLFFontInfo$XSLFFontFacet;->init()V

    iget-object p0, p0, Lorg/apache/poi/xslf/usermodel/XSLFFontInfo$XSLFFontFacet;->header:Lorg/apache/poi/common/usermodel/fonts/FontHeader;

    invoke-virtual {p0}, Lorg/apache/poi/common/usermodel/fonts/FontHeader;->isItalic()Z

    move-result p0

    return p0
.end method

.method public setFontData(Ljava/io/InputStream;)V
    .locals 5

    sget-object v0, Lorg/apache/poi/xslf/usermodel/XSLFRelation;->FONT:Lorg/apache/poi/xslf/usermodel/XSLFRelation;

    iget-object v1, p0, Lorg/apache/poi/xslf/usermodel/XSLFFontInfo$XSLFFontFacet;->fontEntry:Lorg/openxmlformats/schemas/presentationml/x2006/main/CTEmbeddedFontDataId;

    invoke-interface {v1}, Lorg/openxmlformats/schemas/presentationml/x2006/main/CTEmbeddedFontDataId;->getId()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_1

    invoke-virtual {v1}, Ljava/lang/String;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_0

    goto :goto_0

    :cond_0
    iget-object p0, p0, Lorg/apache/poi/xslf/usermodel/XSLFFontInfo$XSLFFontFacet;->this$0:Lorg/apache/poi/xslf/usermodel/XSLFFontInfo;

    iget-object p0, p0, Lorg/apache/poi/xslf/usermodel/XSLFFontInfo;->ppt:Lorg/apache/poi/xslf/usermodel/XMLSlideShow;

    invoke-virtual {p0, v1}, Lorg/apache/poi/ooxml/POIXMLDocumentPart;->getRelationById(Ljava/lang/String;)Lorg/apache/poi/ooxml/POIXMLDocumentPart;

    move-result-object p0

    check-cast p0, Lorg/apache/poi/xslf/usermodel/XSLFFontData;

    goto :goto_1

    :cond_1
    :goto_0
    :try_start_0
    iget-object v1, p0, Lorg/apache/poi/xslf/usermodel/XSLFFontInfo$XSLFFontFacet;->this$0:Lorg/apache/poi/xslf/usermodel/XSLFFontInfo;

    iget-object v1, v1, Lorg/apache/poi/xslf/usermodel/XSLFFontInfo;->ppt:Lorg/apache/poi/xslf/usermodel/XMLSlideShow;

    invoke-virtual {v1}, Lorg/apache/poi/ooxml/POIXMLDocument;->getPackage()Lorg/apache/poi/openxml4j/opc/OPCPackage;

    move-result-object v1

    invoke-virtual {v0}, Lorg/apache/poi/ooxml/POIXMLRelation;->getDefaultFileName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lorg/apache/poi/openxml4j/opc/OPCPackage;->getUnusedPartIndex(Ljava/lang/String;)I

    move-result v1
    :try_end_0
    .catch Lorg/apache/poi/openxml4j/exceptions/InvalidFormatException; {:try_start_0 .. :try_end_0} :catch_0

    iget-object v2, p0, Lorg/apache/poi/xslf/usermodel/XSLFFontInfo$XSLFFontFacet;->this$0:Lorg/apache/poi/xslf/usermodel/XSLFFontInfo;

    iget-object v2, v2, Lorg/apache/poi/xslf/usermodel/XSLFFontInfo;->ppt:Lorg/apache/poi/xslf/usermodel/XMLSlideShow;

    invoke-static {}, Lorg/apache/poi/xslf/usermodel/XSLFFactory;->getInstance()Lorg/apache/poi/xslf/usermodel/XSLFFactory;

    move-result-object v3

    const/4 v4, 0x0

    invoke-virtual {v2, v0, v3, v1, v4}, Lorg/apache/poi/ooxml/POIXMLDocumentPart;->createRelationship(Lorg/apache/poi/ooxml/POIXMLRelation;Lorg/apache/poi/ooxml/POIXMLFactory;IZ)Lorg/apache/poi/ooxml/POIXMLDocumentPart$RelationPart;

    move-result-object v0

    invoke-virtual {v0}, Lorg/apache/poi/ooxml/POIXMLDocumentPart$RelationPart;->getDocumentPart()Lorg/apache/poi/ooxml/POIXMLDocumentPart;

    move-result-object v1

    check-cast v1, Lorg/apache/poi/xslf/usermodel/XSLFFontData;

    iget-object p0, p0, Lorg/apache/poi/xslf/usermodel/XSLFFontInfo$XSLFFontFacet;->fontEntry:Lorg/openxmlformats/schemas/presentationml/x2006/main/CTEmbeddedFontDataId;

    invoke-virtual {v0}, Lorg/apache/poi/ooxml/POIXMLDocumentPart$RelationPart;->getRelationship()Lorg/apache/poi/openxml4j/opc/PackageRelationship;

    move-result-object v0

    invoke-virtual {v0}, Lorg/apache/poi/openxml4j/opc/PackageRelationship;->getId()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p0, v0}, Lorg/openxmlformats/schemas/presentationml/x2006/main/CTEmbeddedFontDataId;->setId(Ljava/lang/String;)V

    move-object p0, v1

    :goto_1
    invoke-virtual {p0}, Lorg/apache/poi/xslf/usermodel/XSLFFontData;->getOutputStream()Ljava/io/OutputStream;

    move-result-object p0

    :try_start_1
    invoke-static {p1, p0}, Lorg/apache/poi/util/IOUtils;->copy(Ljava/io/InputStream;Ljava/io/OutputStream;)J
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-eqz p0, :cond_2

    invoke-virtual {p0}, Ljava/io/OutputStream;->close()V

    :cond_2
    return-void

    :catchall_0
    move-exception p1

    :try_start_2
    throw p1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    :catchall_1
    move-exception v0

    if-eqz p0, :cond_3

    :try_start_3
    invoke-virtual {p0}, Ljava/io/OutputStream;->close()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    goto :goto_2

    :catchall_2
    move-exception p0

    invoke-virtual {p1, p0}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :cond_3
    :goto_2
    throw v0

    :catch_0
    move-exception p0

    new-instance p1, Ljava/io/IOException;

    invoke-direct {p1, p0}, Ljava/io/IOException;-><init>(Ljava/lang/Throwable;)V

    throw p1
.end method
