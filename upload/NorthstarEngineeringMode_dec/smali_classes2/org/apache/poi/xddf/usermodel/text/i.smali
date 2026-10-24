.class public final synthetic Lorg/apache/poi/xddf/usermodel/text/i;
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

    iput p1, p0, Lorg/apache/poi/xddf/usermodel/text/i;->a:I

    return-void
.end method


# virtual methods
.method public final apply(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    iget p0, p0, Lorg/apache/poi/xddf/usermodel/text/i;->a:I

    packed-switch p0, :pswitch_data_0

    check-cast p1, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTTblCellMar;

    invoke-interface {p1}, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTTblCellMar;->getBottom()Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTTblWidth;

    move-result-object p0

    return-object p0

    :pswitch_0
    check-cast p1, Ljava/lang/Long;

    invoke-static {p1}, Lorg/apache/poi/xwpf/usermodel/XWPFDocument;->a(Ljava/lang/Long;)Ljava/util/List;

    move-result-object p0

    return-object p0

    :pswitch_1
    check-cast p1, Ljava/lang/String;

    invoke-static {p1}, Lorg/apache/poi/xslf/util/PPTX2PNG;->e(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p0

    return-object p0

    :pswitch_2
    check-cast p1, Ljava/text/AttributedCharacterIterator$Attribute;

    invoke-static {p1}, Lorg/apache/poi/xslf/util/DummyGraphics2d;->b(Ljava/text/AttributedCharacterIterator$Attribute;)Ljava/util/Map;

    move-result-object p0

    return-object p0

    :pswitch_3
    check-cast p1, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextParagraphProperties;

    invoke-static {p1}, Lorg/apache/poi/xslf/usermodel/XSLFTextParagraph;->g(Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextParagraphProperties;)Ljava/util/function/Supplier;

    move-result-object p0

    return-object p0

    :pswitch_4
    check-cast p1, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextParagraphProperties;

    invoke-static {p1}, Lorg/apache/poi/xslf/usermodel/XSLFTextParagraph;->d(Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextParagraphProperties;)Ljava/util/function/Supplier;

    move-result-object p0

    return-object p0

    :pswitch_5
    check-cast p1, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextParagraphProperties;

    invoke-static {p1}, Lorg/apache/poi/xslf/usermodel/XSLFTextParagraph;->i(Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextParagraphProperties;)Ljava/util/function/Supplier;

    move-result-object p0

    return-object p0

    :pswitch_6
    check-cast p1, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextParagraphProperties;

    invoke-static {p1}, Lorg/apache/poi/xslf/usermodel/XSLFTextParagraph;->h(Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextParagraphProperties;)Ljava/util/function/Supplier;

    move-result-object p0

    return-object p0

    :pswitch_7
    check-cast p1, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextParagraphProperties;

    invoke-static {p1}, Lorg/apache/poi/xslf/usermodel/XSLFTextParagraph;->r(Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextParagraphProperties;)Ljava/util/function/Supplier;

    move-result-object p0

    return-object p0

    :pswitch_8
    check-cast p1, Lorg/openxmlformats/schemas/presentationml/x2006/main/CTHeaderFooter;

    invoke-static {p1}, Lorg/apache/poi/xslf/usermodel/XSLFPlaceholderDetails;->b(Lorg/openxmlformats/schemas/presentationml/x2006/main/CTHeaderFooter;)Ljava/util/function/Consumer;

    move-result-object p0

    return-object p0

    :pswitch_9
    check-cast p1, Lorg/openxmlformats/schemas/presentationml/x2006/main/CTHeaderFooter;

    invoke-static {p1}, Lorg/apache/poi/xslf/usermodel/XSLFPlaceholderDetails;->c(Lorg/openxmlformats/schemas/presentationml/x2006/main/CTHeaderFooter;)Ljava/util/function/Consumer;

    move-result-object p0

    return-object p0

    :pswitch_a
    check-cast p1, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextParagraph;

    invoke-static {p1}, Lorg/apache/poi/xslf/usermodel/XSLFDiagram;->a(Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextParagraph;)Ljava/util/stream/Stream;

    move-result-object p0

    return-object p0

    :pswitch_b
    check-cast p1, Lorg/openxmlformats/schemas/drawingml/x2006/main/STTextPoint;

    invoke-static {p1}, Lorg/apache/poi/ooxml/util/POIXMLUnits;->parseLength(Lorg/openxmlformats/schemas/drawingml/x2006/main/STTextPoint;)J

    move-result-wide p0

    invoke-static {p0, p1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p0

    return-object p0

    :pswitch_c
    check-cast p1, Ljava/lang/Integer;

    invoke-static {p1}, Lorg/apache/poi/xddf/usermodel/text/XDDFTextRun;->c(Ljava/lang/Integer;)Ljava/lang/Boolean;

    move-result-object p0

    return-object p0

    :pswitch_d
    new-instance p0, Lorg/apache/poi/xddf/usermodel/XDDFLineProperties;

    check-cast p1, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTLineProperties;

    invoke-direct {p0, p1}, Lorg/apache/poi/xddf/usermodel/XDDFLineProperties;-><init>(Lorg/openxmlformats/schemas/drawingml/x2006/main/CTLineProperties;)V

    return-object p0

    :pswitch_e
    check-cast p1, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextCharacterProperties;

    invoke-interface {p1}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextCharacterProperties;->getB()Z

    move-result p0

    invoke-static {p0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p0

    return-object p0

    :pswitch_f
    check-cast p1, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextCharacterProperties;

    invoke-interface {p1}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextCharacterProperties;->getCap()Lorg/openxmlformats/schemas/drawingml/x2006/main/STTextCapsType$Enum;

    move-result-object p0

    return-object p0

    :pswitch_10
    check-cast p1, Ljava/lang/String;

    invoke-static {p1}, Ljava/util/Locale;->forLanguageTag(Ljava/lang/String;)Ljava/util/Locale;

    move-result-object p0

    return-object p0

    :pswitch_11
    check-cast p1, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextCharacterProperties;

    invoke-interface {p1}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextCharacterProperties;->getKumimoji()Z

    move-result p0

    invoke-static {p0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p0

    return-object p0

    :pswitch_12
    check-cast p1, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextCharacterProperties;

    invoke-interface {p1}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextCharacterProperties;->getAltLang()Ljava/lang/String;

    move-result-object p0

    return-object p0

    :pswitch_13
    check-cast p1, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextCharacterProperties;

    invoke-interface {p1}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextCharacterProperties;->getU()Lorg/openxmlformats/schemas/drawingml/x2006/main/STTextUnderlineType$Enum;

    move-result-object p0

    return-object p0

    :pswitch_14
    check-cast p1, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextCharacterProperties;

    invoke-interface {p1}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextCharacterProperties;->getEa()Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextFont;

    move-result-object p0

    return-object p0

    :pswitch_15
    check-cast p1, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextFont;

    invoke-static {p1}, Lorg/apache/poi/xddf/usermodel/text/XDDFTextRun;->e(Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextFont;)Lorg/apache/poi/xddf/usermodel/text/XDDFFont;

    move-result-object p0

    return-object p0

    :pswitch_16
    check-cast p1, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextFont;

    invoke-static {p1}, Lorg/apache/poi/xddf/usermodel/text/XDDFTextRun;->f(Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextFont;)Lorg/apache/poi/xddf/usermodel/text/XDDFFont;

    move-result-object p0

    return-object p0

    :pswitch_17
    check-cast p1, Lorg/openxmlformats/schemas/drawingml/x2006/main/STTextStrikeType$Enum;

    invoke-static {p1}, Lorg/apache/poi/xddf/usermodel/text/XDDFTextRun;->d(Lorg/openxmlformats/schemas/drawingml/x2006/main/STTextStrikeType$Enum;)Ljava/lang/Boolean;

    move-result-object p0

    return-object p0

    :pswitch_18
    check-cast p1, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextCharacterProperties;

    invoke-interface {p1}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextCharacterProperties;->getI()Z

    move-result p0

    invoke-static {p0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p0

    return-object p0

    :pswitch_19
    check-cast p1, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextCharacterProperties;

    invoke-interface {p1}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextCharacterProperties;->getU()Lorg/openxmlformats/schemas/drawingml/x2006/main/STTextUnderlineType$Enum;

    move-result-object p0

    return-object p0

    :pswitch_1a
    check-cast p1, Lorg/openxmlformats/schemas/drawingml/x2006/main/STPercentage;

    invoke-static {p1}, Lorg/apache/poi/ooxml/util/POIXMLUnits;->parsePercent(Lorg/openxmlformats/schemas/drawingml/x2006/main/STPercentage;)I

    move-result p0

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    return-object p0

    :pswitch_1b
    new-instance p0, Lorg/apache/poi/xddf/usermodel/text/XDDFHyperlink;

    check-cast p1, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTHyperlink;

    invoke-direct {p0, p1}, Lorg/apache/poi/xddf/usermodel/text/XDDFHyperlink;-><init>(Lorg/openxmlformats/schemas/drawingml/x2006/main/CTHyperlink;)V

    return-object p0

    :pswitch_1c
    new-instance p0, Lorg/apache/poi/xddf/usermodel/XDDFSolidFillProperties;

    check-cast p1, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTSolidColorFillProperties;

    invoke-direct {p0, p1}, Lorg/apache/poi/xddf/usermodel/XDDFSolidFillProperties;-><init>(Lorg/openxmlformats/schemas/drawingml/x2006/main/CTSolidColorFillProperties;)V

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
