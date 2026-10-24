.class public abstract Lorg/apache/poi/xwpf/usermodel/XWPFAbstractSDT;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/apache/poi/xwpf/usermodel/ISDTContents;


# instance fields
.field private final part:Lorg/apache/poi/xwpf/usermodel/IBody;

.field private final tag:Ljava/lang/String;

.field private final title:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTSdtPr;Lorg/apache/poi/xwpf/usermodel/IBody;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, ""

    if-eqz p1, :cond_0

    invoke-interface {p1}, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTSdtPr;->isSetAlias()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {p1}, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTSdtPr;->getAlias()Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTString;

    move-result-object v1

    invoke-interface {v1}, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTString;->getVal()Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    :cond_0
    move-object v1, v0

    :goto_0
    iput-object v1, p0, Lorg/apache/poi/xwpf/usermodel/XWPFAbstractSDT;->title:Ljava/lang/String;

    if-eqz p1, :cond_1

    invoke-interface {p1}, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTSdtPr;->isSetTag()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {p1}, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTSdtPr;->getTag()Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTString;

    move-result-object p1

    invoke-interface {p1}, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTString;->getVal()Ljava/lang/String;

    move-result-object v0

    :cond_1
    iput-object v0, p0, Lorg/apache/poi/xwpf/usermodel/XWPFAbstractSDT;->tag:Ljava/lang/String;

    iput-object p2, p0, Lorg/apache/poi/xwpf/usermodel/XWPFAbstractSDT;->part:Lorg/apache/poi/xwpf/usermodel/IBody;

    return-void
.end method


# virtual methods
.method public getBody()Lorg/apache/poi/xwpf/usermodel/IBody;
    .locals 0

    const/4 p0, 0x0

    return-object p0
.end method

.method public abstract getContent()Lorg/apache/poi/xwpf/usermodel/ISDTContent;
.end method

.method public getDocument()Lorg/apache/poi/xwpf/usermodel/XWPFDocument;
    .locals 0

    iget-object p0, p0, Lorg/apache/poi/xwpf/usermodel/XWPFAbstractSDT;->part:Lorg/apache/poi/xwpf/usermodel/IBody;

    invoke-interface {p0}, Lorg/apache/poi/xwpf/usermodel/IBody;->getXWPFDocument()Lorg/apache/poi/xwpf/usermodel/XWPFDocument;

    move-result-object p0

    return-object p0
.end method

.method public getElementType()Lorg/apache/poi/xwpf/usermodel/BodyElementType;
    .locals 0

    sget-object p0, Lorg/apache/poi/xwpf/usermodel/BodyElementType;->CONTENTCONTROL:Lorg/apache/poi/xwpf/usermodel/BodyElementType;

    return-object p0
.end method

.method public getPart()Lorg/apache/poi/ooxml/POIXMLDocumentPart;
    .locals 0

    iget-object p0, p0, Lorg/apache/poi/xwpf/usermodel/XWPFAbstractSDT;->part:Lorg/apache/poi/xwpf/usermodel/IBody;

    invoke-interface {p0}, Lorg/apache/poi/xwpf/usermodel/IBody;->getPart()Lorg/apache/poi/ooxml/POIXMLDocumentPart;

    move-result-object p0

    return-object p0
.end method

.method public getPartType()Lorg/apache/poi/xwpf/usermodel/BodyType;
    .locals 0

    sget-object p0, Lorg/apache/poi/xwpf/usermodel/BodyType;->CONTENTCONTROL:Lorg/apache/poi/xwpf/usermodel/BodyType;

    return-object p0
.end method

.method public getTag()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lorg/apache/poi/xwpf/usermodel/XWPFAbstractSDT;->tag:Ljava/lang/String;

    return-object p0
.end method

.method public getTitle()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lorg/apache/poi/xwpf/usermodel/XWPFAbstractSDT;->title:Ljava/lang/String;

    return-object p0
.end method
