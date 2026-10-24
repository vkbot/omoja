.class public final synthetic Lorg/apache/poi/xddf/usermodel/text/j;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/function/Function;


# instance fields
.field public final synthetic a:I


# direct methods
.method public synthetic constructor <init>(I)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lorg/apache/poi/xddf/usermodel/text/j;->a:I

    return-void
.end method


# virtual methods
.method public final apply(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    iget p0, p0, Lorg/apache/poi/xddf/usermodel/text/j;->a:I

    packed-switch p0, :pswitch_data_0

    check-cast p1, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTTblCellMar;

    invoke-interface {p1}, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTTblCellMar;->addNewTop()Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTTblWidth;

    move-result-object p0

    return-object p0

    :pswitch_0
    check-cast p1, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTTblCellMar;

    invoke-interface {p1}, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTTblCellMar;->addNewRight()Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTTblWidth;

    move-result-object p0

    return-object p0

    :pswitch_1
    check-cast p1, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTTblBorders;

    invoke-interface {p1}, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTTblBorders;->isSetTop()Z

    move-result p0

    invoke-static {p0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p0

    return-object p0

    :pswitch_2
    check-cast p1, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTTblBorders;

    invoke-interface {p1}, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTTblBorders;->isSetLeft()Z

    move-result p0

    invoke-static {p0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p0

    return-object p0

    :pswitch_3
    check-cast p1, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTTblBorders;

    invoke-interface {p1}, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTTblBorders;->isSetInsideH()Z

    move-result p0

    invoke-static {p0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p0

    return-object p0

    :pswitch_4
    check-cast p1, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTTblBorders;

    invoke-interface {p1}, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTTblBorders;->addNewBottom()Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTBorder;

    move-result-object p0

    return-object p0

    :pswitch_5
    check-cast p1, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTTblBorders;

    invoke-interface {p1}, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTTblBorders;->addNewRight()Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTBorder;

    move-result-object p0

    return-object p0

    :pswitch_6
    check-cast p1, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTTblBorders;

    invoke-interface {p1}, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTTblBorders;->addNewTop()Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTBorder;

    move-result-object p0

    return-object p0

    :pswitch_7
    check-cast p1, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTTblBorders;

    invoke-interface {p1}, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTTblBorders;->isSetTop()Z

    move-result p0

    invoke-static {p0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p0

    return-object p0

    :pswitch_8
    check-cast p1, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTTblCellMar;

    invoke-interface {p1}, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTTblCellMar;->getLeft()Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTTblWidth;

    move-result-object p0

    return-object p0

    :pswitch_9
    check-cast p1, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextParagraphProperties;

    invoke-static {p1}, Lorg/apache/poi/xslf/usermodel/XSLFTextParagraph;->p(Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextParagraphProperties;)Ljava/util/function/Supplier;

    move-result-object p0

    return-object p0

    :pswitch_a
    check-cast p1, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextParagraphProperties;

    invoke-static {p1}, Lorg/apache/poi/xslf/usermodel/XSLFTextParagraph;->u(Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextParagraphProperties;)Ljava/util/function/Supplier;

    move-result-object p0

    return-object p0

    :pswitch_b
    check-cast p1, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextParagraphProperties;

    invoke-static {p1}, Lorg/apache/poi/xslf/usermodel/XSLFTextParagraph;->y(Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextParagraphProperties;)Lorg/apache/poi/xslf/usermodel/XSLFTextParagraph$Procedure;

    move-result-object p0

    return-object p0

    :pswitch_c
    check-cast p1, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextParagraphProperties;

    invoke-static {p1}, Lorg/apache/poi/xslf/usermodel/XSLFTextParagraph;->A(Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextParagraphProperties;)Lorg/apache/poi/xslf/usermodel/XSLFTextParagraph$Procedure;

    move-result-object p0

    return-object p0

    :pswitch_d
    check-cast p1, Lorg/openxmlformats/schemas/presentationml/x2006/main/CTHeaderFooter;

    invoke-static {p1}, Lorg/apache/poi/xslf/usermodel/XSLFPlaceholderDetails;->d(Lorg/openxmlformats/schemas/presentationml/x2006/main/CTHeaderFooter;)Ljava/util/function/Consumer;

    move-result-object p0

    return-object p0

    :pswitch_e
    new-instance p0, Lorg/apache/poi/xdgf/usermodel/section/geometry/PolyLineTo;

    check-cast p1, La3/m;

    invoke-direct {p0, p1}, Lorg/apache/poi/xdgf/usermodel/section/geometry/PolyLineTo;-><init>(La3/m;)V

    return-object p0

    :pswitch_f
    new-instance p0, Lorg/apache/poi/xdgf/usermodel/section/geometry/LineTo;

    check-cast p1, La3/m;

    invoke-direct {p0, p1}, Lorg/apache/poi/xdgf/usermodel/section/geometry/LineTo;-><init>(La3/m;)V

    return-object p0

    :pswitch_10
    new-instance p0, Lorg/apache/poi/xdgf/usermodel/section/geometry/Ellipse;

    check-cast p1, La3/m;

    invoke-direct {p0, p1}, Lorg/apache/poi/xdgf/usermodel/section/geometry/Ellipse;-><init>(La3/m;)V

    return-object p0

    :pswitch_11
    new-instance p0, Lorg/apache/poi/xdgf/usermodel/section/geometry/SplineKnot;

    check-cast p1, La3/m;

    invoke-direct {p0, p1}, Lorg/apache/poi/xdgf/usermodel/section/geometry/SplineKnot;-><init>(La3/m;)V

    return-object p0

    :pswitch_12
    new-instance p0, Lorg/apache/poi/xdgf/usermodel/section/geometry/RelLineTo;

    check-cast p1, La3/m;

    invoke-direct {p0, p1}, Lorg/apache/poi/xdgf/usermodel/section/geometry/RelLineTo;-><init>(La3/m;)V

    return-object p0

    :pswitch_13
    check-cast p1, Ljava/lang/Long;

    invoke-virtual {p1}, Ljava/lang/Long;->longValue()J

    move-result-wide p0

    invoke-static {p0, p1}, Lorg/apache/poi/util/Units;->toPoints(J)D

    move-result-wide p0

    invoke-static {p0, p1}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object p0

    return-object p0

    :pswitch_14
    check-cast p1, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextCharacterProperties;

    invoke-interface {p1}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextCharacterProperties;->xgetBaseline()Lorg/openxmlformats/schemas/drawingml/x2006/main/STPercentage;

    move-result-object p0

    return-object p0

    :pswitch_15
    check-cast p1, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextCharacterProperties;

    invoke-interface {p1}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextCharacterProperties;->getKern()I

    move-result p0

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    return-object p0

    :pswitch_16
    check-cast p1, Lorg/openxmlformats/schemas/drawingml/x2006/main/STTextCapsType$Enum;

    invoke-static {p1}, Lorg/apache/poi/xddf/usermodel/text/XDDFTextRun;->j(Lorg/openxmlformats/schemas/drawingml/x2006/main/STTextCapsType$Enum;)Ljava/lang/Boolean;

    move-result-object p0

    return-object p0

    :pswitch_17
    check-cast p1, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextCharacterProperties;

    invoke-interface {p1}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextCharacterProperties;->getNormalizeH()Z

    move-result p0

    invoke-static {p0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p0

    return-object p0

    :pswitch_18
    check-cast p1, Ljava/lang/String;

    invoke-static {p1}, Ljava/util/Locale;->forLanguageTag(Ljava/lang/String;)Ljava/util/Locale;

    move-result-object p0

    return-object p0

    :pswitch_19
    check-cast p1, Lorg/openxmlformats/schemas/drawingml/x2006/main/STTextUnderlineType$Enum;

    invoke-static {p1}, Lorg/apache/poi/xddf/usermodel/text/XDDFTextRun;->i(Lorg/openxmlformats/schemas/drawingml/x2006/main/STTextUnderlineType$Enum;)Ljava/lang/Boolean;

    move-result-object p0

    return-object p0

    :pswitch_1a
    check-cast p1, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextCharacterProperties;

    invoke-interface {p1}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextCharacterProperties;->getLatin()Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextFont;

    move-result-object p0

    return-object p0

    :pswitch_1b
    check-cast p1, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextFont;

    invoke-static {p1}, Lorg/apache/poi/xddf/usermodel/text/XDDFTextRun;->a(Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextFont;)Lorg/apache/poi/xddf/usermodel/text/XDDFFont;

    move-result-object p0

    return-object p0

    :pswitch_1c
    check-cast p1, Lorg/openxmlformats/schemas/drawingml/x2006/main/STTextUnderlineType$Enum;

    invoke-static {p1}, Lorg/apache/poi/xddf/usermodel/text/UnderlineType;->valueOf(Lorg/openxmlformats/schemas/drawingml/x2006/main/STTextUnderlineType$Enum;)Lorg/apache/poi/xddf/usermodel/text/UnderlineType;

    move-result-object p0

    return-object p0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1c
        :pswitch_1b
        :pswitch_1a
        :pswitch_19
        :pswitch_18
        :pswitch_17
        :pswitch_16
        :pswitch_15
        :pswitch_14
        :pswitch_13
        :pswitch_12
        :pswitch_11
        :pswitch_10
        :pswitch_f
        :pswitch_e
        :pswitch_d
        :pswitch_c
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
