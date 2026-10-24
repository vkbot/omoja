.class public Lorg/apache/poi/xwpf/model/XWPFHeaderFooterPolicy;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final DEFAULT:Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/STHdrFtr$Enum;

.field public static final EVEN:Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/STHdrFtr$Enum;

.field public static final FIRST:Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/STHdrFtr$Enum;


# instance fields
.field private defaultFooter:Lorg/apache/poi/xwpf/usermodel/XWPFFooter;

.field private defaultHeader:Lorg/apache/poi/xwpf/usermodel/XWPFHeader;

.field private doc:Lorg/apache/poi/xwpf/usermodel/XWPFDocument;

.field private evenPageFooter:Lorg/apache/poi/xwpf/usermodel/XWPFFooter;

.field private evenPageHeader:Lorg/apache/poi/xwpf/usermodel/XWPFHeader;

.field private firstPageFooter:Lorg/apache/poi/xwpf/usermodel/XWPFFooter;

.field private firstPageHeader:Lorg/apache/poi/xwpf/usermodel/XWPFHeader;

.field private sectPr:Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTSectPr;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    sget-object v0, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/STHdrFtr;->DEFAULT:Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/STHdrFtr$Enum;

    sput-object v0, Lorg/apache/poi/xwpf/model/XWPFHeaderFooterPolicy;->DEFAULT:Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/STHdrFtr$Enum;

    sget-object v0, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/STHdrFtr;->EVEN:Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/STHdrFtr$Enum;

    sput-object v0, Lorg/apache/poi/xwpf/model/XWPFHeaderFooterPolicy;->EVEN:Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/STHdrFtr$Enum;

    sget-object v0, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/STHdrFtr;->FIRST:Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/STHdrFtr$Enum;

    sput-object v0, Lorg/apache/poi/xwpf/model/XWPFHeaderFooterPolicy;->FIRST:Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/STHdrFtr$Enum;

    return-void
.end method

.method public constructor <init>(Lorg/apache/poi/xwpf/usermodel/XWPFDocument;)V
    .locals 1

    const/4 v0, 0x0

    .line 1
    invoke-direct {p0, p1, v0}, Lorg/apache/poi/xwpf/model/XWPFHeaderFooterPolicy;-><init>(Lorg/apache/poi/xwpf/usermodel/XWPFDocument;Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTSectPr;)V

    return-void
.end method

