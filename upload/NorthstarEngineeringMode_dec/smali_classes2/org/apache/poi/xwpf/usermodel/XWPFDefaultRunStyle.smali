.class public Lorg/apache/poi/xwpf/usermodel/XWPFDefaultRunStyle;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private rpr:Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTRPr;


# direct methods
.method public constructor <init>(Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTRPr;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/apache/poi/xwpf/usermodel/XWPFDefaultRunStyle;->rpr:Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTRPr;

    return-void
.end method

.method private getFontSizeAsBigDecimal(I)Ljava/math/BigDecimal;
    .locals 2

    iget-object v0, p0, Lorg/apache/poi/xwpf/usermodel/XWPFDefaultRunStyle;->rpr:Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTRPr;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTRPr;->sizeOfSzArray()I

    move-result v0

    if-lez v0, :cond_0

    iget-object p0, p0, Lorg/apache/poi/xwpf/usermodel/XWPFDefaultRunStyle;->rpr:Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTRPr;

    const/4 v0, 0x0

    invoke-interface {p0, v0}, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTRPr;->getSzArray(I)Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTHpsMeasure;

    move-result-object p0

    invoke-interface {p0}, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTHpsMeasure;->xgetVal()Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/STHpsMeasure;

    move-result-object p0

    invoke-static {p0}, Lorg/apache/poi/ooxml/util/POIXMLUnits;->parseLength(Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/STHpsMeasure;)J

    move-result-wide v0

    invoke-static {v0, v1}, Lorg/apache/poi/util/Units;->toPoints(J)D

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/math/BigDecimal;->valueOf(D)Ljava/math/BigDecimal;

    move-result-object p0

    const-wide/16 v0, 0x4

    invoke-static {v0, v1}, Ljava/math/BigDecimal;->valueOf(J)Ljava/math/BigDecimal;

    move-result-object v0

    sget-object v1, Ljava/math/RoundingMode;->HALF_UP:Ljava/math/RoundingMode;

    invoke-virtual {p0, v0, p1, v1}, Ljava/math/BigDecimal;->divide(Ljava/math/BigDecimal;ILjava/math/RoundingMode;)Ljava/math/BigDecimal;

    move-result-object p0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return-object p0
.end method


# virtual methods
.method public getFontSize()I
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .annotation runtime Lorg/apache/poi/util/Removal;
        version = "6.0.0"
    .end annotation

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lorg/apache/poi/xwpf/usermodel/XWPFDefaultRunStyle;->getFontSizeAsBigDecimal(I)Ljava/math/BigDecimal;

    move-result-object p0

    if-nez p0, :cond_0

    const/4 p0, -0x1

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Ljava/math/BigDecimal;->intValue()I

    move-result p0

    :goto_0
    return p0
.end method

.method public getFontSizeAsDouble()Ljava/lang/Double;
    .locals 2

    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lorg/apache/poi/xwpf/usermodel/XWPFDefaultRunStyle;->getFontSizeAsBigDecimal(I)Ljava/math/BigDecimal;

    move-result-object p0

    if-nez p0, :cond_0

    const/4 p0, 0x0

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Ljava/math/BigDecimal;->doubleValue()D

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object p0

    :goto_0
    return-object p0
.end method

.method public getRPr()Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTRPr;
    .locals 0

    iget-object p0, p0, Lorg/apache/poi/xwpf/usermodel/XWPFDefaultRunStyle;->rpr:Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTRPr;

    return-object p0
.end method
