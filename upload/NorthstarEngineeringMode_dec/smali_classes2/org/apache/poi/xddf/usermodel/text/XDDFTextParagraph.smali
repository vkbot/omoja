.class public Lorg/apache/poi/xddf/usermodel/text/XDDFTextParagraph;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Iterable;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/lang/Iterable<",
        "Lorg/apache/poi/xddf/usermodel/text/XDDFTextRun;",
        ">;"
    }
.end annotation


# instance fields
.field private final _p:Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextParagraph;

.field private _parent:Lorg/apache/poi/xddf/usermodel/text/XDDFTextBody;

.field private _properties:Lorg/apache/poi/xddf/usermodel/text/XDDFParagraphProperties;

.field private final _runs:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lorg/apache/poi/xddf/usermodel/text/XDDFTextRun;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextParagraph;Lorg/apache/poi/xddf/usermodel/text/XDDFTextBody;)V
    .locals 4
    .annotation runtime Lorg/apache/poi/util/Internal;
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/apache/poi/xddf/usermodel/text/XDDFTextParagraph;->_p:Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextParagraph;

    iput-object p2, p0, Lorg/apache/poi/xddf/usermodel/text/XDDFTextParagraph;->_parent:Lorg/apache/poi/xddf/usermodel/text/XDDFTextBody;

    invoke-interface {p1}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextParagraph;->sizeOfBrArray()I

    move-result p2

    invoke-interface {p1}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextParagraph;->sizeOfFldArray()I

    move-result v0

    add-int/2addr v0, p2

    invoke-interface {p1}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextParagraph;->sizeOfRArray()I

    move-result p2

    add-int/2addr p2, v0

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0, p2}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v0, p0, Lorg/apache/poi/xddf/usermodel/text/XDDFTextParagraph;->_runs:Ljava/util/ArrayList;

    sget-object p2, Li5/k;->b1:Li5/k;

    invoke-interface {p1, p2}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextParagraph;->selectChildren(Li5/k;)[Lorg/apache/xmlbeans/XmlObject;

    move-result-object p1

    array-length p2, p1

    const/4 v0, 0x0

    :goto_0
    if-ge v0, p2, :cond_3

    aget-object v1, p1, v0

    instance-of v2, v1, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextLineBreak;

    if-eqz v2, :cond_0

    iget-object v2, p0, Lorg/apache/poi/xddf/usermodel/text/XDDFTextParagraph;->_runs:Ljava/util/ArrayList;

    new-instance v3, Lorg/apache/poi/xddf/usermodel/text/XDDFTextRun;

    check-cast v1, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextLineBreak;

    invoke-direct {v3, v1, p0}, Lorg/apache/poi/xddf/usermodel/text/XDDFTextRun;-><init>(Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextLineBreak;Lorg/apache/poi/xddf/usermodel/text/XDDFTextParagraph;)V

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_0
    instance-of v2, v1, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextField;

    if-eqz v2, :cond_1

    iget-object v2, p0, Lorg/apache/poi/xddf/usermodel/text/XDDFTextParagraph;->_runs:Ljava/util/ArrayList;

    new-instance v3, Lorg/apache/poi/xddf/usermodel/text/XDDFTextRun;

    check-cast v1, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextField;

    invoke-direct {v3, v1, p0}, Lorg/apache/poi/xddf/usermodel/text/XDDFTextRun;-><init>(Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextField;Lorg/apache/poi/xddf/usermodel/text/XDDFTextParagraph;)V

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_1
    instance-of v2, v1, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTRegularTextRun;

    if-eqz v2, :cond_2

    iget-object v2, p0, Lorg/apache/poi/xddf/usermodel/text/XDDFTextParagraph;->_runs:Ljava/util/ArrayList;

    new-instance v3, Lorg/apache/poi/xddf/usermodel/text/XDDFTextRun;

    check-cast v1, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTRegularTextRun;

    invoke-direct {v3, v1, p0}, Lorg/apache/poi/xddf/usermodel/text/XDDFTextRun;-><init>(Lorg/openxmlformats/schemas/drawingml/x2006/main/CTRegularTextRun;Lorg/apache/poi/xddf/usermodel/text/XDDFTextParagraph;)V

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_2
    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_3
    invoke-virtual {p0}, Lorg/apache/poi/xddf/usermodel/text/XDDFTextParagraph;->addDefaultRunProperties()Lorg/apache/poi/xddf/usermodel/text/XDDFRunProperties;

    invoke-virtual {p0}, Lorg/apache/poi/xddf/usermodel/text/XDDFTextParagraph;->addAfterLastRunProperties()Lorg/apache/poi/xddf/usermodel/text/XDDFRunProperties;

    return-void
.end method

.method public static synthetic a(Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextParagraphProperties;)Z
    .locals 0

    invoke-static {p0}, Lorg/apache/poi/xddf/usermodel/text/XDDFTextParagraph;->lambda$getBulletColor$0(Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextParagraphProperties;)Z

    move-result p0

    return p0
.end method

.method public static synthetic b(Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextParagraphProperties;)Lorg/apache/poi/xddf/usermodel/text/XDDFFont;
    .locals 0

    invoke-static {p0}, Lorg/apache/poi/xddf/usermodel/text/XDDFTextParagraph;->lambda$getBulletFont$3(Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextParagraphProperties;)Lorg/apache/poi/xddf/usermodel/text/XDDFFont;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic c(Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextParagraphProperties;)Z
    .locals 0

    invoke-static {p0}, Lorg/apache/poi/xddf/usermodel/text/XDDFTextParagraph;->lambda$getBulletSize$4(Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextParagraphProperties;)Z

    move-result p0

    return p0
.end method

.method public static synthetic d(Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextParagraphProperties;)Z
    .locals 0

    invoke-static {p0}, Lorg/apache/poi/xddf/usermodel/text/XDDFTextParagraph;->lambda$getBulletFont$2(Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextParagraphProperties;)Z

    move-result p0

    return p0
.end method

.method public static synthetic e(Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextParagraphProperties;)Lorg/apache/poi/xddf/usermodel/text/XDDFBulletSize;
    .locals 0

    invoke-static {p0}, Lorg/apache/poi/xddf/usermodel/text/XDDFTextParagraph;->lambda$getBulletSize$5(Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextParagraphProperties;)Lorg/apache/poi/xddf/usermodel/text/XDDFBulletSize;

    move-result-object p0

    return-object p0
.end method

.method private extractSpacing(Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextSpacing;)Lorg/apache/poi/xddf/usermodel/text/XDDFSpacing;
    .locals 4

    invoke-interface {p1}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextSpacing;->isSetSpcPct()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object p0, p0, Lorg/apache/poi/xddf/usermodel/text/XDDFTextParagraph;->_parent:Lorg/apache/poi/xddf/usermodel/text/XDDFTextBody;

    invoke-virtual {p0}, Lorg/apache/poi/xddf/usermodel/text/XDDFTextBody;->getBodyProperties()Lorg/apache/poi/xddf/usermodel/text/XDDFBodyProperties;

    move-result-object p0

    invoke-virtual {p0}, Lorg/apache/poi/xddf/usermodel/text/XDDFBodyProperties;->getAutoFit()Lorg/apache/poi/xddf/usermodel/text/XDDFAutoFit;

    move-result-object p0

    invoke-interface {p0}, Lorg/apache/poi/xddf/usermodel/text/XDDFAutoFit;->getLineSpaceReduction()I

    move-result p0

    int-to-double v0, p0

    const-wide v2, 0x40f86a0000000000L    # 100000.0

    div-double/2addr v0, v2

    const-wide/high16 v2, 0x3ff0000000000000L    # 1.0

    sub-double/2addr v2, v0

    new-instance p0, Lorg/apache/poi/xddf/usermodel/text/XDDFSpacingPercent;

    invoke-interface {p1}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextSpacing;->getSpcPct()Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextSpacingPercent;

    move-result-object v0

    invoke-static {v2, v3}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v1

    invoke-direct {p0, p1, v0, v1}, Lorg/apache/poi/xddf/usermodel/text/XDDFSpacingPercent;-><init>(Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextSpacing;Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextSpacingPercent;Ljava/lang/Double;)V

    return-object p0

    :cond_0
    invoke-interface {p1}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextSpacing;->isSetSpcPts()Z

    move-result p0

    if-eqz p0, :cond_1

    new-instance p0, Lorg/apache/poi/xddf/usermodel/text/XDDFSpacingPoints;

    invoke-interface {p1}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextSpacing;->getSpcPts()Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextSpacingPoint;

    move-result-object v0

    invoke-direct {p0, p1, v0}, Lorg/apache/poi/xddf/usermodel/text/XDDFSpacingPoints;-><init>(Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextSpacing;Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextSpacingPoint;)V

    return-object p0

    :cond_1
    const/4 p0, 0x0

    return-object p0
.end method

.method public static synthetic f(Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextParagraphProperties;)Lorg/apache/poi/xddf/usermodel/XDDFColor;
    .locals 0

    invoke-static {p0}, Lorg/apache/poi/xddf/usermodel/text/XDDFTextParagraph;->lambda$getBulletColor$1(Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextParagraphProperties;)Lorg/apache/poi/xddf/usermodel/XDDFColor;

    move-result-object p0

    return-object p0
.end method

.method private findDefinedParagraphProperty(Ljava/util/function/Predicate;Ljava/util/function/Function;I)Ljava/util/Optional;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<R:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/function/Predicate<",
            "Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextParagraphProperties;",
            ">;",
            "Ljava/util/function/Function<",
            "Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextParagraphProperties;",
            "TR;>;I)",
            "Ljava/util/Optional<",
            "TR;>;"
        }
    .end annotation

    iget-object v0, p0, Lorg/apache/poi/xddf/usermodel/text/XDDFTextParagraph;->_p:Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextParagraph;

    .line 5
    invoke-interface {v0}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextParagraph;->getPPr()Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextParagraphProperties;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 6
    invoke-interface {p1, v0}, Ljava/util/function/Predicate;->test(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 7
    invoke-interface {p2, v0}, Ljava/util/function/Function;->apply(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    invoke-static {p0}, Ljava/util/Optional;->ofNullable(Ljava/lang/Object;)Ljava/util/Optional;

    move-result-object p0

    return-object p0

    :cond_0
    iget-object p0, p0, Lorg/apache/poi/xddf/usermodel/text/XDDFTextParagraph;->_parent:Lorg/apache/poi/xddf/usermodel/text/XDDFTextBody;

    .line 8
    invoke-virtual {p0, p1, p2, p3}, Lorg/apache/poi/xddf/usermodel/text/XDDFTextBody;->findDefinedParagraphProperty(Ljava/util/function/Predicate;Ljava/util/function/Function;I)Ljava/util/Optional;

    move-result-object p0

    return-object p0
.end method

.method private findDefinedRunProperty(Ljava/util/function/Predicate;Ljava/util/function/Function;I)Ljava/util/Optional;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<R:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/function/Predicate<",
            "Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextCharacterProperties;",
            ">;",
            "Ljava/util/function/Function<",
            "Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextCharacterProperties;",
            "TR;>;I)",
            "Ljava/util/Optional<",
            "TR;>;"
        }
    .end annotation

    iget-object v0, p0, Lorg/apache/poi/xddf/usermodel/text/XDDFTextParagraph;->_p:Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextParagraph;

    .line 5
    invoke-interface {v0}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextParagraph;->getPPr()Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextParagraphProperties;

    move-result-object v0

    invoke-interface {v0}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextParagraphProperties;->isSetDefRPr()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/apache/poi/xddf/usermodel/text/XDDFTextParagraph;->_p:Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextParagraph;

    invoke-interface {v0}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextParagraph;->getPPr()Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextParagraphProperties;

    move-result-object v0

    invoke-interface {v0}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextParagraphProperties;->getDefRPr()Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextCharacterProperties;

    move-result-object v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    if-eqz v0, :cond_1

    .line 6
    invoke-interface {p1, v0}, Ljava/util/function/Predicate;->test(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 7
    invoke-interface {p2, v0}, Ljava/util/function/Function;->apply(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    invoke-static {p0}, Ljava/util/Optional;->ofNullable(Ljava/lang/Object;)Ljava/util/Optional;

    move-result-object p0

    return-object p0

    :cond_1
    iget-object p0, p0, Lorg/apache/poi/xddf/usermodel/text/XDDFTextParagraph;->_parent:Lorg/apache/poi/xddf/usermodel/text/XDDFTextBody;

    .line 8
    invoke-virtual {p0, p1, p2, p3}, Lorg/apache/poi/xddf/usermodel/text/XDDFTextBody;->findDefinedRunProperty(Ljava/util/function/Predicate;Ljava/util/function/Function;I)Ljava/util/Optional;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic g(Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextParagraphProperties;)Z
    .locals 0

    invoke-static {p0}, Lorg/apache/poi/xddf/usermodel/text/XDDFTextParagraph;->lambda$getBulletStyle$6(Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextParagraphProperties;)Z

    move-result p0

    return p0
.end method

.method private getOrCreateProperties()Lorg/apache/poi/xddf/usermodel/text/XDDFParagraphProperties;
    .locals 2

    iget-object v0, p0, Lorg/apache/poi/xddf/usermodel/text/XDDFTextParagraph;->_p:Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextParagraph;

    invoke-interface {v0}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextParagraph;->isSetPPr()Z

    move-result v0

    if-nez v0, :cond_0

    new-instance v0, Lorg/apache/poi/xddf/usermodel/text/XDDFParagraphProperties;

    iget-object v1, p0, Lorg/apache/poi/xddf/usermodel/text/XDDFTextParagraph;->_p:Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextParagraph;

    invoke-interface {v1}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextParagraph;->addNewPPr()Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextParagraphProperties;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/apache/poi/xddf/usermodel/text/XDDFParagraphProperties;-><init>(Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextParagraphProperties;)V

    iput-object v0, p0, Lorg/apache/poi/xddf/usermodel/text/XDDFTextParagraph;->_properties:Lorg/apache/poi/xddf/usermodel/text/XDDFParagraphProperties;

    :cond_0
    invoke-direct {p0}, Lorg/apache/poi/xddf/usermodel/text/XDDFTextParagraph;->getProperties()Lorg/apache/poi/xddf/usermodel/text/XDDFParagraphProperties;

    move-result-object p0

    return-object p0
.end method

.method private getProperties()Lorg/apache/poi/xddf/usermodel/text/XDDFParagraphProperties;
    .locals 2

    iget-object v0, p0, Lorg/apache/poi/xddf/usermodel/text/XDDFTextParagraph;->_properties:Lorg/apache/poi/xddf/usermodel/text/XDDFParagraphProperties;

    if-nez v0, :cond_0

    new-instance v0, Lorg/apache/poi/xddf/usermodel/text/XDDFParagraphProperties;

    iget-object v1, p0, Lorg/apache/poi/xddf/usermodel/text/XDDFTextParagraph;->_p:Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextParagraph;

    invoke-interface {v1}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextParagraph;->getPPr()Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextParagraphProperties;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/apache/poi/xddf/usermodel/text/XDDFParagraphProperties;-><init>(Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextParagraphProperties;)V

    iput-object v0, p0, Lorg/apache/poi/xddf/usermodel/text/XDDFTextParagraph;->_properties:Lorg/apache/poi/xddf/usermodel/text/XDDFParagraphProperties;

    :cond_0
    iget-object p0, p0, Lorg/apache/poi/xddf/usermodel/text/XDDFTextParagraph;->_properties:Lorg/apache/poi/xddf/usermodel/text/XDDFParagraphProperties;

    return-object p0
.end method

.method public static synthetic h(Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextParagraphProperties;)Lorg/apache/poi/xddf/usermodel/text/XDDFBulletStyle;
    .locals 0

    invoke-static {p0}, Lorg/apache/poi/xddf/usermodel/text/XDDFTextParagraph;->lambda$getBulletStyle$7(Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextParagraphProperties;)Lorg/apache/poi/xddf/usermodel/text/XDDFBulletStyle;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic i(Lorg/apache/poi/xddf/usermodel/text/XDDFTextParagraph;Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextSpacing;)Lorg/apache/poi/xddf/usermodel/text/XDDFSpacing;
    .locals 0

    invoke-direct {p0, p1}, Lorg/apache/poi/xddf/usermodel/text/XDDFTextParagraph;->extractSpacing(Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextSpacing;)Lorg/apache/poi/xddf/usermodel/text/XDDFSpacing;

    move-result-object p0

    return-object p0
.end method

.method private static synthetic lambda$getBulletColor$0(Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextParagraphProperties;)Z
    .locals 1

    invoke-interface {p0}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextParagraphProperties;->isSetBuClr()Z

    move-result v0

    if-nez v0, :cond_1

    invoke-interface {p0}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextParagraphProperties;->isSetBuClrTx()Z

    move-result p0

    if-eqz p0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p0, 0x1

    :goto_1
    return p0
.end method

.method private static synthetic lambda$getBulletColor$1(Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextParagraphProperties;)Lorg/apache/poi/xddf/usermodel/XDDFColor;
    .locals 1

    new-instance v0, Lorg/apache/poi/xddf/usermodel/text/XDDFParagraphBulletProperties;

    invoke-direct {v0, p0}, Lorg/apache/poi/xddf/usermodel/text/XDDFParagraphBulletProperties;-><init>(Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextParagraphProperties;)V

    invoke-virtual {v0}, Lorg/apache/poi/xddf/usermodel/text/XDDFParagraphBulletProperties;->getBulletColor()Lorg/apache/poi/xddf/usermodel/XDDFColor;

    move-result-object p0

    return-object p0
.end method

.method private static synthetic lambda$getBulletFont$2(Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextParagraphProperties;)Z
    .locals 1

    invoke-interface {p0}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextParagraphProperties;->isSetBuFont()Z

    move-result v0

    if-nez v0, :cond_1

    invoke-interface {p0}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextParagraphProperties;->isSetBuFontTx()Z

    move-result p0

    if-eqz p0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p0, 0x1

    :goto_1
    return p0
.end method

.method private static synthetic lambda$getBulletFont$3(Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextParagraphProperties;)Lorg/apache/poi/xddf/usermodel/text/XDDFFont;
    .locals 1

    new-instance v0, Lorg/apache/poi/xddf/usermodel/text/XDDFParagraphBulletProperties;

    invoke-direct {v0, p0}, Lorg/apache/poi/xddf/usermodel/text/XDDFParagraphBulletProperties;-><init>(Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextParagraphProperties;)V

    invoke-virtual {v0}, Lorg/apache/poi/xddf/usermodel/text/XDDFParagraphBulletProperties;->getBulletFont()Lorg/apache/poi/xddf/usermodel/text/XDDFFont;

    move-result-object p0

    return-object p0
.end method

.method private static synthetic lambda$getBulletSize$4(Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextParagraphProperties;)Z
    .locals 1

    invoke-interface {p0}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextParagraphProperties;->isSetBuSzPct()Z

    move-result v0

    if-nez v0, :cond_1

    invoke-interface {p0}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextParagraphProperties;->isSetBuSzPts()Z

    move-result v0

    if-nez v0, :cond_1

    invoke-interface {p0}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextParagraphProperties;->isSetBuSzTx()Z

    move-result p0

    if-eqz p0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p0, 0x1

    :goto_1
    return p0
.end method

.method private static synthetic lambda$getBulletSize$5(Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextParagraphProperties;)Lorg/apache/poi/xddf/usermodel/text/XDDFBulletSize;
    .locals 1

    new-instance v0, Lorg/apache/poi/xddf/usermodel/text/XDDFParagraphBulletProperties;

    invoke-direct {v0, p0}, Lorg/apache/poi/xddf/usermodel/text/XDDFParagraphBulletProperties;-><init>(Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextParagraphProperties;)V

    invoke-virtual {v0}, Lorg/apache/poi/xddf/usermodel/text/XDDFParagraphBulletProperties;->getBulletSize()Lorg/apache/poi/xddf/usermodel/text/XDDFBulletSize;

    move-result-object p0

    return-object p0
.end method

.method private static synthetic lambda$getBulletStyle$6(Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextParagraphProperties;)Z
    .locals 1

    invoke-interface {p0}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextParagraphProperties;->isSetBuAutoNum()Z

    move-result v0

    if-nez v0, :cond_1

    invoke-interface {p0}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextParagraphProperties;->isSetBuBlip()Z

    move-result v0

    if-nez v0, :cond_1

    invoke-interface {p0}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextParagraphProperties;->isSetBuChar()Z

    move-result v0

    if-nez v0, :cond_1

    invoke-interface {p0}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextParagraphProperties;->isSetBuNone()Z

    move-result p0

    if-eqz p0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p0, 0x1

    :goto_1
    return p0
.end method

.method private static synthetic lambda$getBulletStyle$7(Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextParagraphProperties;)Lorg/apache/poi/xddf/usermodel/text/XDDFBulletStyle;
    .locals 1

    new-instance v0, Lorg/apache/poi/xddf/usermodel/text/XDDFParagraphBulletProperties;

    invoke-direct {v0, p0}, Lorg/apache/poi/xddf/usermodel/text/XDDFParagraphBulletProperties;-><init>(Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextParagraphProperties;)V

    invoke-virtual {v0}, Lorg/apache/poi/xddf/usermodel/text/XDDFParagraphBulletProperties;->getBulletStyle()Lorg/apache/poi/xddf/usermodel/text/XDDFBulletStyle;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public addAfterLastRunProperties()Lorg/apache/poi/xddf/usermodel/text/XDDFRunProperties;
    .locals 1

    iget-object v0, p0, Lorg/apache/poi/xddf/usermodel/text/XDDFTextParagraph;->_p:Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextParagraph;

    invoke-interface {v0}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextParagraph;->isSetEndParaRPr()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lorg/apache/poi/xddf/usermodel/text/XDDFTextParagraph;->_p:Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextParagraph;

    invoke-interface {v0}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextParagraph;->addNewEndParaRPr()Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextCharacterProperties;

    :cond_0
    invoke-virtual {p0}, Lorg/apache/poi/xddf/usermodel/text/XDDFTextParagraph;->getAfterLastRunProperties()Lorg/apache/poi/xddf/usermodel/text/XDDFRunProperties;

    move-result-object p0

    return-object p0
.end method

.method public addDefaultRunProperties()Lorg/apache/poi/xddf/usermodel/text/XDDFRunProperties;
    .locals 0

    invoke-direct {p0}, Lorg/apache/poi/xddf/usermodel/text/XDDFTextParagraph;->getOrCreateProperties()Lorg/apache/poi/xddf/usermodel/text/XDDFParagraphProperties;

    move-result-object p0

    invoke-virtual {p0}, Lorg/apache/poi/xddf/usermodel/text/XDDFParagraphProperties;->addDefaultRunProperties()Lorg/apache/poi/xddf/usermodel/text/XDDFRunProperties;

    move-result-object p0

    return-object p0
.end method

.method public addTabStop()Lorg/apache/poi/xddf/usermodel/text/XDDFTabStop;
    .locals 0

    invoke-direct {p0}, Lorg/apache/poi/xddf/usermodel/text/XDDFTextParagraph;->getOrCreateProperties()Lorg/apache/poi/xddf/usermodel/text/XDDFParagraphProperties;

    move-result-object p0

    invoke-virtual {p0}, Lorg/apache/poi/xddf/usermodel/text/XDDFParagraphProperties;->addTabStop()Lorg/apache/poi/xddf/usermodel/text/XDDFTabStop;

    move-result-object p0

    return-object p0
.end method

.method public appendField(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/apache/poi/xddf/usermodel/text/XDDFTextRun;
    .locals 1

    iget-object v0, p0, Lorg/apache/poi/xddf/usermodel/text/XDDFTextParagraph;->_p:Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextParagraph;

    invoke-interface {v0}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextParagraph;->addNewFld()Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextField;

    move-result-object v0

    invoke-interface {v0, p1}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextField;->setId(Ljava/lang/String;)V

    invoke-interface {v0, p2}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextField;->setType(Ljava/lang/String;)V

    invoke-interface {v0, p3}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextField;->setT(Ljava/lang/String;)V

    invoke-interface {v0}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextField;->addNewRPr()Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextCharacterProperties;

    move-result-object p1

    invoke-static {}, Lorg/apache/poi/util/LocaleUtil;->getUserLocale()Ljava/util/Locale;

    move-result-object p2

    invoke-virtual {p2}, Ljava/util/Locale;->toLanguageTag()Ljava/lang/String;

    move-result-object p2

    invoke-interface {p1, p2}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextCharacterProperties;->setLang(Ljava/lang/String;)V

    new-instance p1, Lorg/apache/poi/xddf/usermodel/text/XDDFTextRun;

    invoke-direct {p1, v0, p0}, Lorg/apache/poi/xddf/usermodel/text/XDDFTextRun;-><init>(Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextField;Lorg/apache/poi/xddf/usermodel/text/XDDFTextParagraph;)V

    iget-object p0, p0, Lorg/apache/poi/xddf/usermodel/text/XDDFTextParagraph;->_runs:Ljava/util/ArrayList;

    invoke-virtual {p0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-object p1
.end method

.method public appendLineBreak()Lorg/apache/poi/xddf/usermodel/text/XDDFTextRun;
    .locals 3

    iget-object v0, p0, Lorg/apache/poi/xddf/usermodel/text/XDDFTextParagraph;->_p:Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextParagraph;

    invoke-interface {v0}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextParagraph;->addNewBr()Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextLineBreak;

    move-result-object v0

    iget-object v1, p0, Lorg/apache/poi/xddf/usermodel/text/XDDFTextParagraph;->_runs:Ljava/util/ArrayList;

    if-eqz v1, :cond_2

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v2

    invoke-interface {v1, v2}, Ljava/util/List;->listIterator(I)Ljava/util/ListIterator;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v2

    invoke-interface {v1, v2}, Ljava/util/List;->listIterator(I)Ljava/util/ListIterator;

    move-result-object v1

    :cond_0
    invoke-interface {v1}, Ljava/util/ListIterator;->hasPrevious()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/ListIterator;->previous()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/apache/poi/xddf/usermodel/text/XDDFTextRun;

    invoke-virtual {v2}, Lorg/apache/poi/xddf/usermodel/text/XDDFTextRun;->getProperties()Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextCharacterProperties;

    move-result-object v2

    if-eqz v2, :cond_0

    invoke-interface {v2}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextCharacterProperties;->copy()Lorg/apache/xmlbeans/XmlObject;

    move-result-object v1

    check-cast v1, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextCharacterProperties;

    invoke-interface {v0, v1}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextLineBreak;->setRPr(Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextCharacterProperties;)V

    :cond_1
    new-instance v1, Lorg/apache/poi/xddf/usermodel/text/XDDFTextRun;

    invoke-direct {v1, v0, p0}, Lorg/apache/poi/xddf/usermodel/text/XDDFTextRun;-><init>(Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextLineBreak;Lorg/apache/poi/xddf/usermodel/text/XDDFTextParagraph;)V

    iget-object p0, p0, Lorg/apache/poi/xddf/usermodel/text/XDDFTextParagraph;->_runs:Ljava/util/ArrayList;

    invoke-virtual {p0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-object v1

    :cond_2
    new-instance p0, Ljava/lang/NullPointerException;

    const-string v0, "List must not be null."

    invoke-direct {p0, v0}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public appendRegularRun(Ljava/lang/String;)Lorg/apache/poi/xddf/usermodel/text/XDDFTextRun;
    .locals 2

    iget-object v0, p0, Lorg/apache/poi/xddf/usermodel/text/XDDFTextParagraph;->_p:Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextParagraph;

    invoke-interface {v0}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextParagraph;->addNewR()Lorg/openxmlformats/schemas/drawingml/x2006/main/CTRegularTextRun;

    move-result-object v0

    invoke-interface {v0, p1}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTRegularTextRun;->setT(Ljava/lang/String;)V

    invoke-interface {v0}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTRegularTextRun;->addNewRPr()Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextCharacterProperties;

    move-result-object p1

    invoke-static {}, Lorg/apache/poi/util/LocaleUtil;->getUserLocale()Ljava/util/Locale;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/Locale;->toLanguageTag()Ljava/lang/String;

    move-result-object v1

    invoke-interface {p1, v1}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextCharacterProperties;->setLang(Ljava/lang/String;)V

    new-instance p1, Lorg/apache/poi/xddf/usermodel/text/XDDFTextRun;

    invoke-direct {p1, v0, p0}, Lorg/apache/poi/xddf/usermodel/text/XDDFTextRun;-><init>(Lorg/openxmlformats/schemas/drawingml/x2006/main/CTRegularTextRun;Lorg/apache/poi/xddf/usermodel/text/XDDFTextParagraph;)V

    iget-object p0, p0, Lorg/apache/poi/xddf/usermodel/text/XDDFTextParagraph;->_runs:Ljava/util/ArrayList;

    invoke-virtual {p0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-object p1
.end method

.method public countTabStops()I
    .locals 1

    iget-object v0, p0, Lorg/apache/poi/xddf/usermodel/text/XDDFTextParagraph;->_p:Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextParagraph;

    invoke-interface {v0}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextParagraph;->isSetPPr()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lorg/apache/poi/xddf/usermodel/text/XDDFTextParagraph;->getProperties()Lorg/apache/poi/xddf/usermodel/text/XDDFParagraphProperties;

    move-result-object p0

    invoke-virtual {p0}, Lorg/apache/poi/xddf/usermodel/text/XDDFParagraphProperties;->countTabStops()I

    move-result p0

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public findDefinedParagraphProperty(Ljava/util/function/Predicate;Ljava/util/function/Function;)Ljava/util/Optional;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<R:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/function/Predicate<",
            "Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextParagraphProperties;",
            ">;",
            "Ljava/util/function/Function<",
            "Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextParagraphProperties;",
            "TR;>;)",
            "Ljava/util/Optional<",
            "TR;>;"
        }
    .end annotation

    iget-object v0, p0, Lorg/apache/poi/xddf/usermodel/text/XDDFTextParagraph;->_p:Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextParagraph;

    .line 1
    invoke-interface {v0}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextParagraph;->isSetPPr()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lorg/apache/poi/xddf/usermodel/text/XDDFTextParagraph;->_p:Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextParagraph;

    .line 2
    invoke-interface {v0}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextParagraph;->getPPr()Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextParagraphProperties;

    move-result-object v0

    invoke-interface {v0}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextParagraphProperties;->isSetLvl()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/apache/poi/xddf/usermodel/text/XDDFTextParagraph;->_p:Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextParagraph;

    invoke-interface {v0}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextParagraph;->getPPr()Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextParagraphProperties;

    move-result-object v0

    invoke-interface {v0}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextParagraphProperties;->getLvl()I

    move-result v0

    add-int/lit8 v1, v0, 0x1

    .line 3
    :cond_0
    invoke-direct {p0, p1, p2, v1}, Lorg/apache/poi/xddf/usermodel/text/XDDFTextParagraph;->findDefinedParagraphProperty(Ljava/util/function/Predicate;Ljava/util/function/Function;I)Ljava/util/Optional;

    move-result-object p0

    return-object p0

    :cond_1
    iget-object p0, p0, Lorg/apache/poi/xddf/usermodel/text/XDDFTextParagraph;->_parent:Lorg/apache/poi/xddf/usermodel/text/XDDFTextBody;

    .line 4
    invoke-virtual {p0, p1, p2, v1}, Lorg/apache/poi/xddf/usermodel/text/XDDFTextBody;->findDefinedParagraphProperty(Ljava/util/function/Predicate;Ljava/util/function/Function;I)Ljava/util/Optional;

    move-result-object p0

    return-object p0
.end method

.method public findDefinedRunProperty(Ljava/util/function/Predicate;Ljava/util/function/Function;)Ljava/util/Optional;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<R:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/function/Predicate<",
            "Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextCharacterProperties;",
            ">;",
            "Ljava/util/function/Function<",
            "Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextCharacterProperties;",
            "TR;>;)",
            "Ljava/util/Optional<",
            "TR;>;"
        }
    .end annotation

    iget-object v0, p0, Lorg/apache/poi/xddf/usermodel/text/XDDFTextParagraph;->_p:Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextParagraph;

    .line 1
    invoke-interface {v0}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextParagraph;->isSetPPr()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lorg/apache/poi/xddf/usermodel/text/XDDFTextParagraph;->_p:Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextParagraph;

    .line 2
    invoke-interface {v0}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextParagraph;->getPPr()Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextParagraphProperties;

    move-result-object v0

    invoke-interface {v0}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextParagraphProperties;->isSetLvl()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/apache/poi/xddf/usermodel/text/XDDFTextParagraph;->_p:Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextParagraph;

    invoke-interface {v0}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextParagraph;->getPPr()Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextParagraphProperties;

    move-result-object v0

    invoke-interface {v0}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextParagraphProperties;->getLvl()I

    move-result v0

    add-int/lit8 v1, v0, 0x1

    .line 3
    :cond_0
    invoke-direct {p0, p1, p2, v1}, Lorg/apache/poi/xddf/usermodel/text/XDDFTextParagraph;->findDefinedRunProperty(Ljava/util/function/Predicate;Ljava/util/function/Function;I)Ljava/util/Optional;

    move-result-object p0

    return-object p0

    :cond_1
    iget-object p0, p0, Lorg/apache/poi/xddf/usermodel/text/XDDFTextParagraph;->_parent:Lorg/apache/poi/xddf/usermodel/text/XDDFTextBody;

    .line 4
    invoke-virtual {p0, p1, p2, v1}, Lorg/apache/poi/xddf/usermodel/text/XDDFTextBody;->findDefinedRunProperty(Ljava/util/function/Predicate;Ljava/util/function/Function;I)Ljava/util/Optional;

    move-result-object p0

    return-object p0
.end method

.method public getAfterLastRunProperties()Lorg/apache/poi/xddf/usermodel/text/XDDFRunProperties;
    .locals 1

    iget-object v0, p0, Lorg/apache/poi/xddf/usermodel/text/XDDFTextParagraph;->_p:Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextParagraph;

    invoke-interface {v0}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextParagraph;->isSetEndParaRPr()Z

    move-result v0

    if-eqz v0, :cond_0

    new-instance v0, Lorg/apache/poi/xddf/usermodel/text/XDDFRunProperties;

    iget-object p0, p0, Lorg/apache/poi/xddf/usermodel/text/XDDFTextParagraph;->_p:Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextParagraph;

    invoke-interface {p0}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextParagraph;->getEndParaRPr()Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextCharacterProperties;

    move-result-object p0

    invoke-direct {v0, p0}, Lorg/apache/poi/xddf/usermodel/text/XDDFRunProperties;-><init>(Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextCharacterProperties;)V

    return-object v0

    :cond_0
    const/4 p0, 0x0

    return-object p0
.end method

.method public getBulletColor()Lorg/apache/poi/xddf/usermodel/XDDFColor;
    .locals 3

    new-instance v0, Lh4/g;

    const/16 v1, 0x8

    invoke-direct {v0, v1}, Lh4/g;-><init>(I)V

    new-instance v1, Lg5/l;

    const/16 v2, 0x11

    invoke-direct {v1, v2}, Lg5/l;-><init>(I)V

    invoke-virtual {p0, v0, v1}, Lorg/apache/poi/xddf/usermodel/text/XDDFTextParagraph;->findDefinedParagraphProperty(Ljava/util/function/Predicate;Ljava/util/function/Function;)Ljava/util/Optional;

    move-result-object p0

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Ljava/util/Optional;->orElse(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lorg/apache/poi/xddf/usermodel/XDDFColor;

    return-object p0
.end method

.method public getBulletFont()Lorg/apache/poi/xddf/usermodel/text/XDDFFont;
    .locals 3

    new-instance v0, Lf/g;

    const/4 v1, 0x6

    invoke-direct {v0, v1}, Lf/g;-><init>(I)V

    new-instance v1, Lorg/apache/poi/ddf/f0;

    const/16 v2, 0xe

    invoke-direct {v1, v2}, Lorg/apache/poi/ddf/f0;-><init>(I)V

    invoke-virtual {p0, v0, v1}, Lorg/apache/poi/xddf/usermodel/text/XDDFTextParagraph;->findDefinedParagraphProperty(Ljava/util/function/Predicate;Ljava/util/function/Function;)Ljava/util/Optional;

    move-result-object p0

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Ljava/util/Optional;->orElse(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lorg/apache/poi/xddf/usermodel/text/XDDFFont;

    return-object p0
.end method

.method public getBulletProperties()Lorg/apache/poi/xddf/usermodel/text/XDDFParagraphBulletProperties;
    .locals 1

    iget-object v0, p0, Lorg/apache/poi/xddf/usermodel/text/XDDFTextParagraph;->_p:Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextParagraph;

    invoke-interface {v0}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextParagraph;->isSetPPr()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lorg/apache/poi/xddf/usermodel/text/XDDFTextParagraph;->getProperties()Lorg/apache/poi/xddf/usermodel/text/XDDFParagraphProperties;

    move-result-object p0

    invoke-virtual {p0}, Lorg/apache/poi/xddf/usermodel/text/XDDFParagraphProperties;->getBulletProperties()Lorg/apache/poi/xddf/usermodel/text/XDDFParagraphBulletProperties;

    move-result-object p0

    return-object p0

    :cond_0
    const/4 p0, 0x0

    return-object p0
.end method

.method public getBulletSize()Lorg/apache/poi/xddf/usermodel/text/XDDFBulletSize;
    .locals 3

    new-instance v0, Lf/g;

    const/16 v1, 0x8

    invoke-direct {v0, v1}, Lf/g;-><init>(I)V

    new-instance v1, Lorg/apache/poi/ddf/f0;

    const/16 v2, 0x14

    invoke-direct {v1, v2}, Lorg/apache/poi/ddf/f0;-><init>(I)V

    invoke-virtual {p0, v0, v1}, Lorg/apache/poi/xddf/usermodel/text/XDDFTextParagraph;->findDefinedParagraphProperty(Ljava/util/function/Predicate;Ljava/util/function/Function;)Ljava/util/Optional;

    move-result-object p0

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Ljava/util/Optional;->orElse(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lorg/apache/poi/xddf/usermodel/text/XDDFBulletSize;

    return-object p0
.end method

.method public getBulletStyle()Lorg/apache/poi/xddf/usermodel/text/XDDFBulletStyle;
    .locals 3

    new-instance v0, Lh4/g;

    const/16 v1, 0xd

    invoke-direct {v0, v1}, Lh4/g;-><init>(I)V

    new-instance v1, Lg5/l;

    const/16 v2, 0x16

    invoke-direct {v1, v2}, Lg5/l;-><init>(I)V

    invoke-virtual {p0, v0, v1}, Lorg/apache/poi/xddf/usermodel/text/XDDFTextParagraph;->findDefinedParagraphProperty(Ljava/util/function/Predicate;Ljava/util/function/Function;)Ljava/util/Optional;

    move-result-object p0

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Ljava/util/Optional;->orElse(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lorg/apache/poi/xddf/usermodel/text/XDDFBulletStyle;

    return-object p0
.end method

.method public getDefaultRunProperties()Lorg/apache/poi/xddf/usermodel/text/XDDFRunProperties;
    .locals 1

    iget-object v0, p0, Lorg/apache/poi/xddf/usermodel/text/XDDFTextParagraph;->_p:Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextParagraph;

    invoke-interface {v0}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextParagraph;->isSetPPr()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lorg/apache/poi/xddf/usermodel/text/XDDFTextParagraph;->getProperties()Lorg/apache/poi/xddf/usermodel/text/XDDFParagraphProperties;

    move-result-object p0

    invoke-virtual {p0}, Lorg/apache/poi/xddf/usermodel/text/XDDFParagraphProperties;->getDefaultRunProperties()Lorg/apache/poi/xddf/usermodel/text/XDDFRunProperties;

    move-result-object p0

    return-object p0

    :cond_0
    const/4 p0, 0x0

    return-object p0
.end method

.method public getDefaultTabSize()Ljava/lang/Double;
    .locals 3

    new-instance v0, Lh4/g;

    const/16 v1, 0xc

    invoke-direct {v0, v1}, Lh4/g;-><init>(I)V

    new-instance v1, Lg5/l;

    const/16 v2, 0x15

    invoke-direct {v1, v2}, Lg5/l;-><init>(I)V

    invoke-virtual {p0, v0, v1}, Lorg/apache/poi/xddf/usermodel/text/XDDFTextParagraph;->findDefinedParagraphProperty(Ljava/util/function/Predicate;Ljava/util/function/Function;)Ljava/util/Optional;

    move-result-object p0

    new-instance v0, Lorg/apache/poi/ddf/f0;

    const/16 v1, 0x13

    invoke-direct {v0, v1}, Lorg/apache/poi/ddf/f0;-><init>(I)V

    invoke-virtual {p0, v0}, Ljava/util/Optional;->map(Ljava/util/function/Function;)Ljava/util/Optional;

    move-result-object p0

    new-instance v0, Lorg/apache/commons/compress/archivers/zip/x0;

    invoke-direct {v0, v2}, Lorg/apache/commons/compress/archivers/zip/x0;-><init>(I)V

    invoke-virtual {p0, v0}, Ljava/util/Optional;->map(Ljava/util/function/Function;)Ljava/util/Optional;

    move-result-object p0

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Ljava/util/Optional;->orElse(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Double;

    return-object p0
.end method

.method public getFontAlignment()Lorg/apache/poi/xddf/usermodel/text/FontAlignment;
    .locals 3

    new-instance v0, Lh4/g;

    const/16 v1, 0xa

    invoke-direct {v0, v1}, Lh4/g;-><init>(I)V

    new-instance v1, Lg5/l;

    const/16 v2, 0x13

    invoke-direct {v1, v2}, Lg5/l;-><init>(I)V

    invoke-virtual {p0, v0, v1}, Lorg/apache/poi/xddf/usermodel/text/XDDFTextParagraph;->findDefinedParagraphProperty(Ljava/util/function/Predicate;Ljava/util/function/Function;)Ljava/util/Optional;

    move-result-object p0

    new-instance v0, Lorg/apache/poi/ddf/f0;

    const/16 v1, 0x11

    invoke-direct {v0, v1}, Lorg/apache/poi/ddf/f0;-><init>(I)V

    invoke-virtual {p0, v0}, Ljava/util/Optional;->map(Ljava/util/function/Function;)Ljava/util/Optional;

    move-result-object p0

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Ljava/util/Optional;->orElse(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lorg/apache/poi/xddf/usermodel/text/FontAlignment;

    return-object p0
.end method

.method public getIndentation()Ljava/lang/Double;
    .locals 3

    new-instance v0, Lo1/c;

    const/16 v1, 0x9

    invoke-direct {v0, v1}, Lo1/c;-><init>(I)V

    new-instance v1, Lorg/apache/commons/compress/archivers/zip/x0;

    const/16 v2, 0x18

    invoke-direct {v1, v2}, Lorg/apache/commons/compress/archivers/zip/x0;-><init>(I)V

    invoke-virtual {p0, v0, v1}, Lorg/apache/poi/xddf/usermodel/text/XDDFTextParagraph;->findDefinedParagraphProperty(Ljava/util/function/Predicate;Ljava/util/function/Function;)Ljava/util/Optional;

    move-result-object p0

    new-instance v0, Lg5/l;

    invoke-direct {v0, v2}, Lg5/l;-><init>(I)V

    invoke-virtual {p0, v0}, Ljava/util/Optional;->map(Ljava/util/function/Function;)Ljava/util/Optional;

    move-result-object p0

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Ljava/util/Optional;->orElse(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Double;

    return-object p0
.end method

.method public getIndentationLevel()I
    .locals 1

    iget-object v0, p0, Lorg/apache/poi/xddf/usermodel/text/XDDFTextParagraph;->_p:Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextParagraph;

    invoke-interface {v0}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextParagraph;->isSetPPr()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lorg/apache/poi/xddf/usermodel/text/XDDFTextParagraph;->getProperties()Lorg/apache/poi/xddf/usermodel/text/XDDFParagraphProperties;

    move-result-object p0

    invoke-virtual {p0}, Lorg/apache/poi/xddf/usermodel/text/XDDFParagraphProperties;->getLevel()I

    move-result p0

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public getLineSpacing()Lorg/apache/poi/xddf/usermodel/text/XDDFSpacing;
    .locals 3

    new-instance v0, Lo1/c;

    const/16 v1, 0xa

    invoke-direct {v0, v1}, Lo1/c;-><init>(I)V

    new-instance v1, Lorg/apache/commons/compress/archivers/zip/x0;

    const/16 v2, 0x19

    invoke-direct {v1, v2}, Lorg/apache/commons/compress/archivers/zip/x0;-><init>(I)V

    invoke-virtual {p0, v0, v1}, Lorg/apache/poi/xddf/usermodel/text/XDDFTextParagraph;->findDefinedParagraphProperty(Ljava/util/function/Predicate;Ljava/util/function/Function;)Ljava/util/Optional;

    move-result-object v0

    new-instance v1, Lorg/apache/poi/xddf/usermodel/text/h;

    const/4 v2, 0x2

    invoke-direct {v1, p0, v2}, Lorg/apache/poi/xddf/usermodel/text/h;-><init>(Lorg/apache/poi/xddf/usermodel/text/XDDFTextParagraph;I)V

    invoke-virtual {v0, v1}, Ljava/util/Optional;->map(Ljava/util/function/Function;)Ljava/util/Optional;

    move-result-object p0

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Ljava/util/Optional;->orElse(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lorg/apache/poi/xddf/usermodel/text/XDDFSpacing;

    return-object p0
.end method

.method public getMarginLeft()Ljava/lang/Double;
    .locals 3

    new-instance v0, Lh4/g;

    const/16 v1, 0xb

    invoke-direct {v0, v1}, Lh4/g;-><init>(I)V

    new-instance v1, Lg5/l;

    const/16 v2, 0x14

    invoke-direct {v1, v2}, Lg5/l;-><init>(I)V

    invoke-virtual {p0, v0, v1}, Lorg/apache/poi/xddf/usermodel/text/XDDFTextParagraph;->findDefinedParagraphProperty(Ljava/util/function/Predicate;Ljava/util/function/Function;)Ljava/util/Optional;

    move-result-object p0

    new-instance v0, Lorg/apache/poi/ddf/f0;

    const/16 v1, 0x12

    invoke-direct {v0, v1}, Lorg/apache/poi/ddf/f0;-><init>(I)V

    invoke-virtual {p0, v0}, Ljava/util/Optional;->map(Ljava/util/function/Function;)Ljava/util/Optional;

    move-result-object p0

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Ljava/util/Optional;->orElse(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Double;

    return-object p0
.end method

.method public getMarginRight()Ljava/lang/Double;
    .locals 3

    new-instance v0, Lh4/g;

    const/16 v1, 0x9

    invoke-direct {v0, v1}, Lh4/g;-><init>(I)V

    new-instance v1, Lg5/l;

    const/16 v2, 0x12

    invoke-direct {v1, v2}, Lg5/l;-><init>(I)V

    invoke-virtual {p0, v0, v1}, Lorg/apache/poi/xddf/usermodel/text/XDDFTextParagraph;->findDefinedParagraphProperty(Ljava/util/function/Predicate;Ljava/util/function/Function;)Ljava/util/Optional;

    move-result-object p0

    new-instance v0, Lorg/apache/poi/ddf/f0;

    const/16 v1, 0x10

    invoke-direct {v0, v1}, Lorg/apache/poi/ddf/f0;-><init>(I)V

    invoke-virtual {p0, v0}, Ljava/util/Optional;->map(Ljava/util/function/Function;)Ljava/util/Optional;

    move-result-object p0

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Ljava/util/Optional;->orElse(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Double;

    return-object p0
.end method

.method public getOrCreateBulletProperties()Lorg/apache/poi/xddf/usermodel/text/XDDFParagraphBulletProperties;
    .locals 0

    invoke-direct {p0}, Lorg/apache/poi/xddf/usermodel/text/XDDFTextParagraph;->getOrCreateProperties()Lorg/apache/poi/xddf/usermodel/text/XDDFParagraphProperties;

    move-result-object p0

    invoke-virtual {p0}, Lorg/apache/poi/xddf/usermodel/text/XDDFParagraphProperties;->getBulletProperties()Lorg/apache/poi/xddf/usermodel/text/XDDFParagraphBulletProperties;

    move-result-object p0

    return-object p0
.end method

.method public getParentBody()Lorg/apache/poi/xddf/usermodel/text/XDDFTextBody;
    .locals 0

    iget-object p0, p0, Lorg/apache/poi/xddf/usermodel/text/XDDFTextParagraph;->_parent:Lorg/apache/poi/xddf/usermodel/text/XDDFTextBody;

    return-object p0
.end method

.method public getSpaceAfter()Lorg/apache/poi/xddf/usermodel/text/XDDFSpacing;
    .locals 3

    new-instance v0, Lo1/c;

    const/4 v1, 0x4

    invoke-direct {v0, v1}, Lo1/c;-><init>(I)V

    new-instance v1, Lorg/apache/commons/compress/archivers/zip/x0;

    const/16 v2, 0x12

    invoke-direct {v1, v2}, Lorg/apache/commons/compress/archivers/zip/x0;-><init>(I)V

    invoke-virtual {p0, v0, v1}, Lorg/apache/poi/xddf/usermodel/text/XDDFTextParagraph;->findDefinedParagraphProperty(Ljava/util/function/Predicate;Ljava/util/function/Function;)Ljava/util/Optional;

    move-result-object v0

    new-instance v1, Lorg/apache/poi/xddf/usermodel/text/h;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Lorg/apache/poi/xddf/usermodel/text/h;-><init>(Lorg/apache/poi/xddf/usermodel/text/XDDFTextParagraph;I)V

    invoke-virtual {v0, v1}, Ljava/util/Optional;->map(Ljava/util/function/Function;)Ljava/util/Optional;

    move-result-object p0

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Ljava/util/Optional;->orElse(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lorg/apache/poi/xddf/usermodel/text/XDDFSpacing;

    return-object p0
.end method

.method public getSpaceBefore()Lorg/apache/poi/xddf/usermodel/text/XDDFSpacing;
    .locals 3

    new-instance v0, Lo1/c;

    const/16 v1, 0x8

    invoke-direct {v0, v1}, Lo1/c;-><init>(I)V

    new-instance v1, Lorg/apache/commons/compress/archivers/zip/x0;

    const/16 v2, 0x17

    invoke-direct {v1, v2}, Lorg/apache/commons/compress/archivers/zip/x0;-><init>(I)V

    invoke-virtual {p0, v0, v1}, Lorg/apache/poi/xddf/usermodel/text/XDDFTextParagraph;->findDefinedParagraphProperty(Ljava/util/function/Predicate;Ljava/util/function/Function;)Ljava/util/Optional;

    move-result-object v0

    new-instance v1, Lorg/apache/poi/xddf/usermodel/text/h;

    const/4 v2, 0x1

    invoke-direct {v1, p0, v2}, Lorg/apache/poi/xddf/usermodel/text/h;-><init>(Lorg/apache/poi/xddf/usermodel/text/XDDFTextParagraph;I)V

    invoke-virtual {v0, v1}, Ljava/util/Optional;->map(Ljava/util/function/Function;)Ljava/util/Optional;

    move-result-object p0

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Ljava/util/Optional;->orElse(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lorg/apache/poi/xddf/usermodel/text/XDDFSpacing;

    return-object p0
.end method

.method public getTabStop(I)Lorg/apache/poi/xddf/usermodel/text/XDDFTabStop;
    .locals 1

    iget-object v0, p0, Lorg/apache/poi/xddf/usermodel/text/XDDFTextParagraph;->_p:Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextParagraph;

    invoke-interface {v0}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextParagraph;->isSetPPr()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lorg/apache/poi/xddf/usermodel/text/XDDFTextParagraph;->getProperties()Lorg/apache/poi/xddf/usermodel/text/XDDFParagraphProperties;

    move-result-object p0

    invoke-virtual {p0, p1}, Lorg/apache/poi/xddf/usermodel/text/XDDFParagraphProperties;->getTabStop(I)Lorg/apache/poi/xddf/usermodel/text/XDDFTabStop;

    move-result-object p0

    return-object p0

    :cond_0
    const/4 p0, 0x0

    return-object p0
.end method

.method public getTabStops()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lorg/apache/poi/xddf/usermodel/text/XDDFTabStop;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lorg/apache/poi/xddf/usermodel/text/XDDFTextParagraph;->_p:Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextParagraph;

    invoke-interface {v0}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextParagraph;->isSetPPr()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lorg/apache/poi/xddf/usermodel/text/XDDFTextParagraph;->getProperties()Lorg/apache/poi/xddf/usermodel/text/XDDFParagraphProperties;

    move-result-object p0

    invoke-virtual {p0}, Lorg/apache/poi/xddf/usermodel/text/XDDFParagraphProperties;->getTabStops()Ljava/util/List;

    move-result-object p0

    return-object p0

    :cond_0
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method public getText()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object p0, p0, Lorg/apache/poi/xddf/usermodel/text/XDDFTextParagraph;->_runs:Ljava/util/ArrayList;

    invoke-virtual {p0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/apache/poi/xddf/usermodel/text/XDDFTextRun;

    invoke-virtual {v1}, Lorg/apache/poi/xddf/usermodel/text/XDDFTextRun;->getText()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    :cond_0
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public getTextAlignment()Lorg/apache/poi/xddf/usermodel/text/TextAlignment;
    .locals 3

    new-instance v0, Lo1/c;

    const/4 v1, 0x7

    invoke-direct {v0, v1}, Lo1/c;-><init>(I)V

    new-instance v1, Lorg/apache/commons/compress/archivers/zip/x0;

    const/16 v2, 0x16

    invoke-direct {v1, v2}, Lorg/apache/commons/compress/archivers/zip/x0;-><init>(I)V

    invoke-virtual {p0, v0, v1}, Lorg/apache/poi/xddf/usermodel/text/XDDFTextParagraph;->findDefinedParagraphProperty(Ljava/util/function/Predicate;Ljava/util/function/Function;)Ljava/util/Optional;

    move-result-object p0

    new-instance v0, Lg5/l;

    const/16 v1, 0x17

    invoke-direct {v0, v1}, Lg5/l;-><init>(I)V

    invoke-virtual {p0, v0}, Ljava/util/Optional;->map(Ljava/util/function/Function;)Ljava/util/Optional;

    move-result-object p0

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Ljava/util/Optional;->orElse(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lorg/apache/poi/xddf/usermodel/text/TextAlignment;

    return-object p0
.end method

.method public getTextRuns()Ljava/util/List;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lorg/apache/poi/xddf/usermodel/text/XDDFTextRun;",
            ">;"
        }
    .end annotation

    iget-object p0, p0, Lorg/apache/poi/xddf/usermodel/text/XDDFTextParagraph;->_runs:Ljava/util/ArrayList;

    return-object p0
.end method

.method public hasEastAsianLineBreak()Z
    .locals 3

    new-instance v0, Lf/g;

    const/4 v1, 0x7

    invoke-direct {v0, v1}, Lf/g;-><init>(I)V

    new-instance v1, Lorg/apache/poi/ddf/f0;

    const/16 v2, 0xf

    invoke-direct {v1, v2}, Lorg/apache/poi/ddf/f0;-><init>(I)V

    invoke-virtual {p0, v0, v1}, Lorg/apache/poi/xddf/usermodel/text/XDDFTextParagraph;->findDefinedParagraphProperty(Ljava/util/function/Predicate;Ljava/util/function/Function;)Ljava/util/Optional;

    move-result-object p0

    sget-object v0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-virtual {p0, v0}, Ljava/util/Optional;->orElse(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Boolean;

    invoke-virtual {p0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p0

    return p0
.end method

.method public hasHangingPunctuation()Z
    .locals 3

    new-instance v0, Lo1/c;

    const/16 v1, 0xb

    invoke-direct {v0, v1}, Lo1/c;-><init>(I)V

    new-instance v1, Lorg/apache/commons/compress/archivers/zip/x0;

    const/16 v2, 0x1a

    invoke-direct {v1, v2}, Lorg/apache/commons/compress/archivers/zip/x0;-><init>(I)V

    invoke-virtual {p0, v0, v1}, Lorg/apache/poi/xddf/usermodel/text/XDDFTextParagraph;->findDefinedParagraphProperty(Ljava/util/function/Predicate;Ljava/util/function/Function;)Ljava/util/Optional;

    move-result-object p0

    sget-object v0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-virtual {p0, v0}, Ljava/util/Optional;->orElse(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Boolean;

    invoke-virtual {p0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p0

    return p0
.end method

.method public hasLatinLineBreak()Z
    .locals 3

    new-instance v0, Lo1/c;

    const/4 v1, 0x6

    invoke-direct {v0, v1}, Lo1/c;-><init>(I)V

    new-instance v1, Lorg/apache/commons/compress/archivers/zip/x0;

    const/16 v2, 0x14

    invoke-direct {v1, v2}, Lorg/apache/commons/compress/archivers/zip/x0;-><init>(I)V

    invoke-virtual {p0, v0, v1}, Lorg/apache/poi/xddf/usermodel/text/XDDFTextParagraph;->findDefinedParagraphProperty(Ljava/util/function/Predicate;Ljava/util/function/Function;)Ljava/util/Optional;

    move-result-object p0

    sget-object v0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-virtual {p0, v0}, Ljava/util/Optional;->orElse(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Boolean;

    invoke-virtual {p0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p0

    return p0
.end method

.method public insertTabStop(I)Lorg/apache/poi/xddf/usermodel/text/XDDFTabStop;
    .locals 0

    invoke-direct {p0}, Lorg/apache/poi/xddf/usermodel/text/XDDFTextParagraph;->getOrCreateProperties()Lorg/apache/poi/xddf/usermodel/text/XDDFParagraphProperties;

    move-result-object p0

    invoke-virtual {p0, p1}, Lorg/apache/poi/xddf/usermodel/text/XDDFParagraphProperties;->insertTabStop(I)Lorg/apache/poi/xddf/usermodel/text/XDDFTabStop;

    move-result-object p0

    return-object p0
.end method

.method public isRightToLeft()Z
    .locals 3

    new-instance v0, Lo1/c;

    const/4 v1, 0x5

    invoke-direct {v0, v1}, Lo1/c;-><init>(I)V

    new-instance v1, Lorg/apache/commons/compress/archivers/zip/x0;

    const/16 v2, 0x13

    invoke-direct {v1, v2}, Lorg/apache/commons/compress/archivers/zip/x0;-><init>(I)V

    invoke-virtual {p0, v0, v1}, Lorg/apache/poi/xddf/usermodel/text/XDDFTextParagraph;->findDefinedParagraphProperty(Ljava/util/function/Predicate;Ljava/util/function/Function;)Ljava/util/Optional;

    move-result-object p0

    sget-object v0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-virtual {p0, v0}, Ljava/util/Optional;->orElse(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Boolean;

    invoke-virtual {p0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p0

    return p0
.end method

.method public iterator()Ljava/util/Iterator;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Iterator<",
            "Lorg/apache/poi/xddf/usermodel/text/XDDFTextRun;",
            ">;"
        }
    .end annotation

    iget-object p0, p0, Lorg/apache/poi/xddf/usermodel/text/XDDFTextParagraph;->_runs:Ljava/util/ArrayList;

    invoke-virtual {p0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p0

    return-object p0
.end method

.method public removeTabStop(I)V
    .locals 1

    iget-object v0, p0, Lorg/apache/poi/xddf/usermodel/text/XDDFTextParagraph;->_p:Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextParagraph;

    invoke-interface {v0}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextParagraph;->isSetPPr()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lorg/apache/poi/xddf/usermodel/text/XDDFTextParagraph;->getProperties()Lorg/apache/poi/xddf/usermodel/text/XDDFParagraphProperties;

    move-result-object p0

    invoke-virtual {p0, p1}, Lorg/apache/poi/xddf/usermodel/text/XDDFParagraphProperties;->removeTabStop(I)V

    :cond_0
    return-void
.end method

.method public setAfterLastRunProperties(Lorg/apache/poi/xddf/usermodel/text/XDDFRunProperties;)V
    .locals 0

    if-nez p1, :cond_0

    iget-object p1, p0, Lorg/apache/poi/xddf/usermodel/text/XDDFTextParagraph;->_p:Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextParagraph;

    invoke-interface {p1}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextParagraph;->isSetEndParaRPr()Z

    move-result p1

    if-eqz p1, :cond_1

    iget-object p0, p0, Lorg/apache/poi/xddf/usermodel/text/XDDFTextParagraph;->_p:Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextParagraph;

    invoke-interface {p0}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextParagraph;->unsetEndParaRPr()V

    goto :goto_0

    :cond_0
    iget-object p0, p0, Lorg/apache/poi/xddf/usermodel/text/XDDFTextParagraph;->_p:Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextParagraph;

    invoke-virtual {p1}, Lorg/apache/poi/xddf/usermodel/text/XDDFRunProperties;->getXmlObject()Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextCharacterProperties;

    move-result-object p1

    invoke-interface {p0, p1}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextParagraph;->setEndParaRPr(Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextCharacterProperties;)V

    :cond_1
    :goto_0
    return-void
.end method

.method public setBulletColor(Lorg/apache/poi/xddf/usermodel/XDDFColor;)V
    .locals 1

    if-nez p1, :cond_0

    iget-object v0, p0, Lorg/apache/poi/xddf/usermodel/text/XDDFTextParagraph;->_p:Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextParagraph;

    invoke-interface {v0}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextParagraph;->isSetPPr()Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    invoke-virtual {p0}, Lorg/apache/poi/xddf/usermodel/text/XDDFTextParagraph;->getOrCreateBulletProperties()Lorg/apache/poi/xddf/usermodel/text/XDDFParagraphBulletProperties;

    move-result-object p0

    invoke-virtual {p0, p1}, Lorg/apache/poi/xddf/usermodel/text/XDDFParagraphBulletProperties;->setBulletColor(Lorg/apache/poi/xddf/usermodel/XDDFColor;)V

    :cond_1
    return-void
.end method

.method public setBulletColorFollowText()V
    .locals 0

    invoke-virtual {p0}, Lorg/apache/poi/xddf/usermodel/text/XDDFTextParagraph;->getOrCreateBulletProperties()Lorg/apache/poi/xddf/usermodel/text/XDDFParagraphBulletProperties;

    move-result-object p0

    invoke-virtual {p0}, Lorg/apache/poi/xddf/usermodel/text/XDDFParagraphBulletProperties;->setBulletColorFollowText()V

    return-void
.end method

.method public setBulletFont(Lorg/apache/poi/xddf/usermodel/text/XDDFFont;)V
    .locals 1

    if-nez p1, :cond_0

    iget-object v0, p0, Lorg/apache/poi/xddf/usermodel/text/XDDFTextParagraph;->_p:Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextParagraph;

    invoke-interface {v0}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextParagraph;->isSetPPr()Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    invoke-virtual {p0}, Lorg/apache/poi/xddf/usermodel/text/XDDFTextParagraph;->getOrCreateBulletProperties()Lorg/apache/poi/xddf/usermodel/text/XDDFParagraphBulletProperties;

    move-result-object p0

    invoke-virtual {p0, p1}, Lorg/apache/poi/xddf/usermodel/text/XDDFParagraphBulletProperties;->setBulletFont(Lorg/apache/poi/xddf/usermodel/text/XDDFFont;)V

    :cond_1
    return-void
.end method

.method public setBulletFontFollowText()V
    .locals 0

    invoke-virtual {p0}, Lorg/apache/poi/xddf/usermodel/text/XDDFTextParagraph;->getOrCreateBulletProperties()Lorg/apache/poi/xddf/usermodel/text/XDDFParagraphBulletProperties;

    move-result-object p0

    invoke-virtual {p0}, Lorg/apache/poi/xddf/usermodel/text/XDDFParagraphBulletProperties;->setBulletFontFollowText()V

    return-void
.end method

.method public setBulletSize(Lorg/apache/poi/xddf/usermodel/text/XDDFBulletSize;)V
    .locals 1

    if-nez p1, :cond_0

    iget-object v0, p0, Lorg/apache/poi/xddf/usermodel/text/XDDFTextParagraph;->_p:Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextParagraph;

    invoke-interface {v0}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextParagraph;->isSetPPr()Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    invoke-virtual {p0}, Lorg/apache/poi/xddf/usermodel/text/XDDFTextParagraph;->getOrCreateBulletProperties()Lorg/apache/poi/xddf/usermodel/text/XDDFParagraphBulletProperties;

    move-result-object p0

    invoke-virtual {p0, p1}, Lorg/apache/poi/xddf/usermodel/text/XDDFParagraphBulletProperties;->setBulletSize(Lorg/apache/poi/xddf/usermodel/text/XDDFBulletSize;)V

    :cond_1
    return-void
.end method

.method public setBulletStyle(Lorg/apache/poi/xddf/usermodel/text/XDDFBulletStyle;)V
    .locals 1

    if-nez p1, :cond_0

    iget-object v0, p0, Lorg/apache/poi/xddf/usermodel/text/XDDFTextParagraph;->_p:Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextParagraph;

    invoke-interface {v0}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextParagraph;->isSetPPr()Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    invoke-virtual {p0}, Lorg/apache/poi/xddf/usermodel/text/XDDFTextParagraph;->getOrCreateBulletProperties()Lorg/apache/poi/xddf/usermodel/text/XDDFParagraphBulletProperties;

    move-result-object p0

    invoke-virtual {p0, p1}, Lorg/apache/poi/xddf/usermodel/text/XDDFParagraphBulletProperties;->setBulletStyle(Lorg/apache/poi/xddf/usermodel/text/XDDFBulletStyle;)V

    :cond_1
    return-void
.end method

.method public setDefaultRunProperties(Lorg/apache/poi/xddf/usermodel/text/XDDFRunProperties;)V
    .locals 1

    if-nez p1, :cond_0

    iget-object v0, p0, Lorg/apache/poi/xddf/usermodel/text/XDDFTextParagraph;->_p:Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextParagraph;

    invoke-interface {v0}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextParagraph;->isSetPPr()Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    invoke-direct {p0}, Lorg/apache/poi/xddf/usermodel/text/XDDFTextParagraph;->getOrCreateProperties()Lorg/apache/poi/xddf/usermodel/text/XDDFParagraphProperties;

    move-result-object p0

    invoke-virtual {p0, p1}, Lorg/apache/poi/xddf/usermodel/text/XDDFParagraphProperties;->setDefaultRunProperties(Lorg/apache/poi/xddf/usermodel/text/XDDFRunProperties;)V

    :cond_1
    return-void
.end method

.method public setDefaultTabSize(Ljava/lang/Double;)V
    .locals 1

    if-nez p1, :cond_0

    iget-object v0, p0, Lorg/apache/poi/xddf/usermodel/text/XDDFTextParagraph;->_p:Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextParagraph;

    invoke-interface {v0}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextParagraph;->isSetPPr()Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    invoke-direct {p0}, Lorg/apache/poi/xddf/usermodel/text/XDDFTextParagraph;->getOrCreateProperties()Lorg/apache/poi/xddf/usermodel/text/XDDFParagraphProperties;

    move-result-object p0

    invoke-virtual {p0, p1}, Lorg/apache/poi/xddf/usermodel/text/XDDFParagraphProperties;->setDefaultTabSize(Ljava/lang/Double;)V

    :cond_1
    return-void
.end method

.method public setEastAsianLineBreak(Ljava/lang/Boolean;)V
    .locals 1

    if-nez p1, :cond_0

    iget-object v0, p0, Lorg/apache/poi/xddf/usermodel/text/XDDFTextParagraph;->_p:Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextParagraph;

    invoke-interface {v0}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextParagraph;->isSetPPr()Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    invoke-direct {p0}, Lorg/apache/poi/xddf/usermodel/text/XDDFTextParagraph;->getOrCreateProperties()Lorg/apache/poi/xddf/usermodel/text/XDDFParagraphProperties;

    move-result-object p0

    invoke-virtual {p0, p1}, Lorg/apache/poi/xddf/usermodel/text/XDDFParagraphProperties;->setEastAsianLineBreak(Ljava/lang/Boolean;)V

    :cond_1
    return-void
.end method

.method public setFontAlignment(Lorg/apache/poi/xddf/usermodel/text/FontAlignment;)V
    .locals 1

    if-nez p1, :cond_0

    iget-object v0, p0, Lorg/apache/poi/xddf/usermodel/text/XDDFTextParagraph;->_p:Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextParagraph;

    invoke-interface {v0}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextParagraph;->isSetPPr()Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    invoke-direct {p0}, Lorg/apache/poi/xddf/usermodel/text/XDDFTextParagraph;->getOrCreateProperties()Lorg/apache/poi/xddf/usermodel/text/XDDFParagraphProperties;

    move-result-object p0

    invoke-virtual {p0, p1}, Lorg/apache/poi/xddf/usermodel/text/XDDFParagraphProperties;->setFontAlignment(Lorg/apache/poi/xddf/usermodel/text/FontAlignment;)V

    :cond_1
    return-void
.end method

.method public setHangingPunctuation(Ljava/lang/Boolean;)V
    .locals 1

    if-nez p1, :cond_0

    iget-object v0, p0, Lorg/apache/poi/xddf/usermodel/text/XDDFTextParagraph;->_p:Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextParagraph;

    invoke-interface {v0}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextParagraph;->isSetPPr()Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    invoke-direct {p0}, Lorg/apache/poi/xddf/usermodel/text/XDDFTextParagraph;->getOrCreateProperties()Lorg/apache/poi/xddf/usermodel/text/XDDFParagraphProperties;

    move-result-object p0

    invoke-virtual {p0, p1}, Lorg/apache/poi/xddf/usermodel/text/XDDFParagraphProperties;->setHangingPunctuation(Ljava/lang/Boolean;)V

    :cond_1
    return-void
.end method

.method public setIndentation(Ljava/lang/Double;)V
    .locals 1

    if-nez p1, :cond_0

    iget-object v0, p0, Lorg/apache/poi/xddf/usermodel/text/XDDFTextParagraph;->_p:Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextParagraph;

    invoke-interface {v0}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextParagraph;->isSetPPr()Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    invoke-direct {p0}, Lorg/apache/poi/xddf/usermodel/text/XDDFTextParagraph;->getOrCreateProperties()Lorg/apache/poi/xddf/usermodel/text/XDDFParagraphProperties;

    move-result-object p0

    invoke-virtual {p0, p1}, Lorg/apache/poi/xddf/usermodel/text/XDDFParagraphProperties;->setIndentation(Ljava/lang/Double;)V

    :cond_1
    return-void
.end method

.method public setIndentationLevel(Ljava/lang/Integer;)V
    .locals 1

    iget-object v0, p0, Lorg/apache/poi/xddf/usermodel/text/XDDFTextParagraph;->_p:Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextParagraph;

    invoke-interface {v0}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextParagraph;->isSetPPr()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lorg/apache/poi/xddf/usermodel/text/XDDFTextParagraph;->getProperties()Lorg/apache/poi/xddf/usermodel/text/XDDFParagraphProperties;

    move-result-object p0

    invoke-virtual {p0, p1}, Lorg/apache/poi/xddf/usermodel/text/XDDFParagraphProperties;->setLevel(Ljava/lang/Integer;)V

    :cond_0
    return-void
.end method

.method public setLatinLineBreak(Ljava/lang/Boolean;)V
    .locals 1

    if-nez p1, :cond_0

    iget-object v0, p0, Lorg/apache/poi/xddf/usermodel/text/XDDFTextParagraph;->_p:Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextParagraph;

    invoke-interface {v0}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextParagraph;->isSetPPr()Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    invoke-direct {p0}, Lorg/apache/poi/xddf/usermodel/text/XDDFTextParagraph;->getOrCreateProperties()Lorg/apache/poi/xddf/usermodel/text/XDDFParagraphProperties;

    move-result-object p0

    invoke-virtual {p0, p1}, Lorg/apache/poi/xddf/usermodel/text/XDDFParagraphProperties;->setLatinLineBreak(Ljava/lang/Boolean;)V

    :cond_1
    return-void
.end method

.method public setLineSpacing(Lorg/apache/poi/xddf/usermodel/text/XDDFSpacing;)V
    .locals 1

    if-nez p1, :cond_0

    iget-object v0, p0, Lorg/apache/poi/xddf/usermodel/text/XDDFTextParagraph;->_p:Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextParagraph;

    invoke-interface {v0}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextParagraph;->isSetPPr()Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    invoke-direct {p0}, Lorg/apache/poi/xddf/usermodel/text/XDDFTextParagraph;->getOrCreateProperties()Lorg/apache/poi/xddf/usermodel/text/XDDFParagraphProperties;

    move-result-object p0

    invoke-virtual {p0, p1}, Lorg/apache/poi/xddf/usermodel/text/XDDFParagraphProperties;->setLineSpacing(Lorg/apache/poi/xddf/usermodel/text/XDDFSpacing;)V

    :cond_1
    return-void
.end method

.method public setMarginLeft(Ljava/lang/Double;)V
    .locals 1

    if-nez p1, :cond_0

    iget-object v0, p0, Lorg/apache/poi/xddf/usermodel/text/XDDFTextParagraph;->_p:Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextParagraph;

    invoke-interface {v0}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextParagraph;->isSetPPr()Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    invoke-direct {p0}, Lorg/apache/poi/xddf/usermodel/text/XDDFTextParagraph;->getOrCreateProperties()Lorg/apache/poi/xddf/usermodel/text/XDDFParagraphProperties;

    move-result-object p0

    invoke-virtual {p0, p1}, Lorg/apache/poi/xddf/usermodel/text/XDDFParagraphProperties;->setMarginLeft(Ljava/lang/Double;)V

    :cond_1
    return-void
.end method

.method public setMarginRight(Ljava/lang/Double;)V
    .locals 1

    if-nez p1, :cond_0

    iget-object v0, p0, Lorg/apache/poi/xddf/usermodel/text/XDDFTextParagraph;->_p:Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextParagraph;

    invoke-interface {v0}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextParagraph;->isSetPPr()Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    invoke-direct {p0}, Lorg/apache/poi/xddf/usermodel/text/XDDFTextParagraph;->getOrCreateProperties()Lorg/apache/poi/xddf/usermodel/text/XDDFParagraphProperties;

    move-result-object p0

    invoke-virtual {p0, p1}, Lorg/apache/poi/xddf/usermodel/text/XDDFParagraphProperties;->setMarginRight(Ljava/lang/Double;)V

    :cond_1
    return-void
.end method

.method public setRightToLeft(Ljava/lang/Boolean;)V
    .locals 1

    if-nez p1, :cond_0

    iget-object v0, p0, Lorg/apache/poi/xddf/usermodel/text/XDDFTextParagraph;->_p:Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextParagraph;

    invoke-interface {v0}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextParagraph;->isSetPPr()Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    invoke-direct {p0}, Lorg/apache/poi/xddf/usermodel/text/XDDFTextParagraph;->getOrCreateProperties()Lorg/apache/poi/xddf/usermodel/text/XDDFParagraphProperties;

    move-result-object p0

    invoke-virtual {p0, p1}, Lorg/apache/poi/xddf/usermodel/text/XDDFParagraphProperties;->setRightToLeft(Ljava/lang/Boolean;)V

    :cond_1
    return-void
.end method

.method public setSpaceAfter(Lorg/apache/poi/xddf/usermodel/text/XDDFSpacing;)V
    .locals 1

    if-nez p1, :cond_0

    iget-object v0, p0, Lorg/apache/poi/xddf/usermodel/text/XDDFTextParagraph;->_p:Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextParagraph;

    invoke-interface {v0}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextParagraph;->isSetPPr()Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    invoke-direct {p0}, Lorg/apache/poi/xddf/usermodel/text/XDDFTextParagraph;->getOrCreateProperties()Lorg/apache/poi/xddf/usermodel/text/XDDFParagraphProperties;

    move-result-object p0

    invoke-virtual {p0, p1}, Lorg/apache/poi/xddf/usermodel/text/XDDFParagraphProperties;->setSpaceAfter(Lorg/apache/poi/xddf/usermodel/text/XDDFSpacing;)V

    :cond_1
    return-void
.end method

.method public setSpaceBefore(Lorg/apache/poi/xddf/usermodel/text/XDDFSpacing;)V
    .locals 1

    if-nez p1, :cond_0

    iget-object v0, p0, Lorg/apache/poi/xddf/usermodel/text/XDDFTextParagraph;->_p:Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextParagraph;

    invoke-interface {v0}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextParagraph;->isSetPPr()Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    invoke-direct {p0}, Lorg/apache/poi/xddf/usermodel/text/XDDFTextParagraph;->getOrCreateProperties()Lorg/apache/poi/xddf/usermodel/text/XDDFParagraphProperties;

    move-result-object p0

    invoke-virtual {p0, p1}, Lorg/apache/poi/xddf/usermodel/text/XDDFParagraphProperties;->setSpaceBefore(Lorg/apache/poi/xddf/usermodel/text/XDDFSpacing;)V

    :cond_1
    return-void
.end method

.method public setText(Ljava/lang/String;)V
    .locals 3

    iget-object v0, p0, Lorg/apache/poi/xddf/usermodel/text/XDDFTextParagraph;->_runs:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lorg/apache/poi/xddf/usermodel/text/XDDFTextParagraph;->_runs:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/apache/poi/xddf/usermodel/text/XDDFTextRun;

    invoke-virtual {v0}, Lorg/apache/poi/xddf/usermodel/text/XDDFTextRun;->getProperties()Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextCharacterProperties;

    move-result-object v0

    invoke-interface {v0}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextCharacterProperties;->copy()Lorg/apache/xmlbeans/XmlObject;

    move-result-object v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    iget-object v1, p0, Lorg/apache/poi/xddf/usermodel/text/XDDFTextParagraph;->_p:Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextParagraph;

    invoke-interface {v1}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextParagraph;->sizeOfBrArray()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    :goto_1
    if-ltz v1, :cond_1

    iget-object v2, p0, Lorg/apache/poi/xddf/usermodel/text/XDDFTextParagraph;->_p:Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextParagraph;

    invoke-interface {v2, v1}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextParagraph;->removeBr(I)V

    add-int/lit8 v1, v1, -0x1

    goto :goto_1

    :cond_1
    iget-object v1, p0, Lorg/apache/poi/xddf/usermodel/text/XDDFTextParagraph;->_p:Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextParagraph;

    invoke-interface {v1}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextParagraph;->sizeOfFldArray()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    :goto_2
    if-ltz v1, :cond_2

    iget-object v2, p0, Lorg/apache/poi/xddf/usermodel/text/XDDFTextParagraph;->_p:Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextParagraph;

    invoke-interface {v2, v1}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextParagraph;->removeFld(I)V

    add-int/lit8 v1, v1, -0x1

    goto :goto_2

    :cond_2
    iget-object v1, p0, Lorg/apache/poi/xddf/usermodel/text/XDDFTextParagraph;->_p:Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextParagraph;

    invoke-interface {v1}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextParagraph;->sizeOfRArray()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    :goto_3
    if-ltz v1, :cond_3

    iget-object v2, p0, Lorg/apache/poi/xddf/usermodel/text/XDDFTextParagraph;->_p:Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextParagraph;

    invoke-interface {v2, v1}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextParagraph;->removeR(I)V

    add-int/lit8 v1, v1, -0x1

    goto :goto_3

    :cond_3
    iget-object v1, p0, Lorg/apache/poi/xddf/usermodel/text/XDDFTextParagraph;->_runs:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->clear()V

    invoke-virtual {p0, p1}, Lorg/apache/poi/xddf/usermodel/text/XDDFTextParagraph;->appendRegularRun(Ljava/lang/String;)Lorg/apache/poi/xddf/usermodel/text/XDDFTextRun;

    move-result-object p0

    if-eqz v0, :cond_4

    invoke-virtual {p0}, Lorg/apache/poi/xddf/usermodel/text/XDDFTextRun;->getProperties()Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextCharacterProperties;

    move-result-object p0

    invoke-interface {p0, v0}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextCharacterProperties;->set(Lorg/apache/xmlbeans/XmlObject;)Lorg/apache/xmlbeans/XmlObject;

    :cond_4
    return-void
.end method

.method public setTextAlignment(Lorg/apache/poi/xddf/usermodel/text/TextAlignment;)V
    .locals 1

    if-nez p1, :cond_0

    iget-object v0, p0, Lorg/apache/poi/xddf/usermodel/text/XDDFTextParagraph;->_p:Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextParagraph;

    invoke-interface {v0}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextParagraph;->isSetPPr()Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    invoke-direct {p0}, Lorg/apache/poi/xddf/usermodel/text/XDDFTextParagraph;->getOrCreateProperties()Lorg/apache/poi/xddf/usermodel/text/XDDFParagraphProperties;

    move-result-object p0

    invoke-virtual {p0, p1}, Lorg/apache/poi/xddf/usermodel/text/XDDFParagraphProperties;->setTextAlignment(Lorg/apache/poi/xddf/usermodel/text/TextAlignment;)V

    :cond_1
    return-void
.end method

.method public spliterator()Ljava/util/Spliterator;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Spliterator<",
            "Lorg/apache/poi/xddf/usermodel/text/XDDFTextRun;",
            ">;"
        }
    .end annotation

    iget-object p0, p0, Lorg/apache/poi/xddf/usermodel/text/XDDFTextParagraph;->_runs:Ljava/util/ArrayList;

    invoke-virtual {p0}, Ljava/util/ArrayList;->spliterator()Ljava/util/Spliterator;

    move-result-object p0

    return-object p0
.end method