.method public constructor <init>(Lorg/apache/poi/xwpf/usermodel/XWPFDocument;Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTSectPr;)V
    .locals 6

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    if-nez p2, :cond_1

    .line 3
    invoke-virtual {p1}, Lorg/apache/poi/xwpf/usermodel/XWPFDocument;->getDocument()Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTDocument1;

    move-result-object p2

    invoke-interface {p2}, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTDocument1;->getBody()Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTBody;

    move-result-object p2

    .line 4
    invoke-interface {p2}, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTBody;->isSetSectPr()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 5
    invoke-interface {p2}, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTBody;->getSectPr()Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTSectPr;

    move-result-object p2

    goto :goto_0

    .line 6
    :cond_0
    invoke-interface {p2}, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTBody;->addNewSectPr()Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTSectPr;

    move-result-object p2

    :cond_1
    :goto_0
    iput-object p1, p0, Lorg/apache/poi/xwpf/model/XWPFHeaderFooterPolicy;->doc:Lorg/apache/poi/xwpf/usermodel/XWPFDocument;

    iput-object p2, p0, Lorg/apache/poi/xwpf/model/XWPFHeaderFooterPolicy;->sectPr:Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTSectPr;

    const/4 v0, 0x0

    move v1, v0

    .line 7
    :goto_1
    invoke-interface {p2}, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTSectPr;->sizeOfHeaderReferenceArray()I

    move-result v2

    const/4 v3, 0x0

    if-ge v1, v2, :cond_3

    .line 8
    invoke-interface {p2, v1}, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTSectPr;->getHeaderReferenceArray(I)Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTHdrFtrRef;

    move-result-object v2

    .line 9
    invoke-interface {v2}, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTRel;->getId()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p1, v4}, Lorg/apache/poi/ooxml/POIXMLDocumentPart;->getRelationById(Ljava/lang/String;)Lorg/apache/poi/ooxml/POIXMLDocumentPart;

    move-result-object v4

    .line 10
    instance-of v5, v4, Lorg/apache/poi/xwpf/usermodel/XWPFHeader;

    if-eqz v5, :cond_2

    .line 11
    move-object v3, v4

    check-cast v3, Lorg/apache/poi/xwpf/usermodel/XWPFHeader;

    .line 12
    :cond_2
    :try_start_0
    invoke-interface {v2}, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTHdrFtrRef;->getType()Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/STHdrFtr$Enum;

    move-result-object v2
    :try_end_0
    .catch Lorg/apache/xmlbeans/impl/values/x2; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    .line 13
    :catch_0
    sget-object v2, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/STHdrFtr;->DEFAULT:Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/STHdrFtr$Enum;

    .line 14
    :goto_2
    invoke-direct {p0, v3, v2}, Lorg/apache/poi/xwpf/model/XWPFHeaderFooterPolicy;->assignHeader(Lorg/apache/poi/xwpf/usermodel/XWPFHeader;Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/STHdrFtr$Enum;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 15
    :cond_3
    :goto_3
    invoke-interface {p2}, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTSectPr;->sizeOfFooterReferenceArray()I

    move-result v1

    if-ge v0, v1, :cond_5

    .line 16
    invoke-interface {p2, v0}, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTSectPr;->getFooterReferenceArray(I)Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTHdrFtrRef;

    move-result-object v1

    .line 17
    invoke-interface {v1}, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTRel;->getId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Lorg/apache/poi/ooxml/POIXMLDocumentPart;->getRelationById(Ljava/lang/String;)Lorg/apache/poi/ooxml/POIXMLDocumentPart;

    move-result-object v2

    .line 18
    instance-of v4, v2, Lorg/apache/poi/xwpf/usermodel/XWPFFooter;

    if-eqz v4, :cond_4

    .line 19
    check-cast v2, Lorg/apache/poi/xwpf/usermodel/XWPFFooter;

    goto :goto_4

    :cond_4
    move-object v2, v3

    .line 20
    :goto_4
    :try_start_1
    invoke-interface {v1}, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTHdrFtrRef;->getType()Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/STHdrFtr$Enum;

    move-result-object v1
    :try_end_1
    .catch Lorg/apache/xmlbeans/impl/values/x2; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_5

    .line 21
    :catch_1
    sget-object v1, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/STHdrFtr;->DEFAULT:Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/STHdrFtr$Enum;

    .line 22
    :goto_5
    invoke-direct {p0, v2, v1}, Lorg/apache/poi/xwpf/model/XWPFHeaderFooterPolicy;->assignFooter(Lorg/apache/poi/xwpf/usermodel/XWPFFooter;Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/STHdrFtr$Enum;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_3

    :cond_5
    return-void
.end method

.method private assignFooter(Lorg/apache/poi/xwpf/usermodel/XWPFFooter;Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/STHdrFtr$Enum;)V
    .locals 1

    sget-object v0, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/STHdrFtr;->FIRST:Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/STHdrFtr$Enum;

    if-ne p2, v0, :cond_0

    iput-object p1, p0, Lorg/apache/poi/xwpf/model/XWPFHeaderFooterPolicy;->firstPageFooter:Lorg/apache/poi/xwpf/usermodel/XWPFFooter;

    goto :goto_0

    :cond_0
    sget-object v0, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/STHdrFtr;->EVEN:Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/STHdrFtr$Enum;

    if-ne p2, v0, :cond_1

    iput-object p1, p0, Lorg/apache/poi/xwpf/model/XWPFHeaderFooterPolicy;->evenPageFooter:Lorg/apache/poi/xwpf/usermodel/XWPFFooter;

    goto :goto_0

    :cond_1
    iput-object p1, p0, Lorg/apache/poi/xwpf/model/XWPFHeaderFooterPolicy;->defaultFooter:Lorg/apache/poi/xwpf/usermodel/XWPFFooter;

    :goto_0
    return-void
.end method

.method private assignHeader(Lorg/apache/poi/xwpf/usermodel/XWPFHeader;Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/STHdrFtr$Enum;)V
    .locals 1

    sget-object v0, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/STHdrFtr;->FIRST:Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/STHdrFtr$Enum;

    if-ne p2, v0, :cond_0

    iput-object p1, p0, Lorg/apache/poi/xwpf/model/XWPFHeaderFooterPolicy;->firstPageHeader:Lorg/apache/poi/xwpf/usermodel/XWPFHeader;

    goto :goto_0

    :cond_0
    sget-object v0, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/STHdrFtr;->EVEN:Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/STHdrFtr$Enum;

    if-ne p2, v0, :cond_1

    iput-object p1, p0, Lorg/apache/poi/xwpf/model/XWPFHeaderFooterPolicy;->evenPageHeader:Lorg/apache/poi/xwpf/usermodel/XWPFHeader;

    goto :goto_0

    :cond_1
    iput-object p1, p0, Lorg/apache/poi/xwpf/model/XWPFHeaderFooterPolicy;->defaultHeader:Lorg/apache/poi/xwpf/usermodel/XWPFHeader;

    :goto_0
    return-void
.end method

.method private buildFtr(Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/STHdrFtr$Enum;Lorg/apache/poi/xwpf/usermodel/XWPFHeaderFooter;[Lorg/apache/poi/xwpf/usermodel/XWPFParagraph;)Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTHdrFtr;
    .locals 0

    invoke-direct {p0, p3, p2}, Lorg/apache/poi/xwpf/model/XWPFHeaderFooterPolicy;->buildHdrFtr([Lorg/apache/poi/xwpf/usermodel/XWPFParagraph;Lorg/apache/poi/xwpf/usermodel/XWPFHeaderFooter;)Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTHdrFtr;

    move-result-object p3

    invoke-direct {p0, p1, p2}, Lorg/apache/poi/xwpf/model/XWPFHeaderFooterPolicy;->setFooterReference(Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/STHdrFtr$Enum;Lorg/apache/poi/xwpf/usermodel/XWPFHeaderFooter;)V

    return-object p3
.end method

.method private buildHdr(Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/STHdrFtr$Enum;Lorg/apache/poi/xwpf/usermodel/XWPFHeaderFooter;[Lorg/apache/poi/xwpf/usermodel/XWPFParagraph;)Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTHdrFtr;
    .locals 0

    invoke-direct {p0, p3, p2}, Lorg/apache/poi/xwpf/model/XWPFHeaderFooterPolicy;->buildHdrFtr([Lorg/apache/poi/xwpf/usermodel/XWPFParagraph;Lorg/apache/poi/xwpf/usermodel/XWPFHeaderFooter;)Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTHdrFtr;

    move-result-object p3

    invoke-direct {p0, p1, p2}, Lorg/apache/poi/xwpf/model/XWPFHeaderFooterPolicy;->setHeaderReference(Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/STHdrFtr$Enum;Lorg/apache/poi/xwpf/usermodel/XWPFHeaderFooter;)V

    return-object p3
.end method

.method private buildHdrFtr([Lorg/apache/poi/xwpf/usermodel/XWPFParagraph;Lorg/apache/poi/xwpf/usermodel/XWPFHeaderFooter;)Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTHdrFtr;
    .locals 1

    invoke-virtual {p2}, Lorg/apache/poi/xwpf/usermodel/XWPFHeaderFooter;->_getHdrFtr()Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTHdrFtr;

    move-result-object p0

    if-eqz p1, :cond_0

    const/4 p2, 0x0

    :goto_0
    array-length v0, p1

    if-ge p2, v0, :cond_0

    invoke-interface {p0}, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTHdrFtr;->addNewP()Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTP;

    aget-object v0, p1, p2

    invoke-virtual {v0}, Lorg/apache/poi/xwpf/usermodel/XWPFParagraph;->getCTP()Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTP;

    move-result-object v0

    invoke-interface {p0, p2, v0}, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTHdrFtr;->setPArray(ILorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTP;)V

    add-int/lit8 p2, p2, 0x1

    goto :goto_0

    :cond_0
    return-object p0
.end method

.method private getRelationIndex(Lorg/apache/poi/xwpf/usermodel/XWPFRelation;)I
    .locals 3

    iget-object p0, p0, Lorg/apache/poi/xwpf/model/XWPFHeaderFooterPolicy;->doc:Lorg/apache/poi/xwpf/usermodel/XWPFDocument;

    invoke-virtual {p0}, Lorg/apache/poi/ooxml/POIXMLDocumentPart;->getRelationParts()Ljava/util/List;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    const/4 v0, 0x1

    :cond_0
    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/apache/poi/ooxml/POIXMLDocumentPart$RelationPart;

    invoke-virtual {v1}, Lorg/apache/poi/ooxml/POIXMLDocumentPart$RelationPart;->getRelationship()Lorg/apache/poi/openxml4j/opc/PackageRelationship;

    move-result-object v1

    invoke-virtual {v1}, Lorg/apache/poi/openxml4j/opc/PackageRelationship;->getRelationshipType()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1}, Lorg/apache/poi/ooxml/POIXMLRelation;->getRelation()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    return v0
.end method

.method private getWatermarkParagraph(Ljava/lang/String;I)Lorg/apache/poi/xwpf/usermodel/XWPFParagraph;
    .locals 1

    sget-object p1, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTP;->Factory:Lorg/apache/xmlbeans/impl/schema/b;

    invoke-virtual {p1}, Lorg/apache/xmlbeans/impl/schema/b;->a()Lorg/apache/xmlbeans/XmlObject;

    move-result-object p1

    check-cast p1, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTP;

    iget-object p0, p0, Lorg/apache/poi/xwpf/model/XWPFHeaderFooterPolicy;->doc:Lorg/apache/poi/xwpf/usermodel/XWPFDocument;

    invoke-virtual {p0}, Lorg/apache/poi/xwpf/usermodel/XWPFDocument;->getDocument()Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTDocument1;

    move-result-object p0

    invoke-interface {p0}, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTDocument1;->getBody()Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTBody;

    move-result-object p0

    invoke-interface {p0}, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTBody;->sizeOfPArray()I

    move-result p2

    const/4 v0, 0x0

    if-nez p2, :cond_0

    move-object p0, v0

    move-object p2, p0

    goto :goto_0

    :cond_0
    const/4 p2, 0x0

    invoke-interface {p0, p2}, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTBody;->getPArray(I)Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTP;

    move-result-object p0

    invoke-interface {p0}, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTP;->getRsidR()[B

    move-result-object p2

    invoke-interface {p0}, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTP;->getRsidRDefault()[B

    move-result-object p0

    :goto_0
    invoke-interface {p1, p2}, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTP;->setRsidP([B)V

    invoke-interface {p1, p0}, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTP;->setRsidRDefault([B)V

    invoke-interface {p1}, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTP;->addNewPPr()Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTPPr;

    move-result-object p0

    invoke-interface {p0}, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTPPrBase;->addNewPStyle()Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTString;

    move-result-object p0

    const-string p2, "Header"

    invoke-interface {p0, p2}, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTString;->setVal(Ljava/lang/String;)V

    invoke-interface {p1}, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTP;->addNewR()Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTR;

    move-result-object p0

    invoke-interface {p0}, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTR;->addNewRPr()Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTRPr;

    move-result-object p1

    invoke-interface {p1}, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTRPr;->addNewNoProof()Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTOnOff;

    invoke-interface {p0}, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTR;->addNewPict()Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTPicture;

    sget-object p0, Ld3/c;->n:Lorg/apache/xmlbeans/impl/schema/b;

    invoke-virtual {p0}, Lorg/apache/xmlbeans/impl/schema/b;->a()Lorg/apache/xmlbeans/XmlObject;

    move-result-object p0

    check-cast p0, Ld3/c;

    invoke-interface {p0}, Ld3/c;->c1()Ld3/f;

    move-result-object p0

    const-string p1, "_x0000_t136"

    invoke-interface {p0, p1}, Ld3/f;->setId(Ljava/lang/String;)V

    invoke-interface {p0}, Ld3/f;->G0()V

    invoke-interface {p0}, Ld3/f;->i()V

    invoke-interface {p0}, Ld3/f;->F1()V

    invoke-interface {p0}, Ld3/f;->H1()V

    invoke-interface {p0}, Ld3/f;->n0()Ld3/b;

    throw v0
.end method

.method private setFooterReference(Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/STHdrFtr$Enum;Lorg/apache/poi/xwpf/usermodel/XWPFHeaderFooter;)V
    .locals 1

    iget-object v0, p0, Lorg/apache/poi/xwpf/model/XWPFHeaderFooterPolicy;->sectPr:Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTSectPr;

    invoke-interface {v0}, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTSectPr;->addNewFooterReference()Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTHdrFtrRef;

    move-result-object v0

    invoke-interface {v0, p1}, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTHdrFtrRef;->setType(Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/STHdrFtr$Enum;)V

    iget-object p0, p0, Lorg/apache/poi/xwpf/model/XWPFHeaderFooterPolicy;->doc:Lorg/apache/poi/xwpf/usermodel/XWPFDocument;

    invoke-virtual {p0, p2}, Lorg/apache/poi/ooxml/POIXMLDocumentPart;->getRelationId(Lorg/apache/poi/ooxml/POIXMLDocumentPart;)Ljava/lang/String;

    move-result-object p0

    invoke-interface {v0, p0}, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTRel;->setId(Ljava/lang/String;)V

    return-void
.end method

.method private setHeaderReference(Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/STHdrFtr$Enum;Lorg/apache/poi/xwpf/usermodel/XWPFHeaderFooter;)V
    .locals 1

    iget-object v0, p0, Lorg/apache/poi/xwpf/model/XWPFHeaderFooterPolicy;->sectPr:Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTSectPr;

    invoke-interface {v0}, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTSectPr;->addNewHeaderReference()Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTHdrFtrRef;

    move-result-object v0

    invoke-interface {v0, p1}, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTHdrFtrRef;->setType(Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/STHdrFtr$Enum;)V

    iget-object p0, p0, Lorg/apache/poi/xwpf/model/XWPFHeaderFooterPolicy;->doc:Lorg/apache/poi/xwpf/usermodel/XWPFDocument;

    invoke-virtual {p0, p2}, Lorg/apache/poi/ooxml/POIXMLDocumentPart;->getRelationId(Lorg/apache/poi/ooxml/POIXMLDocumentPart;)Ljava/lang/String;

    move-result-object p0

    invoke-interface {v0, p0}, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTRel;->setId(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public createFooter(Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/STHdrFtr$Enum;)Lorg/apache/poi/xwpf/usermodel/XWPFFooter;
    .locals 1

    const/4 v0, 0x0

    .line 1
    invoke-virtual {p0, p1, v0}, Lorg/apache/poi/xwpf/model/XWPFHeaderFooterPolicy;->createFooter(Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/STHdrFtr$Enum;[Lorg/apache/poi/xwpf/usermodel/XWPFParagraph;)Lorg/apache/poi/xwpf/usermodel/XWPFFooter;

    move-result-object p0

    return-object p0
.end method

.method public createFooter(Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/STHdrFtr$Enum;[Lorg/apache/poi/xwpf/usermodel/XWPFParagraph;)Lorg/apache/poi/xwpf/usermodel/XWPFFooter;
    .locals 5

    .line 2
    invoke-virtual {p0, p1}, Lorg/apache/poi/xwpf/model/XWPFHeaderFooterPolicy;->getFooter(Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/STHdrFtr$Enum;)Lorg/apache/poi/xwpf/usermodel/XWPFFooter;

    move-result-object v0

    if-nez v0, :cond_0

    .line 3
    sget-object v0, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/FtrDocument;->Factory:Lorg/apache/xmlbeans/impl/schema/b;

    invoke-virtual {v0}, Lorg/apache/xmlbeans/impl/schema/b;->a()Lorg/apache/xmlbeans/XmlObject;

    move-result-object v0

    check-cast v0, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/FtrDocument;

    .line 4
    sget-object v1, Lorg/apache/poi/xwpf/usermodel/XWPFRelation;->FOOTER:Lorg/apache/poi/xwpf/usermodel/XWPFRelation;

    .line 5
    invoke-direct {p0, v1}, Lorg/apache/poi/xwpf/model/XWPFHeaderFooterPolicy;->getRelationIndex(Lorg/apache/poi/xwpf/usermodel/XWPFRelation;)I

    move-result v2

    iget-object v3, p0, Lorg/apache/poi/xwpf/model/XWPFHeaderFooterPolicy;->doc:Lorg/apache/poi/xwpf/usermodel/XWPFDocument;

    .line 6
    invoke-static {}, Lorg/apache/poi/xwpf/usermodel/XWPFFactory;->getInstance()Lorg/apache/poi/xwpf/usermodel/XWPFFactory;

    move-result-object v4

    .line 7
    invoke-virtual {v3, v1, v4, v2}, Lorg/apache/poi/ooxml/POIXMLDocumentPart;->createRelationship(Lorg/apache/poi/ooxml/POIXMLRelation;Lorg/apache/poi/ooxml/POIXMLFactory;I)Lorg/apache/poi/ooxml/POIXMLDocumentPart;

    move-result-object v1

    check-cast v1, Lorg/apache/poi/xwpf/usermodel/XWPFFooter;

    iget-object v2, p0, Lorg/apache/poi/xwpf/model/XWPFHeaderFooterPolicy;->doc:Lorg/apache/poi/xwpf/usermodel/XWPFDocument;

    .line 8
    invoke-virtual {v1, v2}, Lorg/apache/poi/xwpf/usermodel/XWPFHeaderFooter;->setXWPFDocument(Lorg/apache/poi/xwpf/usermodel/XWPFDocument;)V

    .line 9
    invoke-direct {p0, p1, v1, p2}, Lorg/apache/poi/xwpf/model/XWPFHeaderFooterPolicy;->buildFtr(Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/STHdrFtr$Enum;Lorg/apache/poi/xwpf/usermodel/XWPFHeaderFooter;[Lorg/apache/poi/xwpf/usermodel/XWPFParagraph;)Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTHdrFtr;

    move-result-object p2

    .line 10
    invoke-virtual {v1, p2}, Lorg/apache/poi/xwpf/usermodel/XWPFHeaderFooter;->setHeaderFooter(Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTHdrFtr;)V

    .line 11
    invoke-interface {v0, p2}, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/FtrDocument;->setFtr(Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTHdrFtr;)V

    .line 12
    invoke-direct {p0, v1, p1}, Lorg/apache/poi/xwpf/model/XWPFHeaderFooterPolicy;->assignFooter(Lorg/apache/poi/xwpf/usermodel/XWPFFooter;Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/STHdrFtr$Enum;)V

    move-object v0, v1

    :cond_0
    return-object v0
.end method

.method public createHeader(Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/STHdrFtr$Enum;)Lorg/apache/poi/xwpf/usermodel/XWPFHeader;
    .locals 1

    const/4 v0, 0x0

    .line 1
    invoke-virtual {p0, p1, v0}, Lorg/apache/poi/xwpf/model/XWPFHeaderFooterPolicy;->createHeader(Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/STHdrFtr$Enum;[Lorg/apache/poi/xwpf/usermodel/XWPFParagraph;)Lorg/apache/poi/xwpf/usermodel/XWPFHeader;

    move-result-object p0

    return-object p0
.end method

.method public createHeader(Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/STHdrFtr$Enum;[Lorg/apache/poi/xwpf/usermodel/XWPFParagraph;)Lorg/apache/poi/xwpf/usermodel/XWPFHeader;
    .locals 5

    .line 2
    invoke-virtual {p0, p1}, Lorg/apache/poi/xwpf/model/XWPFHeaderFooterPolicy;->getHeader(Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/STHdrFtr$Enum;)Lorg/apache/poi/xwpf/usermodel/XWPFHeader;

    move-result-object v0

    if-nez v0, :cond_0

    .line 3
    sget-object v0, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/HdrDocument;->Factory:Lorg/apache/xmlbeans/impl/schema/b;

    invoke-virtual {v0}, Lorg/apache/xmlbeans/impl/schema/b;->a()Lorg/apache/xmlbeans/XmlObject;

    move-result-object v0

    check-cast v0, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/HdrDocument;

    .line 4
    sget-object v1, Lorg/apache/poi/xwpf/usermodel/XWPFRelation;->HEADER:Lorg/apache/poi/xwpf/usermodel/XWPFRelation;

    .line 5
    invoke-direct {p0, v1}, Lorg/apache/poi/xwpf/model/XWPFHeaderFooterPolicy;->getRelationIndex(Lorg/apache/poi/xwpf/usermodel/XWPFRelation;)I

    move-result v2

    iget-object v3, p0, Lorg/apache/poi/xwpf/model/XWPFHeaderFooterPolicy;->doc:Lorg/apache/poi/xwpf/usermodel/XWPFDocument;

    .line 6
    invoke-static {}, Lorg/apache/poi/xwpf/usermodel/XWPFFactory;->getInstance()Lorg/apache/poi/xwpf/usermodel/XWPFFactory;

    move-result-object v4

    .line 7
    invoke-virtual {v3, v1, v4, v2}, Lorg/apache/poi/ooxml/POIXMLDocumentPart;->createRelationship(Lorg/apache/poi/ooxml/POIXMLRelation;Lorg/apache/poi/ooxml/POIXMLFactory;I)Lorg/apache/poi/ooxml/POIXMLDocumentPart;

    move-result-object v1

    check-cast v1, Lorg/apache/poi/xwpf/usermodel/XWPFHeader;

    iget-object v2, p0, Lorg/apache/poi/xwpf/model/XWPFHeaderFooterPolicy;->doc:Lorg/apache/poi/xwpf/usermodel/XWPFDocument;

    .line 8
    invoke-virtual {v1, v2}, Lorg/apache/poi/xwpf/usermodel/XWPFHeaderFooter;->setXWPFDocument(Lorg/apache/poi/xwpf/usermodel/XWPFDocument;)V

    .line 9
    invoke-direct {p0, p1, v1, p2}, Lorg/apache/poi/xwpf/model/XWPFHeaderFooterPolicy;->buildHdr(Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/STHdrFtr$Enum;Lorg/apache/poi/xwpf/usermodel/XWPFHeaderFooter;[Lorg/apache/poi/xwpf/usermodel/XWPFParagraph;)Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTHdrFtr;

    move-result-object p2

    .line 10
    invoke-virtual {v1, p2}, Lorg/apache/poi/xwpf/usermodel/XWPFHeaderFooter;->setHeaderFooter(Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTHdrFtr;)V

    .line 11
    invoke-interface {v0, p2}, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/HdrDocument;->setHdr(Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTHdrFtr;)V

    .line 12
    invoke-direct {p0, v1, p1}, Lorg/apache/poi/xwpf/model/XWPFHeaderFooterPolicy;->assignHeader(Lorg/apache/poi/xwpf/usermodel/XWPFHeader;Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/STHdrFtr$Enum;)V

    move-object v0, v1

    :cond_0
    return-object v0
.end method

.method public createWatermark(Ljava/lang/String;)V
    .locals 3

    const/4 v0, 0x1

    new-array v1, v0, [Lorg/apache/poi/xwpf/usermodel/XWPFParagraph;

    invoke-direct {p0, p1, v0}, Lorg/apache/poi/xwpf/model/XWPFHeaderFooterPolicy;->getWatermarkParagraph(Ljava/lang/String;I)Lorg/apache/poi/xwpf/usermodel/XWPFParagraph;

    move-result-object v0

    const/4 v2, 0x0

    aput-object v0, v1, v2

    sget-object v0, Lorg/apache/poi/xwpf/model/XWPFHeaderFooterPolicy;->DEFAULT:Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/STHdrFtr$Enum;

    invoke-virtual {p0, v0, v1}, Lorg/apache/poi/xwpf/model/XWPFHeaderFooterPolicy;->createHeader(Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/STHdrFtr$Enum;[Lorg/apache/poi/xwpf/usermodel/XWPFParagraph;)Lorg/apache/poi/xwpf/usermodel/XWPFHeader;

    const/4 v0, 0x2

    invoke-direct {p0, p1, v0}, Lorg/apache/poi/xwpf/model/XWPFHeaderFooterPolicy;->getWatermarkParagraph(Ljava/lang/String;I)Lorg/apache/poi/xwpf/usermodel/XWPFParagraph;

    move-result-object v0

    aput-object v0, v1, v2

    sget-object v0, Lorg/apache/poi/xwpf/model/XWPFHeaderFooterPolicy;->FIRST:Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/STHdrFtr$Enum;

    invoke-virtual {p0, v0, v1}, Lorg/apache/poi/xwpf/model/XWPFHeaderFooterPolicy;->createHeader(Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/STHdrFtr$Enum;[Lorg/apache/poi/xwpf/usermodel/XWPFParagraph;)Lorg/apache/poi/xwpf/usermodel/XWPFHeader;

    const/4 v0, 0x3

    invoke-direct {p0, p1, v0}, Lorg/apache/poi/xwpf/model/XWPFHeaderFooterPolicy;->getWatermarkParagraph(Ljava/lang/String;I)Lorg/apache/poi/xwpf/usermodel/XWPFParagraph;

    move-result-object p1

    aput-object p1, v1, v2

    sget-object p1, Lorg/apache/poi/xwpf/model/XWPFHeaderFooterPolicy;->EVEN:Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/STHdrFtr$Enum;

    invoke-virtual {p0, p1, v1}, Lorg/apache/poi/xwpf/model/XWPFHeaderFooterPolicy;->createHeader(Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/STHdrFtr$Enum;[Lorg/apache/poi/xwpf/usermodel/XWPFParagraph;)Lorg/apache/poi/xwpf/usermodel/XWPFHeader;

    return-void
.end method

.method public getDefaultFooter()Lorg/apache/poi/xwpf/usermodel/XWPFFooter;
    .locals 0

    iget-object p0, p0, Lorg/apache/poi/xwpf/model/XWPFHeaderFooterPolicy;->defaultFooter:Lorg/apache/poi/xwpf/usermodel/XWPFFooter;

    return-object p0
.end method

.method public getDefaultHeader()Lorg/apache/poi/xwpf/usermodel/XWPFHeader;
    .locals 0

    iget-object p0, p0, Lorg/apache/poi/xwpf/model/XWPFHeaderFooterPolicy;->defaultHeader:Lorg/apache/poi/xwpf/usermodel/XWPFHeader;

    return-object p0
.end method

.method public getEvenPageFooter()Lorg/apache/poi/xwpf/usermodel/XWPFFooter;
    .locals 0

    iget-object p0, p0, Lorg/apache/poi/xwpf/model/XWPFHeaderFooterPolicy;->evenPageFooter:Lorg/apache/poi/xwpf/usermodel/XWPFFooter;

    return-object p0
.end method

.method public getEvenPageHeader()Lorg/apache/poi/xwpf/usermodel/XWPFHeader;
    .locals 0

    iget-object p0, p0, Lorg/apache/poi/xwpf/model/XWPFHeaderFooterPolicy;->evenPageHeader:Lorg/apache/poi/xwpf/usermodel/XWPFHeader;

    return-object p0
.end method

.method public getFirstPageFooter()Lorg/apache/poi/xwpf/usermodel/XWPFFooter;
    .locals 0

    iget-object p0, p0, Lorg/apache/poi/xwpf/model/XWPFHeaderFooterPolicy;->firstPageFooter:Lorg/apache/poi/xwpf/usermodel/XWPFFooter;

    return-object p0
.end method

.method public getFirstPageHeader()Lorg/apache/poi/xwpf/usermodel/XWPFHeader;
    .locals 0

    iget-object p0, p0, Lorg/apache/poi/xwpf/model/XWPFHeaderFooterPolicy;->firstPageHeader:Lorg/apache/poi/xwpf/usermodel/XWPFHeader;

    return-object p0
.end method

.method public getFooter(I)Lorg/apache/poi/xwpf/usermodel/XWPFFooter;
    .locals 1

    const/4 v0, 0x1

    if-ne p1, v0, :cond_0

    iget-object v0, p0, Lorg/apache/poi/xwpf/model/XWPFHeaderFooterPolicy;->firstPageFooter:Lorg/apache/poi/xwpf/usermodel/XWPFFooter;

    if-eqz v0, :cond_0

    return-object v0

    .line 1
    :cond_0
    rem-int/lit8 p1, p1, 0x2

    if-nez p1, :cond_1

    iget-object p1, p0, Lorg/apache/poi/xwpf/model/XWPFHeaderFooterPolicy;->evenPageFooter:Lorg/apache/poi/xwpf/usermodel/XWPFFooter;

    if-eqz p1, :cond_1

    return-object p1

    :cond_1
    iget-object p0, p0, Lorg/apache/poi/xwpf/model/XWPFHeaderFooterPolicy;->defaultFooter:Lorg/apache/poi/xwpf/usermodel/XWPFFooter;

    return-object p0
.end method

.method public getFooter(Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/STHdrFtr$Enum;)Lorg/apache/poi/xwpf/usermodel/XWPFFooter;
    .locals 1

    .line 2
    sget-object v0, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/STHdrFtr;->EVEN:Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/STHdrFtr$Enum;

    if-ne p1, v0, :cond_0

    iget-object p0, p0, Lorg/apache/poi/xwpf/model/XWPFHeaderFooterPolicy;->evenPageFooter:Lorg/apache/poi/xwpf/usermodel/XWPFFooter;

    return-object p0

    .line 3
    :cond_0
    sget-object v0, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/STHdrFtr;->FIRST:Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/STHdrFtr$Enum;

    if-ne p1, v0, :cond_1

    iget-object p0, p0, Lorg/apache/poi/xwpf/model/XWPFHeaderFooterPolicy;->firstPageFooter:Lorg/apache/poi/xwpf/usermodel/XWPFFooter;

    return-object p0

    :cond_1
    iget-object p0, p0, Lorg/apache/poi/xwpf/model/XWPFHeaderFooterPolicy;->defaultFooter:Lorg/apache/poi/xwpf/usermodel/XWPFFooter;

    return-object p0
.end method

.method public getHeader(I)Lorg/apache/poi/xwpf/usermodel/XWPFHeader;
    .locals 1

    const/4 v0, 0x1

    if-ne p1, v0, :cond_0

    iget-object v0, p0, Lorg/apache/poi/xwpf/model/XWPFHeaderFooterPolicy;->firstPageHeader:Lorg/apache/poi/xwpf/usermodel/XWPFHeader;

    if-eqz v0, :cond_0

    return-object v0

    .line 1
    :cond_0
    rem-int/lit8 p1, p1, 0x2

    if-nez p1, :cond_1

    iget-object p1, p0, Lorg/apache/poi/xwpf/model/XWPFHeaderFooterPolicy;->evenPageHeader:Lorg/apache/poi/xwpf/usermodel/XWPFHeader;

    if-eqz p1, :cond_1

    return-object p1

    :cond_1
    iget-object p0, p0, Lorg/apache/poi/xwpf/model/XWPFHeaderFooterPolicy;->defaultHeader:Lorg/apache/poi/xwpf/usermodel/XWPFHeader;

    return-object p0
.end method

.method public getHeader(Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/STHdrFtr$Enum;)Lorg/apache/poi/xwpf/usermodel/XWPFHeader;
    .locals 1

    .line 2
    sget-object v0, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/STHdrFtr;->EVEN:Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/STHdrFtr$Enum;

    if-ne p1, v0, :cond_0

    iget-object p0, p0, Lorg/apache/poi/xwpf/model/XWPFHeaderFooterPolicy;->evenPageHeader:Lorg/apache/poi/xwpf/usermodel/XWPFHeader;

    return-object p0

    .line 3
    :cond_0
    sget-object v0, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/STHdrFtr;->FIRST:Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/STHdrFtr$Enum;

    if-ne p1, v0, :cond_1

    iget-object p0, p0, Lorg/apache/poi/xwpf/model/XWPFHeaderFooterPolicy;->firstPageHeader:Lorg/apache/poi/xwpf/usermodel/XWPFHeader;

    return-object p0

    :cond_1
    iget-object p0, p0, Lorg/apache/poi/xwpf/model/XWPFHeaderFooterPolicy;->defaultHeader:Lorg/apache/poi/xwpf/usermodel/XWPFHeader;

    return-object p0
.end method

.method public getOddPageFooter()Lorg/apache/poi/xwpf/usermodel/XWPFFooter;
    .locals 0

    iget-object p0, p0, Lorg/apache/poi/xwpf/model/XWPFHeaderFooterPolicy;->defaultFooter:Lorg/apache/poi/xwpf/usermodel/XWPFFooter;

    return-object p0
.end method

.method public getOddPageHeader()Lorg/apache/poi/xwpf/usermodel/XWPFHeader;
    .locals 0

    iget-object p0, p0, Lorg/apache/poi/xwpf/model/XWPFHeaderFooterPolicy;->defaultHeader:Lorg/apache/poi/xwpf/usermodel/XWPFHeader;

    return-object p0
.end method
