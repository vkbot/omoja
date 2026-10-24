.class public Lorg/apache/poi/xwpf/usermodel/XWPFDefaultParagraphStyle;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private final ppr:Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTPPrGeneral;


# direct methods
.method public constructor <init>(Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTPPrGeneral;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/apache/poi/xwpf/usermodel/XWPFDefaultParagraphStyle;->ppr:Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTPPrGeneral;

    return-void
.end method


# virtual methods
.method public getPPr()Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTPPrGeneral;
    .locals 0

    iget-object p0, p0, Lorg/apache/poi/xwpf/usermodel/XWPFDefaultParagraphStyle;->ppr:Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTPPrGeneral;

    return-object p0
.end method

.method public getSpacingAfter()I
    .locals 2

    iget-object v0, p0, Lorg/apache/poi/xwpf/usermodel/XWPFDefaultParagraphStyle;->ppr:Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTPPrGeneral;

    invoke-interface {v0}, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTPPrBase;->isSetSpacing()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object p0, p0, Lorg/apache/poi/xwpf/usermodel/XWPFDefaultParagraphStyle;->ppr:Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTPPrGeneral;

    invoke-interface {p0}, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTPPrBase;->getSpacing()Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTSpacing;

    move-result-object p0

    invoke-interface {p0}, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTSpacing;->xgetAfter()Lorg/openxmlformats/schemas/officeDocument/x2006/sharedTypes/STTwipsMeasure;

    move-result-object p0

    invoke-static {p0}, Lorg/apache/poi/ooxml/util/POIXMLUnits;->parseLength(Lorg/openxmlformats/schemas/officeDocument/x2006/sharedTypes/STTwipsMeasure;)J

    move-result-wide v0

    invoke-static {v0, v1}, Lorg/apache/poi/util/Units;->toDXA(J)D

    move-result-wide v0

    double-to-int p0, v0

    goto :goto_0

    :cond_0
    const/4 p0, -0x1

    :goto_0
    return p0
.end method
