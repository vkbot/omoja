.class public Lorg/apache/poi/xddf/usermodel/text/XDDFTextRun;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private final _parent:Lorg/apache/poi/xddf/usermodel/text/XDDFTextParagraph;

.field private _properties:Lorg/apache/poi/xddf/usermodel/text/XDDFRunProperties;

.field private _rtr:Lorg/openxmlformats/schemas/drawingml/x2006/main/CTRegularTextRun;

.field private _tf:Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextField;

.field private _tlb:Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextLineBreak;


# direct methods
.method public constructor <init>(Lorg/openxmlformats/schemas/drawingml/x2006/main/CTRegularTextRun;Lorg/apache/poi/xddf/usermodel/text/XDDFTextParagraph;)V
    .locals 0
    .annotation runtime Lorg/apache/poi/util/Internal;
    .end annotation

    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/apache/poi/xddf/usermodel/text/XDDFTextRun;->_rtr:Lorg/openxmlformats/schemas/drawingml/x2006/main/CTRegularTextRun;

    iput-object p2, p0, Lorg/apache/poi/xddf/usermodel/text/XDDFTextRun;->_parent:Lorg/apache/poi/xddf/usermodel/text/XDDFTextParagraph;

    return-void
.end method

.method public constructor <init>(Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextField;Lorg/apache/poi/xddf/usermodel/text/XDDFTextParagraph;)V
    .locals 0
    .annotation runtime Lorg/apache/poi/util/Internal;
    .end annotation

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/apache/poi/xddf/usermodel/text/XDDFTextRun;->_tf:Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextField;

    iput-object p2, p0, Lorg/apache/poi/xddf/usermodel/text/XDDFTextRun;->_parent:Lorg/apache/poi/xddf/usermodel/text/XDDFTextParagraph;

    return-void
.end method

.method public constructor <init>(Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextLineBreak;Lorg/apache/poi/xddf/usermodel/text/XDDFTextParagraph;)V
    .locals 0
    .annotation runtime Lorg/apache/poi/util/Internal;
    .end annotation

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/apache/poi/xddf/usermodel/text/XDDFTextRun;->_tlb:Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextLineBreak;

    iput-object p2, p0, Lorg/apache/poi/xddf/usermodel/text/XDDFTextRun;->_parent:Lorg/apache/poi/xddf/usermodel/text/XDDFTextParagraph;

    return-void
.end method

.method public static synthetic a(Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextFont;)Lorg/apache/poi/xddf/usermodel/text/XDDFFont;
    .locals 0

    invoke-static {p0}, Lorg/apache/poi/xddf/usermodel/text/XDDFTextRun;->lambda$getFonts$6(Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextFont;)Lorg/apache/poi/xddf/usermodel/text/XDDFFont;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic b(Ljava/lang/Integer;)Ljava/lang/Boolean;
    .locals 0

    invoke-static {p0}, Lorg/apache/poi/xddf/usermodel/text/XDDFTextRun;->lambda$isSuperscript$4(Ljava/lang/Integer;)Ljava/lang/Boolean;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic c(Ljava/lang/Integer;)Ljava/lang/Boolean;
    .locals 0

    invoke-static {p0}, Lorg/apache/poi/xddf/usermodel/text/XDDFTextRun;->lambda$isSubscript$3(Ljava/lang/Integer;)Ljava/lang/Boolean;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic d(Lorg/openxmlformats/schemas/drawingml/x2006/main/STTextStrikeType$Enum;)Ljava/lang/Boolean;
    .locals 0

    invoke-static {p0}, Lorg/apache/poi/xddf/usermodel/text/XDDFTextRun;->lambda$isStrikeThrough$0(Lorg/openxmlformats/schemas/drawingml/x2006/main/STTextStrikeType$Enum;)Ljava/lang/Boolean;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic e(Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextFont;)Lorg/apache/poi/xddf/usermodel/text/XDDFFont;
    .locals 0

    invoke-static {p0}, Lorg/apache/poi/xddf/usermodel/text/XDDFTextRun;->lambda$getFonts$5(Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextFont;)Lorg/apache/poi/xddf/usermodel/text/XDDFFont;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic f(Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextFont;)Lorg/apache/poi/xddf/usermodel/text/XDDFFont;
    .locals 0

    invoke-static {p0}, Lorg/apache/poi/xddf/usermodel/text/XDDFTextRun;->lambda$getFonts$8(Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextFont;)Lorg/apache/poi/xddf/usermodel/text/XDDFFont;

    move-result-object p0

    return-object p0
.end method

.method private findDefinedProperty(Ljava/util/function/Predicate;Ljava/util/function/Function;)Ljava/util/Optional;
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

    invoke-virtual {p0}, Lorg/apache/poi/xddf/usermodel/text/XDDFTextRun;->getProperties()Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextCharacterProperties;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-interface {p1, v0}, Ljava/util/function/Predicate;->test(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {p2, v0}, Ljava/util/function/Function;->apply(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    invoke-static {p0}, Ljava/util/Optional;->ofNullable(Ljava/lang/Object;)Ljava/util/Optional;

    move-result-object p0

    return-object p0

    :cond_0
    iget-object p0, p0, Lorg/apache/poi/xddf/usermodel/text/XDDFTextRun;->_parent:Lorg/apache/poi/xddf/usermodel/text/XDDFTextParagraph;

    invoke-virtual {p0, p1, p2}, Lorg/apache/poi/xddf/usermodel/text/XDDFTextParagraph;->findDefinedRunProperty(Ljava/util/function/Predicate;Ljava/util/function/Function;)Ljava/util/Optional;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic g(Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextFont;)Lorg/apache/poi/xddf/usermodel/text/XDDFFont;
    .locals 0

    invoke-static {p0}, Lorg/apache/poi/xddf/usermodel/text/XDDFTextRun;->lambda$getFonts$7(Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextFont;)Lorg/apache/poi/xddf/usermodel/text/XDDFFont;

    move-result-object p0

    return-object p0
.end method

.method private getOrCreateProperties()Lorg/apache/poi/xddf/usermodel/text/XDDFRunProperties;
    .locals 2

    iget-object v0, p0, Lorg/apache/poi/xddf/usermodel/text/XDDFTextRun;->_properties:Lorg/apache/poi/xddf/usermodel/text/XDDFRunProperties;

    if-nez v0, :cond_5

    invoke-virtual {p0}, Lorg/apache/poi/xddf/usermodel/text/XDDFTextRun;->isLineBreak()Z

    move-result v0

    if-eqz v0, :cond_1

    new-instance v0, Lorg/apache/poi/xddf/usermodel/text/XDDFRunProperties;

    iget-object v1, p0, Lorg/apache/poi/xddf/usermodel/text/XDDFTextRun;->_tlb:Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextLineBreak;

    invoke-interface {v1}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextLineBreak;->isSetRPr()Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lorg/apache/poi/xddf/usermodel/text/XDDFTextRun;->_tlb:Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextLineBreak;

    invoke-interface {v1}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextLineBreak;->getRPr()Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextCharacterProperties;

    move-result-object v1

    goto :goto_0

    :cond_0
    iget-object v1, p0, Lorg/apache/poi/xddf/usermodel/text/XDDFTextRun;->_tlb:Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextLineBreak;

    invoke-interface {v1}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextLineBreak;->addNewRPr()Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextCharacterProperties;

    move-result-object v1

    :goto_0
    invoke-direct {v0, v1}, Lorg/apache/poi/xddf/usermodel/text/XDDFRunProperties;-><init>(Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextCharacterProperties;)V

    iput-object v0, p0, Lorg/apache/poi/xddf/usermodel/text/XDDFTextRun;->_properties:Lorg/apache/poi/xddf/usermodel/text/XDDFRunProperties;

    goto :goto_3

    :cond_1
    invoke-virtual {p0}, Lorg/apache/poi/xddf/usermodel/text/XDDFTextRun;->isField()Z

    move-result v0

    if-eqz v0, :cond_3

    new-instance v0, Lorg/apache/poi/xddf/usermodel/text/XDDFRunProperties;

    iget-object v1, p0, Lorg/apache/poi/xddf/usermodel/text/XDDFTextRun;->_tf:Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextField;

    invoke-interface {v1}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextField;->isSetRPr()Z

    move-result v1

    if-eqz v1, :cond_2

    iget-object v1, p0, Lorg/apache/poi/xddf/usermodel/text/XDDFTextRun;->_tf:Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextField;

    invoke-interface {v1}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextField;->getRPr()Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextCharacterProperties;

    move-result-object v1

    goto :goto_1

    :cond_2
    iget-object v1, p0, Lorg/apache/poi/xddf/usermodel/text/XDDFTextRun;->_tf:Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextField;

    invoke-interface {v1}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextField;->addNewRPr()Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextCharacterProperties;

    move-result-object v1

    :goto_1
    invoke-direct {v0, v1}, Lorg/apache/poi/xddf/usermodel/text/XDDFRunProperties;-><init>(Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextCharacterProperties;)V

    iput-object v0, p0, Lorg/apache/poi/xddf/usermodel/text/XDDFTextRun;->_properties:Lorg/apache/poi/xddf/usermodel/text/XDDFRunProperties;

    goto :goto_3

    :cond_3
    invoke-virtual {p0}, Lorg/apache/poi/xddf/usermodel/text/XDDFTextRun;->isRegularRun()Z

    move-result v0

    if-eqz v0, :cond_5

    new-instance v0, Lorg/apache/poi/xddf/usermodel/text/XDDFRunProperties;

    iget-object v1, p0, Lorg/apache/poi/xddf/usermodel/text/XDDFTextRun;->_rtr:Lorg/openxmlformats/schemas/drawingml/x2006/main/CTRegularTextRun;

    invoke-interface {v1}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTRegularTextRun;->isSetRPr()Z

    move-result v1

    if-eqz v1, :cond_4

    iget-object v1, p0, Lorg/apache/poi/xddf/usermodel/text/XDDFTextRun;->_rtr:Lorg/openxmlformats/schemas/drawingml/x2006/main/CTRegularTextRun;

    invoke-interface {v1}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTRegularTextRun;->getRPr()Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextCharacterProperties;

    move-result-object v1

    goto :goto_2

    :cond_4
    iget-object v1, p0, Lorg/apache/poi/xddf/usermodel/text/XDDFTextRun;->_rtr:Lorg/openxmlformats/schemas/drawingml/x2006/main/CTRegularTextRun;

    invoke-interface {v1}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTRegularTextRun;->addNewRPr()Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextCharacterProperties;

    move-result-object v1

    :goto_2
    invoke-direct {v0, v1}, Lorg/apache/poi/xddf/usermodel/text/XDDFRunProperties;-><init>(Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextCharacterProperties;)V

    iput-object v0, p0, Lorg/apache/poi/xddf/usermodel/text/XDDFTextRun;->_properties:Lorg/apache/poi/xddf/usermodel/text/XDDFRunProperties;

    :cond_5
    :goto_3
    iget-object p0, p0, Lorg/apache/poi/xddf/usermodel/text/XDDFTextRun;->_properties:Lorg/apache/poi/xddf/usermodel/text/XDDFRunProperties;

    return-object p0
.end method

.method public static synthetic h(Ljava/lang/Integer;)Ljava/lang/Double;
    .locals 0

    invoke-static {p0}, Lorg/apache/poi/xddf/usermodel/text/XDDFTextRun;->lambda$getCharacterKerning$9(Ljava/lang/Integer;)Ljava/lang/Double;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic i(Lorg/openxmlformats/schemas/drawingml/x2006/main/STTextUnderlineType$Enum;)Ljava/lang/Boolean;
    .locals 0

    invoke-static {p0}, Lorg/apache/poi/xddf/usermodel/text/XDDFTextRun;->lambda$isUnderline$1(Lorg/openxmlformats/schemas/drawingml/x2006/main/STTextUnderlineType$Enum;)Ljava/lang/Boolean;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic j(Lorg/openxmlformats/schemas/drawingml/x2006/main/STTextCapsType$Enum;)Ljava/lang/Boolean;
    .locals 0

    invoke-static {p0}, Lorg/apache/poi/xddf/usermodel/text/XDDFTextRun;->lambda$isCapitals$2(Lorg/openxmlformats/schemas/drawingml/x2006/main/STTextCapsType$Enum;)Ljava/lang/Boolean;

    move-result-object p0

    return-object p0
.end method

.method private static synthetic lambda$getCharacterKerning$9(Ljava/lang/Integer;)Ljava/lang/Double;
    .locals 4

    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result p0

    int-to-double v0, p0

    const-wide v2, 0x3f847ae147ae147bL    # 0.01

    mul-double/2addr v0, v2

    invoke-static {v0, v1}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object p0

    return-object p0
.end method

.method private static synthetic lambda$getFonts$5(Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextFont;)Lorg/apache/poi/xddf/usermodel/text/XDDFFont;
    .locals 2

    new-instance v0, Lorg/apache/poi/xddf/usermodel/text/XDDFFont;

    sget-object v1, Lorg/apache/poi/common/usermodel/fonts/FontGroup;->COMPLEX_SCRIPT:Lorg/apache/poi/common/usermodel/fonts/FontGroup;

    invoke-direct {v0, v1, p0}, Lorg/apache/poi/xddf/usermodel/text/XDDFFont;-><init>(Lorg/apache/poi/common/usermodel/fonts/FontGroup;Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextFont;)V

    return-object v0
.end method

.method private static synthetic lambda$getFonts$6(Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextFont;)Lorg/apache/poi/xddf/usermodel/text/XDDFFont;
    .locals 2

    new-instance v0, Lorg/apache/poi/xddf/usermodel/text/XDDFFont;

    sget-object v1, Lorg/apache/poi/common/usermodel/fonts/FontGroup;->EAST_ASIAN:Lorg/apache/poi/common/usermodel/fonts/FontGroup;

    invoke-direct {v0, v1, p0}, Lorg/apache/poi/xddf/usermodel/text/XDDFFont;-><init>(Lorg/apache/poi/common/usermodel/fonts/FontGroup;Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextFont;)V

    return-object v0
.end method

.method private static synthetic lambda$getFonts$7(Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextFont;)Lorg/apache/poi/xddf/usermodel/text/XDDFFont;
    .locals 2

    new-instance v0, Lorg/apache/poi/xddf/usermodel/text/XDDFFont;

    sget-object v1, Lorg/apache/poi/common/usermodel/fonts/FontGroup;->LATIN:Lorg/apache/poi/common/usermodel/fonts/FontGroup;

    invoke-direct {v0, v1, p0}, Lorg/apache/poi/xddf/usermodel/text/XDDFFont;-><init>(Lorg/apache/poi/common/usermodel/fonts/FontGroup;Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextFont;)V

    return-object v0
.end method

.method private static synthetic lambda$getFonts$8(Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextFont;)Lorg/apache/poi/xddf/usermodel/text/XDDFFont;
    .locals 2

    new-instance v0, Lorg/apache/poi/xddf/usermodel/text/XDDFFont;

    sget-object v1, Lorg/apache/poi/common/usermodel/fonts/FontGroup;->SYMBOL:Lorg/apache/poi/common/usermodel/fonts/FontGroup;

    invoke-direct {v0, v1, p0}, Lorg/apache/poi/xddf/usermodel/text/XDDFFont;-><init>(Lorg/apache/poi/common/usermodel/fonts/FontGroup;Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextFont;)V

    return-object v0
.end method

.method private static synthetic lambda$isCapitals$2(Lorg/openxmlformats/schemas/drawingml/x2006/main/STTextCapsType$Enum;)Ljava/lang/Boolean;
    .locals 1

    sget-object v0, Lorg/openxmlformats/schemas/drawingml/x2006/main/STTextCapsType;->NONE:Lorg/openxmlformats/schemas/drawingml/x2006/main/STTextCapsType$Enum;

    if-eq p0, v0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    invoke-static {p0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p0

    return-object p0
.end method

.method private static synthetic lambda$isStrikeThrough$0(Lorg/openxmlformats/schemas/drawingml/x2006/main/STTextStrikeType$Enum;)Ljava/lang/Boolean;
    .locals 1

    sget-object v0, Lorg/openxmlformats/schemas/drawingml/x2006/main/STTextStrikeType;->NO_STRIKE:Lorg/openxmlformats/schemas/drawingml/x2006/main/STTextStrikeType$Enum;

    if-eq p0, v0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    invoke-static {p0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p0

    return-object p0
.end method

.method private static synthetic lambda$isSubscript$3(Ljava/lang/Integer;)Ljava/lang/Boolean;
    .locals 0

    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result p0

    if-gez p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    invoke-static {p0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p0

    return-object p0
.end method

.method private static synthetic lambda$isSuperscript$4(Ljava/lang/Integer;)Ljava/lang/Boolean;
    .locals 0

    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result p0

    if-lez p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    invoke-static {p0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p0

    return-object p0
.end method

.method private static synthetic lambda$isUnderline$1(Lorg/openxmlformats/schemas/drawingml/x2006/main/STTextUnderlineType$Enum;)Ljava/lang/Boolean;
    .locals 1

    sget-object v0, Lorg/openxmlformats/schemas/drawingml/x2006/main/STTextUnderlineType;->NONE:Lorg/openxmlformats/schemas/drawingml/x2006/main/STTextUnderlineType$Enum;

    if-eq p0, v0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    invoke-static {p0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public createMouseOver(Ljava/lang/String;)Lorg/apache/poi/xddf/usermodel/text/XDDFHyperlink;
    .locals 2

    new-instance v0, Lorg/apache/poi/xddf/usermodel/text/XDDFHyperlink;

    const-string v1, ""

    invoke-direct {v0, v1, p1}, Lorg/apache/poi/xddf/usermodel/text/XDDFHyperlink;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-direct {p0}, Lorg/apache/poi/xddf/usermodel/text/XDDFTextRun;->getOrCreateProperties()Lorg/apache/poi/xddf/usermodel/text/XDDFRunProperties;

    move-result-object p0

    invoke-virtual {p0, v0}, Lorg/apache/poi/xddf/usermodel/text/XDDFRunProperties;->setMouseOver(Lorg/apache/poi/xddf/usermodel/text/XDDFHyperlink;)V

    return-object v0
.end method

.method public getAlternativeLanguage()Ljava/util/Locale;
    .locals 3

    new-instance v0, Lo1/c;

    const/16 v1, 0x12

    invoke-direct {v0, v1}, Lo1/c;-><init>(I)V

    new-instance v1, Lorg/apache/poi/xddf/usermodel/text/i;

    const/16 v2, 0xa

    invoke-direct {v1, v2}, Lorg/apache/poi/xddf/usermodel/text/i;-><init>(I)V

    invoke-direct {p0, v0, v1}, Lorg/apache/poi/xddf/usermodel/text/XDDFTextRun;->findDefinedProperty(Ljava/util/function/Predicate;Ljava/util/function/Function;)Ljava/util/Optional;

    move-result-object p0

    new-instance v0, Lorg/apache/poi/xddf/usermodel/text/j;

    const/4 v1, 0x4

    invoke-direct {v0, v1}, Lorg/apache/poi/xddf/usermodel/text/j;-><init>(I)V

    invoke-virtual {p0, v0}, Ljava/util/Optional;->map(Ljava/util/function/Function;)Ljava/util/Optional;

    move-result-object p0

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Ljava/util/Optional;->orElse(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/util/Locale;

    return-object p0
.end method

.method public getBookmark()Ljava/lang/String;
    .locals 3

    new-instance v0, Lf/g;

    const/16 v1, 0x14

    invoke-direct {v0, v1}, Lf/g;-><init>(I)V

    new-instance v1, Lorg/apache/poi/xddf/usermodel/text/k;

    const/4 v2, 0x5

    invoke-direct {v1, v2}, Lorg/apache/poi/xddf/usermodel/text/k;-><init>(I)V

    invoke-direct {p0, v0, v1}, Lorg/apache/poi/xddf/usermodel/text/XDDFTextRun;->findDefinedProperty(Ljava/util/function/Predicate;Ljava/util/function/Function;)Ljava/util/Optional;

    move-result-object p0

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Ljava/util/Optional;->orElse(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/String;

    return-object p0
.end method

.method public getCapitals()Lorg/apache/poi/xddf/usermodel/text/CapsType;
    .locals 3

    new-instance v0, Lo1/c;

    const/16 v1, 0xc

    invoke-direct {v0, v1}, Lo1/c;-><init>(I)V

    new-instance v1, Lorg/apache/commons/compress/archivers/zip/x0;

    const/16 v2, 0x1c

    invoke-direct {v1, v2}, Lorg/apache/commons/compress/archivers/zip/x0;-><init>(I)V

    invoke-direct {p0, v0, v1}, Lorg/apache/poi/xddf/usermodel/text/XDDFTextRun;->findDefinedProperty(Ljava/util/function/Predicate;Ljava/util/function/Function;)Ljava/util/Optional;

    move-result-object p0

    new-instance v0, Lg5/l;

    invoke-direct {v0, v2}, Lg5/l;-><init>(I)V

    invoke-virtual {p0, v0}, Ljava/util/Optional;->map(Ljava/util/function/Function;)Ljava/util/Optional;

    move-result-object p0

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Ljava/util/Optional;->orElse(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lorg/apache/poi/xddf/usermodel/text/CapsType;

    return-object p0
.end method

.method public getCharacterKerning()Ljava/lang/Double;
    .locals 3

    new-instance v0, Lh4/g;

    const/16 v1, 0x13

    invoke-direct {v0, v1}, Lh4/g;-><init>(I)V

    new-instance v1, Lorg/apache/poi/xddf/usermodel/text/j;

    const/4 v2, 0x7

    invoke-direct {v1, v2}, Lorg/apache/poi/xddf/usermodel/text/j;-><init>(I)V

    invoke-direct {p0, v0, v1}, Lorg/apache/poi/xddf/usermodel/text/XDDFTextRun;->findDefinedProperty(Ljava/util/function/Predicate;Ljava/util/function/Function;)Ljava/util/Optional;

    move-result-object p0

    new-instance v0, Lorg/apache/poi/xddf/usermodel/text/k;

    const/4 v1, 0x6

    invoke-direct {v0, v1}, Lorg/apache/poi/xddf/usermodel/text/k;-><init>(I)V

    invoke-virtual {p0, v0}, Ljava/util/Optional;->map(Ljava/util/function/Function;)Ljava/util/Optional;

    move-result-object p0

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Ljava/util/Optional;->orElse(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Double;

    return-object p0
.end method

.method public getCharacterSpacing()Ljava/lang/Double;
    .locals 3

    new-instance v0, Lf/g;

    const/16 v1, 0x15

    invoke-direct {v0, v1}, Lf/g;-><init>(I)V

    new-instance v1, Lorg/apache/poi/xddf/usermodel/text/k;

    const/16 v2, 0x8

    invoke-direct {v1, v2}, Lorg/apache/poi/xddf/usermodel/text/k;-><init>(I)V

    invoke-direct {p0, v0, v1}, Lorg/apache/poi/xddf/usermodel/text/XDDFTextRun;->findDefinedProperty(Ljava/util/function/Predicate;Ljava/util/function/Function;)Ljava/util/Optional;

    move-result-object p0

    new-instance v0, Lorg/apache/poi/xddf/usermodel/text/i;

    const/16 v1, 0x11

    invoke-direct {v0, v1}, Lorg/apache/poi/xddf/usermodel/text/i;-><init>(I)V

    invoke-virtual {p0, v0}, Ljava/util/Optional;->map(Ljava/util/function/Function;)Ljava/util/Optional;

    move-result-object p0

    new-instance v0, Lorg/apache/poi/xddf/usermodel/text/j;

    const/16 v1, 0x9

    invoke-direct {v0, v1}, Lorg/apache/poi/xddf/usermodel/text/j;-><init>(I)V

    invoke-virtual {p0, v0}, Ljava/util/Optional;->map(Ljava/util/function/Function;)Ljava/util/Optional;

    move-result-object p0

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Ljava/util/Optional;->orElse(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Double;

    return-object p0
.end method

.method public getDirty()Ljava/lang/Boolean;
    .locals 3

    new-instance v0, Lf/g;

    const/16 v1, 0x12

    invoke-direct {v0, v1}, Lf/g;-><init>(I)V

    new-instance v1, Lorg/apache/poi/xddf/usermodel/text/k;

    const/4 v2, 0x3

    invoke-direct {v1, v2}, Lorg/apache/poi/xddf/usermodel/text/k;-><init>(I)V

    invoke-direct {p0, v0, v1}, Lorg/apache/poi/xddf/usermodel/text/XDDFTextRun;->findDefinedProperty(Ljava/util/function/Predicate;Ljava/util/function/Function;)Ljava/util/Optional;

    move-result-object p0

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Ljava/util/Optional;->orElse(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Boolean;

    return-object p0
.end method

.method public getFontColor()Lorg/apache/poi/xddf/usermodel/XDDFColor;
    .locals 3

    new-instance v0, Lf/g;

    const/16 v1, 0xb

    invoke-direct {v0, v1}, Lf/g;-><init>(I)V

    new-instance v1, Lorg/apache/poi/ddf/f0;

    const/16 v2, 0x19

    invoke-direct {v1, v2}, Lorg/apache/poi/ddf/f0;-><init>(I)V

    invoke-direct {p0, v0, v1}, Lorg/apache/poi/xddf/usermodel/text/XDDFTextRun;->findDefinedProperty(Ljava/util/function/Predicate;Ljava/util/function/Function;)Ljava/util/Optional;

    move-result-object p0

    new-instance v0, Lorg/apache/poi/xddf/usermodel/text/i;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lorg/apache/poi/xddf/usermodel/text/i;-><init>(I)V

    invoke-virtual {p0, v0}, Ljava/util/Optional;->map(Ljava/util/function/Function;)Ljava/util/Optional;

    move-result-object p0

    new-instance v0, Lorg/apache/poi/xddf/usermodel/XDDFSolidFillProperties;

    invoke-direct {v0}, Lorg/apache/poi/xddf/usermodel/XDDFSolidFillProperties;-><init>()V

    invoke-virtual {p0, v0}, Ljava/util/Optional;->orElse(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lorg/apache/poi/xddf/usermodel/XDDFSolidFillProperties;

    invoke-virtual {p0}, Lorg/apache/poi/xddf/usermodel/XDDFSolidFillProperties;->getColor()Lorg/apache/poi/xddf/usermodel/XDDFColor;

    move-result-object p0

    return-object p0
.end method

.method public getFontSize()Ljava/lang/Double;
    .locals 5

    new-instance v0, Lh4/g;

    const/16 v1, 0x10

    invoke-direct {v0, v1}, Lh4/g;-><init>(I)V

    new-instance v1, Lg5/l;

    const/16 v2, 0x1b

    invoke-direct {v1, v2}, Lg5/l;-><init>(I)V

    invoke-direct {p0, v0, v1}, Lorg/apache/poi/xddf/usermodel/text/XDDFTextRun;->findDefinedProperty(Ljava/util/function/Predicate;Ljava/util/function/Function;)Ljava/util/Optional;

    move-result-object v0

    const/16 v1, 0x44c

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/Optional;->orElse(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    iget-object p0, p0, Lorg/apache/poi/xddf/usermodel/text/XDDFTextRun;->_parent:Lorg/apache/poi/xddf/usermodel/text/XDDFTextParagraph;

    invoke-virtual {p0}, Lorg/apache/poi/xddf/usermodel/text/XDDFTextParagraph;->getParentBody()Lorg/apache/poi/xddf/usermodel/text/XDDFTextBody;

    move-result-object p0

    invoke-virtual {p0}, Lorg/apache/poi/xddf/usermodel/text/XDDFTextBody;->getBodyProperties()Lorg/apache/poi/xddf/usermodel/text/XDDFBodyProperties;

    move-result-object p0

    invoke-virtual {p0}, Lorg/apache/poi/xddf/usermodel/text/XDDFBodyProperties;->getAutoFit()Lorg/apache/poi/xddf/usermodel/text/XDDFAutoFit;

    move-result-object p0

    invoke-interface {p0}, Lorg/apache/poi/xddf/usermodel/text/XDDFAutoFit;->getFontScale()I

    move-result p0

    int-to-double v1, p0

    const-wide v3, 0x416312d000000000L    # 1.0E7

    div-double/2addr v1, v3

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result p0

    int-to-double v3, p0

    mul-double/2addr v3, v1

    invoke-static {v3, v4}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object p0

    return-object p0
.end method

.method public getFonts()[Lorg/apache/poi/xddf/usermodel/text/XDDFFont;
    .locals 6

    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    new-instance v1, Lf/g;

    const/16 v2, 0xf

    invoke-direct {v1, v2}, Lf/g;-><init>(I)V

    new-instance v2, Lorg/apache/poi/xddf/usermodel/text/k;

    const/4 v3, 0x1

    invoke-direct {v2, v3}, Lorg/apache/poi/xddf/usermodel/text/k;-><init>(I)V

    invoke-direct {p0, v1, v2}, Lorg/apache/poi/xddf/usermodel/text/XDDFTextRun;->findDefinedProperty(Ljava/util/function/Predicate;Ljava/util/function/Function;)Ljava/util/Optional;

    move-result-object v1

    new-instance v2, Lorg/apache/poi/xddf/usermodel/text/i;

    const/4 v4, 0x7

    invoke-direct {v2, v4}, Lorg/apache/poi/xddf/usermodel/text/i;-><init>(I)V

    invoke-virtual {v1, v2}, Ljava/util/Optional;->map(Ljava/util/function/Function;)Ljava/util/Optional;

    move-result-object v1

    new-instance v2, Lorg/apache/poi/xddf/usermodel/text/l;

    invoke-direct {v2, v0, v3}, Lorg/apache/poi/xddf/usermodel/text/l;-><init>(Ljava/util/LinkedList;I)V

    invoke-virtual {v1, v2}, Ljava/util/Optional;->ifPresent(Ljava/util/function/Consumer;)V

    new-instance v1, Lo1/c;

    const/16 v2, 0x10

    invoke-direct {v1, v2}, Lo1/c;-><init>(I)V

    new-instance v4, Lorg/apache/poi/xddf/usermodel/text/i;

    const/16 v5, 0x8

    invoke-direct {v4, v5}, Lorg/apache/poi/xddf/usermodel/text/i;-><init>(I)V

    invoke-direct {p0, v1, v4}, Lorg/apache/poi/xddf/usermodel/text/XDDFTextRun;->findDefinedProperty(Ljava/util/function/Predicate;Ljava/util/function/Function;)Ljava/util/Optional;

    move-result-object v1

    new-instance v4, Lorg/apache/poi/xddf/usermodel/text/j;

    invoke-direct {v4, v3}, Lorg/apache/poi/xddf/usermodel/text/j;-><init>(I)V

    invoke-virtual {v1, v4}, Ljava/util/Optional;->map(Ljava/util/function/Function;)Ljava/util/Optional;

    move-result-object v1

    new-instance v3, Lo1/a;

    const/4 v4, 0x5

    invoke-direct {v3, v4, v0}, Lo1/a;-><init>(ILjava/lang/Object;)V

    invoke-virtual {v1, v3}, Ljava/util/Optional;->ifPresent(Ljava/util/function/Consumer;)V

    new-instance v1, Lh4/g;

    const/16 v3, 0x11

    invoke-direct {v1, v3}, Lh4/g;-><init>(I)V

    new-instance v3, Lorg/apache/poi/xddf/usermodel/text/j;

    const/4 v4, 0x2

    invoke-direct {v3, v4}, Lorg/apache/poi/xddf/usermodel/text/j;-><init>(I)V

    invoke-direct {p0, v1, v3}, Lorg/apache/poi/xddf/usermodel/text/XDDFTextRun;->findDefinedProperty(Ljava/util/function/Predicate;Ljava/util/function/Function;)Ljava/util/Optional;

    move-result-object v1

    new-instance v3, Lorg/apache/poi/ddf/f0;

    const/16 v4, 0x1d

    invoke-direct {v3, v4}, Lorg/apache/poi/ddf/f0;-><init>(I)V

    invoke-virtual {v1, v3}, Ljava/util/Optional;->map(Ljava/util/function/Function;)Ljava/util/Optional;

    move-result-object v1

    new-instance v3, Lx1/c;

    const/4 v4, 0x6

    invoke-direct {v3, v4, v0}, Lx1/c;-><init>(ILjava/lang/Object;)V

    invoke-virtual {v1, v3}, Ljava/util/Optional;->ifPresent(Ljava/util/function/Consumer;)V

    new-instance v1, Lf/g;

    invoke-direct {v1, v2}, Lf/g;-><init>(I)V

    new-instance v2, Lorg/apache/poi/xddf/usermodel/text/k;

    const/4 v3, 0x0

    invoke-direct {v2, v3}, Lorg/apache/poi/xddf/usermodel/text/k;-><init>(I)V

    invoke-direct {p0, v1, v2}, Lorg/apache/poi/xddf/usermodel/text/XDDFTextRun;->findDefinedProperty(Ljava/util/function/Predicate;Ljava/util/function/Function;)Ljava/util/Optional;

    move-result-object p0

    new-instance v1, Lorg/apache/poi/xddf/usermodel/text/i;

    invoke-direct {v1, v4}, Lorg/apache/poi/xddf/usermodel/text/i;-><init>(I)V

    invoke-virtual {p0, v1}, Ljava/util/Optional;->map(Ljava/util/function/Function;)Ljava/util/Optional;

    move-result-object p0

    new-instance v1, Lorg/apache/poi/xddf/usermodel/text/l;

    invoke-direct {v1, v0, v3}, Lorg/apache/poi/xddf/usermodel/text/l;-><init>(Ljava/util/LinkedList;I)V

    invoke-virtual {p0, v1}, Ljava/util/Optional;->ifPresent(Ljava/util/function/Consumer;)V

    new-array p0, v3, [Lorg/apache/poi/xddf/usermodel/text/XDDFFont;

    invoke-virtual {v0, p0}, Ljava/util/LinkedList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object p0

    check-cast p0, [Lorg/apache/poi/xddf/usermodel/text/XDDFFont;

    return-object p0
.end method

.method public getHighlight()Lorg/apache/poi/xddf/usermodel/XDDFColor;
    .locals 3

    new-instance v0, Lf/g;

    const/16 v1, 0x9

    invoke-direct {v0, v1}, Lf/g;-><init>(I)V

    new-instance v1, Lorg/apache/poi/ddf/f0;

    const/16 v2, 0x15

    invoke-direct {v1, v2}, Lorg/apache/poi/ddf/f0;-><init>(I)V

    invoke-direct {p0, v0, v1}, Lorg/apache/poi/xddf/usermodel/text/XDDFTextRun;->findDefinedProperty(Ljava/util/function/Predicate;Ljava/util/function/Function;)Ljava/util/Optional;

    move-result-object p0

    new-instance v0, Lorg/apache/commons/compress/archivers/zip/x0;

    const/16 v1, 0x1b

    invoke-direct {v0, v1}, Lorg/apache/commons/compress/archivers/zip/x0;-><init>(I)V

    invoke-virtual {p0, v0}, Ljava/util/Optional;->map(Ljava/util/function/Function;)Ljava/util/Optional;

    move-result-object p0

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Ljava/util/Optional;->orElse(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lorg/apache/poi/xddf/usermodel/XDDFColor;

    return-object p0
.end method

.method public getHyperlink()Lorg/apache/poi/xddf/usermodel/text/XDDFHyperlink;
    .locals 3

    new-instance v0, Lh4/g;

    const/16 v1, 0xf

    invoke-direct {v0, v1}, Lh4/g;-><init>(I)V

    new-instance v1, Lg5/l;

    const/16 v2, 0x1a

    invoke-direct {v1, v2}, Lg5/l;-><init>(I)V

    invoke-direct {p0, v0, v1}, Lorg/apache/poi/xddf/usermodel/text/XDDFTextRun;->findDefinedProperty(Ljava/util/function/Predicate;Ljava/util/function/Function;)Ljava/util/Optional;

    move-result-object p0

    new-instance v0, Lorg/apache/poi/ddf/f0;

    const/16 v1, 0x18

    invoke-direct {v0, v1}, Lorg/apache/poi/ddf/f0;-><init>(I)V

    invoke-virtual {p0, v0}, Ljava/util/Optional;->map(Ljava/util/function/Function;)Ljava/util/Optional;

    move-result-object p0

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Ljava/util/Optional;->orElse(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lorg/apache/poi/xddf/usermodel/text/XDDFHyperlink;

    return-object p0
.end method

.method public getLanguage()Ljava/util/Locale;
    .locals 3

    new-instance v0, Lf/g;

    const/16 v1, 0x11

    invoke-direct {v0, v1}, Lf/g;-><init>(I)V

    new-instance v1, Lorg/apache/poi/xddf/usermodel/text/k;

    const/4 v2, 0x2

    invoke-direct {v1, v2}, Lorg/apache/poi/xddf/usermodel/text/k;-><init>(I)V

    invoke-direct {p0, v0, v1}, Lorg/apache/poi/xddf/usermodel/text/XDDFTextRun;->findDefinedProperty(Ljava/util/function/Predicate;Ljava/util/function/Function;)Ljava/util/Optional;

    move-result-object p0

    new-instance v0, Lorg/apache/poi/xddf/usermodel/text/i;

    const/16 v1, 0xc

    invoke-direct {v0, v1}, Lorg/apache/poi/xddf/usermodel/text/i;-><init>(I)V

    invoke-virtual {p0, v0}, Ljava/util/Optional;->map(Ljava/util/function/Function;)Ljava/util/Optional;

    move-result-object p0

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Ljava/util/Optional;->orElse(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/util/Locale;

    return-object p0
.end method

.method public getLineProperties()Lorg/apache/poi/xddf/usermodel/XDDFLineProperties;
    .locals 3

    new-instance v0, Lf/g;

    const/16 v1, 0x13

    invoke-direct {v0, v1}, Lf/g;-><init>(I)V

    new-instance v1, Lorg/apache/poi/xddf/usermodel/text/k;

    const/4 v2, 0x4

    invoke-direct {v1, v2}, Lorg/apache/poi/xddf/usermodel/text/k;-><init>(I)V

    invoke-direct {p0, v0, v1}, Lorg/apache/poi/xddf/usermodel/text/XDDFTextRun;->findDefinedProperty(Ljava/util/function/Predicate;Ljava/util/function/Function;)Ljava/util/Optional;

    move-result-object p0

    new-instance v0, Lorg/apache/poi/xddf/usermodel/text/i;

    const/16 v1, 0xf

    invoke-direct {v0, v1}, Lorg/apache/poi/xddf/usermodel/text/i;-><init>(I)V

    invoke-virtual {p0, v0}, Ljava/util/Optional;->map(Ljava/util/function/Function;)Ljava/util/Optional;

    move-result-object p0

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Ljava/util/Optional;->orElse(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lorg/apache/poi/xddf/usermodel/XDDFLineProperties;

    return-object p0
.end method

.method public getMouseOver()Lorg/apache/poi/xddf/usermodel/text/XDDFHyperlink;
    .locals 3

    new-instance v0, Lf/g;

    const/16 v1, 0xc

    invoke-direct {v0, v1}, Lf/g;-><init>(I)V

    new-instance v1, Lorg/apache/poi/ddf/f0;

    const/16 v2, 0x1a

    invoke-direct {v1, v2}, Lorg/apache/poi/ddf/f0;-><init>(I)V

    invoke-direct {p0, v0, v1}, Lorg/apache/poi/xddf/usermodel/text/XDDFTextRun;->findDefinedProperty(Ljava/util/function/Predicate;Ljava/util/function/Function;)Ljava/util/Optional;

    move-result-object p0

    new-instance v0, Lorg/apache/poi/xddf/usermodel/text/i;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Lorg/apache/poi/xddf/usermodel/text/i;-><init>(I)V

    invoke-virtual {p0, v0}, Ljava/util/Optional;->map(Ljava/util/function/Function;)Ljava/util/Optional;

    move-result-object p0

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Ljava/util/Optional;->orElse(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lorg/apache/poi/xddf/usermodel/text/XDDFHyperlink;

    return-object p0
.end method

.method public getNoProof()Ljava/lang/Boolean;
    .locals 3

    new-instance v0, Lo1/c;

    const/16 v1, 0xd

    invoke-direct {v0, v1}, Lo1/c;-><init>(I)V

    new-instance v1, Lorg/apache/commons/compress/archivers/zip/x0;

    const/16 v2, 0x1d

    invoke-direct {v1, v2}, Lorg/apache/commons/compress/archivers/zip/x0;-><init>(I)V

    invoke-direct {p0, v0, v1}, Lorg/apache/poi/xddf/usermodel/text/XDDFTextRun;->findDefinedProperty(Ljava/util/function/Predicate;Ljava/util/function/Function;)Ljava/util/Optional;

    move-result-object p0

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Ljava/util/Optional;->orElse(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Boolean;

    return-object p0
.end method

.method public getNormalizeHeights()Ljava/lang/Boolean;
    .locals 3

    new-instance v0, Lh4/g;

    const/16 v1, 0x12

    invoke-direct {v0, v1}, Lh4/g;-><init>(I)V

    new-instance v1, Lorg/apache/poi/xddf/usermodel/text/j;

    const/4 v2, 0x5

    invoke-direct {v1, v2}, Lorg/apache/poi/xddf/usermodel/text/j;-><init>(I)V

    invoke-direct {p0, v0, v1}, Lorg/apache/poi/xddf/usermodel/text/XDDFTextRun;->findDefinedProperty(Ljava/util/function/Predicate;Ljava/util/function/Function;)Ljava/util/Optional;

    move-result-object p0

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Ljava/util/Optional;->orElse(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Boolean;

    return-object p0
.end method

.method public getParentParagraph()Lorg/apache/poi/xddf/usermodel/text/XDDFTextParagraph;
    .locals 0

    iget-object p0, p0, Lorg/apache/poi/xddf/usermodel/text/XDDFTextRun;->_parent:Lorg/apache/poi/xddf/usermodel/text/XDDFTextParagraph;

    return-object p0
.end method

.method public getProperties()Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextCharacterProperties;
    .locals 1
    .annotation runtime Lorg/apache/poi/util/Internal;
    .end annotation

    invoke-virtual {p0}, Lorg/apache/poi/xddf/usermodel/text/XDDFTextRun;->isLineBreak()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/apache/poi/xddf/usermodel/text/XDDFTextRun;->_tlb:Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextLineBreak;

    invoke-interface {v0}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextLineBreak;->isSetRPr()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object p0, p0, Lorg/apache/poi/xddf/usermodel/text/XDDFTextRun;->_tlb:Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextLineBreak;

    invoke-interface {p0}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextLineBreak;->getRPr()Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextCharacterProperties;

    move-result-object p0

    return-object p0

    :cond_0
    invoke-virtual {p0}, Lorg/apache/poi/xddf/usermodel/text/XDDFTextRun;->isField()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lorg/apache/poi/xddf/usermodel/text/XDDFTextRun;->_tf:Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextField;

    invoke-interface {v0}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextField;->isSetRPr()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object p0, p0, Lorg/apache/poi/xddf/usermodel/text/XDDFTextRun;->_tf:Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextField;

    invoke-interface {p0}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextField;->getRPr()Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextCharacterProperties;

    move-result-object p0

    return-object p0

    :cond_1
    invoke-virtual {p0}, Lorg/apache/poi/xddf/usermodel/text/XDDFTextRun;->isRegularRun()Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lorg/apache/poi/xddf/usermodel/text/XDDFTextRun;->_rtr:Lorg/openxmlformats/schemas/drawingml/x2006/main/CTRegularTextRun;

    invoke-interface {v0}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTRegularTextRun;->isSetRPr()Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object p0, p0, Lorg/apache/poi/xddf/usermodel/text/XDDFTextRun;->_rtr:Lorg/openxmlformats/schemas/drawingml/x2006/main/CTRegularTextRun;

    invoke-interface {p0}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTRegularTextRun;->getRPr()Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextCharacterProperties;

    move-result-object p0

    return-object p0

    :cond_2
    iget-object p0, p0, Lorg/apache/poi/xddf/usermodel/text/XDDFTextRun;->_parent:Lorg/apache/poi/xddf/usermodel/text/XDDFTextParagraph;

    invoke-virtual {p0}, Lorg/apache/poi/xddf/usermodel/text/XDDFTextParagraph;->getDefaultRunProperties()Lorg/apache/poi/xddf/usermodel/text/XDDFRunProperties;

    move-result-object p0

    if-nez p0, :cond_3

    const/4 p0, 0x0

    goto :goto_0

    :cond_3
    invoke-virtual {p0}, Lorg/apache/poi/xddf/usermodel/text/XDDFRunProperties;->getXmlObject()Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextCharacterProperties;

    move-result-object p0

    :goto_0
    return-object p0
.end method

.method public getSpellError()Ljava/lang/Boolean;
    .locals 3

    new-instance v0, Lf/g;

    const/16 v1, 0xa

    invoke-direct {v0, v1}, Lf/g;-><init>(I)V

    new-instance v1, Lorg/apache/poi/ddf/f0;

    const/16 v2, 0x16

    invoke-direct {v1, v2}, Lorg/apache/poi/ddf/f0;-><init>(I)V

    invoke-direct {p0, v0, v1}, Lorg/apache/poi/xddf/usermodel/text/XDDFTextRun;->findDefinedProperty(Ljava/util/function/Predicate;Ljava/util/function/Function;)Ljava/util/Optional;

    move-result-object p0

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Ljava/util/Optional;->orElse(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Boolean;

    return-object p0
.end method

.method public getStrikeThrough()Lorg/apache/poi/xddf/usermodel/text/StrikeType;
    .locals 3

    new-instance v0, Lh4/g;

    const/16 v1, 0xe

    invoke-direct {v0, v1}, Lh4/g;-><init>(I)V

    new-instance v1, Lg5/l;

    const/16 v2, 0x19

    invoke-direct {v1, v2}, Lg5/l;-><init>(I)V

    invoke-direct {p0, v0, v1}, Lorg/apache/poi/xddf/usermodel/text/XDDFTextRun;->findDefinedProperty(Ljava/util/function/Predicate;Ljava/util/function/Function;)Ljava/util/Optional;

    move-result-object p0

    new-instance v0, Lorg/apache/poi/ddf/f0;

    const/16 v1, 0x17

    invoke-direct {v0, v1}, Lorg/apache/poi/ddf/f0;-><init>(I)V

    invoke-virtual {p0, v0}, Ljava/util/Optional;->map(Ljava/util/function/Function;)Ljava/util/Optional;

    move-result-object p0

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Ljava/util/Optional;->orElse(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lorg/apache/poi/xddf/usermodel/text/StrikeType;

    return-object p0
.end method

.method public getText()Ljava/lang/String;
    .locals 1

    invoke-virtual {p0}, Lorg/apache/poi/xddf/usermodel/text/XDDFTextRun;->isLineBreak()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string p0, "\n"

    return-object p0

    :cond_0
    invoke-virtual {p0}, Lorg/apache/poi/xddf/usermodel/text/XDDFTextRun;->isField()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object p0, p0, Lorg/apache/poi/xddf/usermodel/text/XDDFTextRun;->_tf:Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextField;

    invoke-interface {p0}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextField;->getT()Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_1
    iget-object p0, p0, Lorg/apache/poi/xddf/usermodel/text/XDDFTextRun;->_rtr:Lorg/openxmlformats/schemas/drawingml/x2006/main/CTRegularTextRun;

    invoke-interface {p0}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTRegularTextRun;->getT()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public getUnderline()Lorg/apache/poi/xddf/usermodel/text/UnderlineType;
    .locals 3

    new-instance v0, Lo1/c;

    const/16 v1, 0xe

    invoke-direct {v0, v1}, Lo1/c;-><init>(I)V

    new-instance v1, Lorg/apache/poi/xddf/usermodel/text/i;

    const/4 v2, 0x3

    invoke-direct {v1, v2}, Lorg/apache/poi/xddf/usermodel/text/i;-><init>(I)V

    invoke-direct {p0, v0, v1}, Lorg/apache/poi/xddf/usermodel/text/XDDFTextRun;->findDefinedProperty(Ljava/util/function/Predicate;Ljava/util/function/Function;)Ljava/util/Optional;

    move-result-object p0

    new-instance v0, Lorg/apache/poi/xddf/usermodel/text/j;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lorg/apache/poi/xddf/usermodel/text/j;-><init>(I)V

    invoke-virtual {p0, v0}, Ljava/util/Optional;->map(Ljava/util/function/Function;)Ljava/util/Optional;

    move-result-object p0

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Ljava/util/Optional;->orElse(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lorg/apache/poi/xddf/usermodel/text/UnderlineType;

    return-object p0
.end method

.method public isBold()Z
    .locals 3

    new-instance v0, Lo1/c;

    const/16 v1, 0x15

    invoke-direct {v0, v1}, Lo1/c;-><init>(I)V

    new-instance v1, Lorg/apache/poi/xddf/usermodel/text/i;

    const/16 v2, 0xe

    invoke-direct {v1, v2}, Lorg/apache/poi/xddf/usermodel/text/i;-><init>(I)V

    invoke-direct {p0, v0, v1}, Lorg/apache/poi/xddf/usermodel/text/XDDFTextRun;->findDefinedProperty(Ljava/util/function/Predicate;Ljava/util/function/Function;)Ljava/util/Optional;

    move-result-object p0

    sget-object v0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-virtual {p0, v0}, Ljava/util/Optional;->orElse(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Boolean;

    invoke-virtual {p0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p0

    return p0
.end method

.method public isCapitals()Z
    .locals 3

    new-instance v0, Lo1/c;

    const/16 v1, 0x14

    invoke-direct {v0, v1}, Lo1/c;-><init>(I)V

    new-instance v1, Lorg/apache/poi/xddf/usermodel/text/i;

    const/16 v2, 0xd

    invoke-direct {v1, v2}, Lorg/apache/poi/xddf/usermodel/text/i;-><init>(I)V

    invoke-direct {p0, v0, v1}, Lorg/apache/poi/xddf/usermodel/text/XDDFTextRun;->findDefinedProperty(Ljava/util/function/Predicate;Ljava/util/function/Function;)Ljava/util/Optional;

    move-result-object p0

    new-instance v0, Lorg/apache/poi/xddf/usermodel/text/j;

    const/4 v1, 0x6

    invoke-direct {v0, v1}, Lorg/apache/poi/xddf/usermodel/text/j;-><init>(I)V

    invoke-virtual {p0, v0}, Ljava/util/Optional;->map(Ljava/util/function/Function;)Ljava/util/Optional;

    move-result-object p0

    sget-object v0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-virtual {p0, v0}, Ljava/util/Optional;->orElse(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Boolean;

    invoke-virtual {p0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p0

    return p0
.end method

.method public isField()Z
    .locals 0

    iget-object p0, p0, Lorg/apache/poi/xddf/usermodel/text/XDDFTextRun;->_tf:Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextField;

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public isItalic()Z
    .locals 3

    new-instance v0, Lo1/c;

    const/16 v1, 0xf

    invoke-direct {v0, v1}, Lo1/c;-><init>(I)V

    new-instance v1, Lorg/apache/poi/xddf/usermodel/text/i;

    const/4 v2, 0x4

    invoke-direct {v1, v2}, Lorg/apache/poi/xddf/usermodel/text/i;-><init>(I)V

    invoke-direct {p0, v0, v1}, Lorg/apache/poi/xddf/usermodel/text/XDDFTextRun;->findDefinedProperty(Ljava/util/function/Predicate;Ljava/util/function/Function;)Ljava/util/Optional;

    move-result-object p0

    sget-object v0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-virtual {p0, v0}, Ljava/util/Optional;->orElse(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Boolean;

    invoke-virtual {p0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p0

    return p0
.end method

.method public isKumimoji()Z
    .locals 3

    new-instance v0, Lo1/c;

    const/16 v1, 0x13

    invoke-direct {v0, v1}, Lo1/c;-><init>(I)V

    new-instance v1, Lorg/apache/poi/xddf/usermodel/text/i;

    const/16 v2, 0xb

    invoke-direct {v1, v2}, Lorg/apache/poi/xddf/usermodel/text/i;-><init>(I)V

    invoke-direct {p0, v0, v1}, Lorg/apache/poi/xddf/usermodel/text/XDDFTextRun;->findDefinedProperty(Ljava/util/function/Predicate;Ljava/util/function/Function;)Ljava/util/Optional;

    move-result-object p0

    sget-object v0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-virtual {p0, v0}, Ljava/util/Optional;->orElse(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Boolean;

    invoke-virtual {p0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p0

    return p0
.end method

.method public isLineBreak()Z
    .locals 0

    iget-object p0, p0, Lorg/apache/poi/xddf/usermodel/text/XDDFTextRun;->_tlb:Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextLineBreak;

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public isRegularRun()Z
    .locals 0

    iget-object p0, p0, Lorg/apache/poi/xddf/usermodel/text/XDDFTextRun;->_rtr:Lorg/openxmlformats/schemas/drawingml/x2006/main/CTRegularTextRun;

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public isStrikeThrough()Z
    .locals 3

    new-instance v0, Lf/g;

    const/16 v1, 0xe

    invoke-direct {v0, v1}, Lf/g;-><init>(I)V

    new-instance v1, Lorg/apache/poi/ddf/f0;

    const/16 v2, 0x1c

    invoke-direct {v1, v2}, Lorg/apache/poi/ddf/f0;-><init>(I)V

    invoke-direct {p0, v0, v1}, Lorg/apache/poi/xddf/usermodel/text/XDDFTextRun;->findDefinedProperty(Ljava/util/function/Predicate;Ljava/util/function/Function;)Ljava/util/Optional;

    move-result-object p0

    new-instance v0, Lorg/apache/poi/xddf/usermodel/text/i;

    const/4 v1, 0x5

    invoke-direct {v0, v1}, Lorg/apache/poi/xddf/usermodel/text/i;-><init>(I)V

    invoke-virtual {p0, v0}, Ljava/util/Optional;->map(Ljava/util/function/Function;)Ljava/util/Optional;

    move-result-object p0

    sget-object v0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-virtual {p0, v0}, Ljava/util/Optional;->orElse(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Boolean;

    invoke-virtual {p0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p0

    return p0
.end method

.method public isSubscript()Z
    .locals 3

    new-instance v0, Lh4/g;

    const/16 v1, 0x14

    invoke-direct {v0, v1}, Lh4/g;-><init>(I)V

    new-instance v1, Lorg/apache/poi/xddf/usermodel/text/j;

    const/16 v2, 0x8

    invoke-direct {v1, v2}, Lorg/apache/poi/xddf/usermodel/text/j;-><init>(I)V

    invoke-direct {p0, v0, v1}, Lorg/apache/poi/xddf/usermodel/text/XDDFTextRun;->findDefinedProperty(Ljava/util/function/Predicate;Ljava/util/function/Function;)Ljava/util/Optional;

    move-result-object p0

    new-instance v0, Lorg/apache/poi/xddf/usermodel/text/k;

    const/4 v1, 0x7

    invoke-direct {v0, v1}, Lorg/apache/poi/xddf/usermodel/text/k;-><init>(I)V

    invoke-virtual {p0, v0}, Ljava/util/Optional;->map(Ljava/util/function/Function;)Ljava/util/Optional;

    move-result-object p0

    new-instance v0, Lorg/apache/poi/xddf/usermodel/text/i;

    const/16 v1, 0x10

    invoke-direct {v0, v1}, Lorg/apache/poi/xddf/usermodel/text/i;-><init>(I)V

    invoke-virtual {p0, v0}, Ljava/util/Optional;->map(Ljava/util/function/Function;)Ljava/util/Optional;

    move-result-object p0

    sget-object v0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-virtual {p0, v0}, Ljava/util/Optional;->orElse(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Boolean;

    invoke-virtual {p0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p0

    return p0
.end method

.method public isSuperscript()Z
    .locals 3

    new-instance v0, Lf/g;

    const/16 v1, 0xd

    invoke-direct {v0, v1}, Lf/g;-><init>(I)V

    new-instance v1, Lorg/apache/poi/ddf/f0;

    const/16 v2, 0x1b

    invoke-direct {v1, v2}, Lorg/apache/poi/ddf/f0;-><init>(I)V

    invoke-direct {p0, v0, v1}, Lorg/apache/poi/xddf/usermodel/text/XDDFTextRun;->findDefinedProperty(Ljava/util/function/Predicate;Ljava/util/function/Function;)Ljava/util/Optional;

    move-result-object p0

    new-instance v0, Lorg/apache/poi/xddf/usermodel/text/i;

    const/4 v1, 0x2

    invoke-direct {v0, v1}, Lorg/apache/poi/xddf/usermodel/text/i;-><init>(I)V

    invoke-virtual {p0, v0}, Ljava/util/Optional;->map(Ljava/util/function/Function;)Ljava/util/Optional;

    move-result-object p0

    new-instance v0, Lg5/l;

    const/16 v1, 0x1d

    invoke-direct {v0, v1}, Lg5/l;-><init>(I)V

    invoke-virtual {p0, v0}, Ljava/util/Optional;->map(Ljava/util/function/Function;)Ljava/util/Optional;

    move-result-object p0

    sget-object v0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-virtual {p0, v0}, Ljava/util/Optional;->orElse(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Boolean;

    invoke-virtual {p0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p0

    return p0
.end method

.method public isUnderline()Z
    .locals 3

    new-instance v0, Lo1/c;

    const/16 v1, 0x11

    invoke-direct {v0, v1}, Lo1/c;-><init>(I)V

    new-instance v1, Lorg/apache/poi/xddf/usermodel/text/i;

    const/16 v2, 0x9

    invoke-direct {v1, v2}, Lorg/apache/poi/xddf/usermodel/text/i;-><init>(I)V

    invoke-direct {p0, v0, v1}, Lorg/apache/poi/xddf/usermodel/text/XDDFTextRun;->findDefinedProperty(Ljava/util/function/Predicate;Ljava/util/function/Function;)Ljava/util/Optional;

    move-result-object p0

    new-instance v0, Lorg/apache/poi/xddf/usermodel/text/j;

    const/4 v1, 0x3

    invoke-direct {v0, v1}, Lorg/apache/poi/xddf/usermodel/text/j;-><init>(I)V

    invoke-virtual {p0, v0}, Ljava/util/Optional;->map(Ljava/util/function/Function;)Ljava/util/Optional;

    move-result-object p0

    sget-object v0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-virtual {p0, v0}, Ljava/util/Optional;->orElse(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Boolean;

    invoke-virtual {p0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p0

    return p0
.end method

.method public linkToAction(Ljava/lang/String;)Lorg/apache/poi/xddf/usermodel/text/XDDFHyperlink;
    .locals 2

    new-instance v0, Lorg/apache/poi/xddf/usermodel/text/XDDFHyperlink;

    const-string v1, ""

    invoke-direct {v0, v1, p1}, Lorg/apache/poi/xddf/usermodel/text/XDDFHyperlink;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-direct {p0}, Lorg/apache/poi/xddf/usermodel/text/XDDFTextRun;->getOrCreateProperties()Lorg/apache/poi/xddf/usermodel/text/XDDFRunProperties;

    move-result-object p0

    invoke-virtual {p0, v0}, Lorg/apache/poi/xddf/usermodel/text/XDDFRunProperties;->setHyperlink(Lorg/apache/poi/xddf/usermodel/text/XDDFHyperlink;)V

    return-object v0
.end method

.method public linkToExternal(Ljava/lang/String;Lorg/apache/poi/openxml4j/opc/PackagePart;Lorg/apache/poi/ooxml/POIXMLRelation;)Lorg/apache/poi/xddf/usermodel/text/XDDFHyperlink;
    .locals 0

    invoke-virtual {p3}, Lorg/apache/poi/ooxml/POIXMLRelation;->getRelation()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p2, p1, p3}, Lorg/apache/poi/openxml4j/opc/PackagePart;->addExternalRelationship(Ljava/lang/String;Ljava/lang/String;)Lorg/apache/poi/openxml4j/opc/PackageRelationship;

    move-result-object p1

    new-instance p2, Lorg/apache/poi/xddf/usermodel/text/XDDFHyperlink;

    invoke-virtual {p1}, Lorg/apache/poi/openxml4j/opc/PackageRelationship;->getId()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Lorg/apache/poi/xddf/usermodel/text/XDDFHyperlink;-><init>(Ljava/lang/String;)V

    invoke-direct {p0}, Lorg/apache/poi/xddf/usermodel/text/XDDFTextRun;->getOrCreateProperties()Lorg/apache/poi/xddf/usermodel/text/XDDFRunProperties;

    move-result-object p0

    invoke-virtual {p0, p2}, Lorg/apache/poi/xddf/usermodel/text/XDDFRunProperties;->setHyperlink(Lorg/apache/poi/xddf/usermodel/text/XDDFHyperlink;)V

    return-object p2
.end method

.method public linkToInternal(Ljava/lang/String;Lorg/apache/poi/openxml4j/opc/PackagePart;Lorg/apache/poi/ooxml/POIXMLRelation;Lorg/apache/poi/openxml4j/opc/PackagePartName;)Lorg/apache/poi/xddf/usermodel/text/XDDFHyperlink;
    .locals 1

    sget-object v0, Lorg/apache/poi/openxml4j/opc/TargetMode;->INTERNAL:Lorg/apache/poi/openxml4j/opc/TargetMode;

    invoke-virtual {p3}, Lorg/apache/poi/ooxml/POIXMLRelation;->getRelation()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p2, p4, v0, p3}, Lorg/apache/poi/openxml4j/opc/PackagePart;->addRelationship(Lorg/apache/poi/openxml4j/opc/PackagePartName;Lorg/apache/poi/openxml4j/opc/TargetMode;Ljava/lang/String;)Lorg/apache/poi/openxml4j/opc/PackageRelationship;

    move-result-object p2

    new-instance p3, Lorg/apache/poi/xddf/usermodel/text/XDDFHyperlink;

    invoke-virtual {p2}, Lorg/apache/poi/openxml4j/opc/PackageRelationship;->getId()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p3, p2, p1}, Lorg/apache/poi/xddf/usermodel/text/XDDFHyperlink;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-direct {p0}, Lorg/apache/poi/xddf/usermodel/text/XDDFTextRun;->getOrCreateProperties()Lorg/apache/poi/xddf/usermodel/text/XDDFRunProperties;

    move-result-object p0

    invoke-virtual {p0, p3}, Lorg/apache/poi/xddf/usermodel/text/XDDFRunProperties;->setHyperlink(Lorg/apache/poi/xddf/usermodel/text/XDDFHyperlink;)V

    return-object p3
.end method

.method public setAlternativeLanguage(Ljava/util/Locale;)V
    .locals 0

    invoke-direct {p0}, Lorg/apache/poi/xddf/usermodel/text/XDDFTextRun;->getOrCreateProperties()Lorg/apache/poi/xddf/usermodel/text/XDDFRunProperties;

    move-result-object p0

    invoke-virtual {p0, p1}, Lorg/apache/poi/xddf/usermodel/text/XDDFRunProperties;->setAlternativeLanguage(Ljava/util/Locale;)V

    return-void
.end method

.method public setBaseline(Ljava/lang/Double;)V
    .locals 4

    if-nez p1, :cond_0

    invoke-direct {p0}, Lorg/apache/poi/xddf/usermodel/text/XDDFTextRun;->getOrCreateProperties()Lorg/apache/poi/xddf/usermodel/text/XDDFRunProperties;

    move-result-object p0

    const/4 p1, 0x0

    invoke-virtual {p0, p1}, Lorg/apache/poi/xddf/usermodel/text/XDDFRunProperties;->setBaseline(Ljava/lang/Integer;)V

    goto :goto_0

    :cond_0
    invoke-direct {p0}, Lorg/apache/poi/xddf/usermodel/text/XDDFTextRun;->getOrCreateProperties()Lorg/apache/poi/xddf/usermodel/text/XDDFRunProperties;

    move-result-object p0

    invoke-virtual {p1}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v0

    const-wide v2, 0x408f400000000000L    # 1000.0

    mul-double/2addr v0, v2

    double-to-int p1, v0

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {p0, p1}, Lorg/apache/poi/xddf/usermodel/text/XDDFRunProperties;->setBaseline(Ljava/lang/Integer;)V

    :goto_0
    return-void
.end method

.method public setBold(Ljava/lang/Boolean;)V
    .locals 0

    invoke-direct {p0}, Lorg/apache/poi/xddf/usermodel/text/XDDFTextRun;->getOrCreateProperties()Lorg/apache/poi/xddf/usermodel/text/XDDFRunProperties;

    move-result-object p0

    invoke-virtual {p0, p1}, Lorg/apache/poi/xddf/usermodel/text/XDDFRunProperties;->setBold(Ljava/lang/Boolean;)V

    return-void
.end method

.method public setBookmark(Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0}, Lorg/apache/poi/xddf/usermodel/text/XDDFTextRun;->getOrCreateProperties()Lorg/apache/poi/xddf/usermodel/text/XDDFRunProperties;

    move-result-object p0

    invoke-virtual {p0, p1}, Lorg/apache/poi/xddf/usermodel/text/XDDFRunProperties;->setBookmark(Ljava/lang/String;)V

    return-void
.end method

.method public setCapitals(Lorg/apache/poi/xddf/usermodel/text/CapsType;)V
    .locals 0

    invoke-direct {p0}, Lorg/apache/poi/xddf/usermodel/text/XDDFTextRun;->getOrCreateProperties()Lorg/apache/poi/xddf/usermodel/text/XDDFRunProperties;

    move-result-object p0

    invoke-virtual {p0, p1}, Lorg/apache/poi/xddf/usermodel/text/XDDFRunProperties;->setCapitals(Lorg/apache/poi/xddf/usermodel/text/CapsType;)V

    return-void
.end method

.method public setCharacterKerning(Ljava/lang/Double;)V
    .locals 0

    invoke-direct {p0}, Lorg/apache/poi/xddf/usermodel/text/XDDFTextRun;->getOrCreateProperties()Lorg/apache/poi/xddf/usermodel/text/XDDFRunProperties;

    move-result-object p0

    invoke-virtual {p0, p1}, Lorg/apache/poi/xddf/usermodel/text/XDDFRunProperties;->setCharacterKerning(Ljava/lang/Double;)V

    return-void
.end method

.method public setCharacterSpacing(Ljava/lang/Double;)V
    .locals 0

    invoke-direct {p0}, Lorg/apache/poi/xddf/usermodel/text/XDDFTextRun;->getOrCreateProperties()Lorg/apache/poi/xddf/usermodel/text/XDDFRunProperties;

    move-result-object p0

    invoke-virtual {p0, p1}, Lorg/apache/poi/xddf/usermodel/text/XDDFRunProperties;->setCharacterSpacing(Ljava/lang/Double;)V

    return-void
.end method

.method public setDirty(Ljava/lang/Boolean;)V
    .locals 0

    invoke-direct {p0}, Lorg/apache/poi/xddf/usermodel/text/XDDFTextRun;->getOrCreateProperties()Lorg/apache/poi/xddf/usermodel/text/XDDFRunProperties;

    move-result-object p0

    invoke-virtual {p0, p1}, Lorg/apache/poi/xddf/usermodel/text/XDDFRunProperties;->setDirty(Ljava/lang/Boolean;)V

    return-void
.end method

.method public setFillProperties(Lorg/apache/poi/xddf/usermodel/XDDFFillProperties;)V
    .locals 0

    invoke-direct {p0}, Lorg/apache/poi/xddf/usermodel/text/XDDFTextRun;->getOrCreateProperties()Lorg/apache/poi/xddf/usermodel/text/XDDFRunProperties;

    move-result-object p0

    invoke-virtual {p0, p1}, Lorg/apache/poi/xddf/usermodel/text/XDDFRunProperties;->setFillProperties(Lorg/apache/poi/xddf/usermodel/XDDFFillProperties;)V

    return-void
.end method

.method public setFontColor(Lorg/apache/poi/xddf/usermodel/XDDFColor;)V
    .locals 1

    new-instance v0, Lorg/apache/poi/xddf/usermodel/XDDFSolidFillProperties;

    invoke-direct {v0}, Lorg/apache/poi/xddf/usermodel/XDDFSolidFillProperties;-><init>()V

    invoke-virtual {v0, p1}, Lorg/apache/poi/xddf/usermodel/XDDFSolidFillProperties;->setColor(Lorg/apache/poi/xddf/usermodel/XDDFColor;)V

    invoke-virtual {p0, v0}, Lorg/apache/poi/xddf/usermodel/text/XDDFTextRun;->setFillProperties(Lorg/apache/poi/xddf/usermodel/XDDFFillProperties;)V

    return-void
.end method

.method public setFontSize(Ljava/lang/Double;)V
    .locals 0

    invoke-direct {p0}, Lorg/apache/poi/xddf/usermodel/text/XDDFTextRun;->getOrCreateProperties()Lorg/apache/poi/xddf/usermodel/text/XDDFRunProperties;

    move-result-object p0

    invoke-virtual {p0, p1}, Lorg/apache/poi/xddf/usermodel/text/XDDFRunProperties;->setFontSize(Ljava/lang/Double;)V

    return-void
.end method

.method public setFonts([Lorg/apache/poi/xddf/usermodel/text/XDDFFont;)V
    .locals 0

    invoke-direct {p0}, Lorg/apache/poi/xddf/usermodel/text/XDDFTextRun;->getOrCreateProperties()Lorg/apache/poi/xddf/usermodel/text/XDDFRunProperties;

    move-result-object p0

    invoke-virtual {p0, p1}, Lorg/apache/poi/xddf/usermodel/text/XDDFRunProperties;->setFonts([Lorg/apache/poi/xddf/usermodel/text/XDDFFont;)V

    return-void
.end method

.method public setHighlight(Lorg/apache/poi/xddf/usermodel/XDDFColor;)V
    .locals 0

    invoke-direct {p0}, Lorg/apache/poi/xddf/usermodel/text/XDDFTextRun;->getOrCreateProperties()Lorg/apache/poi/xddf/usermodel/text/XDDFRunProperties;

    move-result-object p0

    invoke-virtual {p0, p1}, Lorg/apache/poi/xddf/usermodel/text/XDDFRunProperties;->setHighlight(Lorg/apache/poi/xddf/usermodel/XDDFColor;)V

    return-void
.end method

.method public setItalic(Ljava/lang/Boolean;)V
    .locals 0

    invoke-direct {p0}, Lorg/apache/poi/xddf/usermodel/text/XDDFTextRun;->getOrCreateProperties()Lorg/apache/poi/xddf/usermodel/text/XDDFRunProperties;

    move-result-object p0

    invoke-virtual {p0, p1}, Lorg/apache/poi/xddf/usermodel/text/XDDFRunProperties;->setItalic(Ljava/lang/Boolean;)V

    return-void
.end method

.method public setKumimoji(Ljava/lang/Boolean;)V
    .locals 0

    invoke-direct {p0}, Lorg/apache/poi/xddf/usermodel/text/XDDFTextRun;->getOrCreateProperties()Lorg/apache/poi/xddf/usermodel/text/XDDFRunProperties;

    move-result-object p0

    invoke-virtual {p0, p1}, Lorg/apache/poi/xddf/usermodel/text/XDDFRunProperties;->setKumimoji(Ljava/lang/Boolean;)V

    return-void
.end method

.method public setLanguage(Ljava/util/Locale;)V
    .locals 0

    invoke-direct {p0}, Lorg/apache/poi/xddf/usermodel/text/XDDFTextRun;->getOrCreateProperties()Lorg/apache/poi/xddf/usermodel/text/XDDFRunProperties;

    move-result-object p0

    invoke-virtual {p0, p1}, Lorg/apache/poi/xddf/usermodel/text/XDDFRunProperties;->setLanguage(Ljava/util/Locale;)V

    return-void
.end method

.method public setLineProperties(Lorg/apache/poi/xddf/usermodel/XDDFLineProperties;)V
    .locals 0

    invoke-direct {p0}, Lorg/apache/poi/xddf/usermodel/text/XDDFTextRun;->getOrCreateProperties()Lorg/apache/poi/xddf/usermodel/text/XDDFRunProperties;

    move-result-object p0

    invoke-virtual {p0, p1}, Lorg/apache/poi/xddf/usermodel/text/XDDFRunProperties;->setLineProperties(Lorg/apache/poi/xddf/usermodel/XDDFLineProperties;)V

    return-void
.end method

.method public setNoProof(Ljava/lang/Boolean;)V
    .locals 0

    invoke-direct {p0}, Lorg/apache/poi/xddf/usermodel/text/XDDFTextRun;->getOrCreateProperties()Lorg/apache/poi/xddf/usermodel/text/XDDFRunProperties;

    move-result-object p0

    invoke-virtual {p0, p1}, Lorg/apache/poi/xddf/usermodel/text/XDDFRunProperties;->setNoProof(Ljava/lang/Boolean;)V

    return-void
.end method

.method public setNormalizeHeights(Ljava/lang/Boolean;)V
    .locals 0

    invoke-direct {p0}, Lorg/apache/poi/xddf/usermodel/text/XDDFTextRun;->getOrCreateProperties()Lorg/apache/poi/xddf/usermodel/text/XDDFRunProperties;

    move-result-object p0

    invoke-virtual {p0, p1}, Lorg/apache/poi/xddf/usermodel/text/XDDFRunProperties;->setNormalizeHeights(Ljava/lang/Boolean;)V

    return-void
.end method

.method public setSpellError(Ljava/lang/Boolean;)V
    .locals 0

    invoke-direct {p0}, Lorg/apache/poi/xddf/usermodel/text/XDDFTextRun;->getOrCreateProperties()Lorg/apache/poi/xddf/usermodel/text/XDDFRunProperties;

    move-result-object p0

    invoke-virtual {p0, p1}, Lorg/apache/poi/xddf/usermodel/text/XDDFRunProperties;->setSpellError(Ljava/lang/Boolean;)V

    return-void
.end method

.method public setStrikeThrough(Lorg/apache/poi/xddf/usermodel/text/StrikeType;)V
    .locals 0

    invoke-direct {p0}, Lorg/apache/poi/xddf/usermodel/text/XDDFTextRun;->getOrCreateProperties()Lorg/apache/poi/xddf/usermodel/text/XDDFRunProperties;

    move-result-object p0

    invoke-virtual {p0, p1}, Lorg/apache/poi/xddf/usermodel/text/XDDFRunProperties;->setStrikeThrough(Lorg/apache/poi/xddf/usermodel/text/StrikeType;)V

    return-void
.end method

.method public setSubscript(Ljava/lang/Double;)V
    .locals 2

    if-nez p1, :cond_0

    const/4 p1, 0x0

    goto :goto_0

    :cond_0
    invoke-virtual {p1}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Math;->abs(D)D

    move-result-wide v0

    neg-double v0, v0

    invoke-static {v0, v1}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object p1

    :goto_0
    invoke-virtual {p0, p1}, Lorg/apache/poi/xddf/usermodel/text/XDDFTextRun;->setBaseline(Ljava/lang/Double;)V

    return-void
.end method

.method public setSuperscript(Ljava/lang/Double;)V
    .locals 2

    if-nez p1, :cond_0

    const/4 p1, 0x0

    goto :goto_0

    :cond_0
    invoke-virtual {p1}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Math;->abs(D)D

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object p1

    :goto_0
    invoke-virtual {p0, p1}, Lorg/apache/poi/xddf/usermodel/text/XDDFTextRun;->setBaseline(Ljava/lang/Double;)V

    return-void
.end method

.method public setText(Ljava/lang/String;)V
    .locals 1

    invoke-virtual {p0}, Lorg/apache/poi/xddf/usermodel/text/XDDFTextRun;->isField()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object p0, p0, Lorg/apache/poi/xddf/usermodel/text/XDDFTextRun;->_tf:Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextField;

    invoke-interface {p0, p1}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextField;->setT(Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Lorg/apache/poi/xddf/usermodel/text/XDDFTextRun;->isRegularRun()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object p0, p0, Lorg/apache/poi/xddf/usermodel/text/XDDFTextRun;->_rtr:Lorg/openxmlformats/schemas/drawingml/x2006/main/CTRegularTextRun;

    invoke-interface {p0, p1}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTRegularTextRun;->setT(Ljava/lang/String;)V

    :cond_1
    :goto_0
    return-void
.end method

.method public setUnderline(Lorg/apache/poi/xddf/usermodel/text/UnderlineType;)V
    .locals 0

    invoke-direct {p0}, Lorg/apache/poi/xddf/usermodel/text/XDDFTextRun;->getOrCreateProperties()Lorg/apache/poi/xddf/usermodel/text/XDDFRunProperties;

    move-result-object p0

    invoke-virtual {p0, p1}, Lorg/apache/poi/xddf/usermodel/text/XDDFRunProperties;->setUnderline(Lorg/apache/poi/xddf/usermodel/text/UnderlineType;)V

    return-void
.end method
