.class public final synthetic Lorg/apache/poi/ddf/f0;
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

    iput p1, p0, Lorg/apache/poi/ddf/f0;->a:I

    return-void
.end method


# virtual methods
.method public final apply(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    iget p0, p0, Lorg/apache/poi/ddf/f0;->a:I

    packed-switch p0, :pswitch_data_0

    check-cast p1, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextFont;

    invoke-static {p1}, Lorg/apache/poi/xddf/usermodel/text/XDDFTextRun;->g(Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextFont;)Lorg/apache/poi/xddf/usermodel/text/XDDFFont;

    move-result-object p0

    return-object p0

    :pswitch_0
    check-cast p1, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextCharacterProperties;

    invoke-interface {p1}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextCharacterProperties;->getStrike()Lorg/openxmlformats/schemas/drawingml/x2006/main/STTextStrikeType$Enum;

    move-result-object p0

    return-object p0

    :pswitch_1
    check-cast p1, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextCharacterProperties;

    invoke-interface {p1}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextCharacterProperties;->xgetBaseline()Lorg/openxmlformats/schemas/drawingml/x2006/main/STPercentage;

    move-result-object p0

    return-object p0

    :pswitch_2
    check-cast p1, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextCharacterProperties;

    invoke-interface {p1}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextCharacterProperties;->getHlinkMouseOver()Lorg/openxmlformats/schemas/drawingml/x2006/main/CTHyperlink;

    move-result-object p0

    return-object p0

    :pswitch_3
    check-cast p1, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextCharacterProperties;

    invoke-interface {p1}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextCharacterProperties;->getSolidFill()Lorg/openxmlformats/schemas/drawingml/x2006/main/CTSolidColorFillProperties;

    move-result-object p0

    return-object p0

    :pswitch_4
    new-instance p0, Lorg/apache/poi/xddf/usermodel/text/XDDFHyperlink;

    check-cast p1, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTHyperlink;

    invoke-direct {p0, p1}, Lorg/apache/poi/xddf/usermodel/text/XDDFHyperlink;-><init>(Lorg/openxmlformats/schemas/drawingml/x2006/main/CTHyperlink;)V

    return-object p0

    :pswitch_5
    check-cast p1, Lorg/openxmlformats/schemas/drawingml/x2006/main/STTextStrikeType$Enum;

    invoke-static {p1}, Lorg/apache/poi/xddf/usermodel/text/StrikeType;->valueOf(Lorg/openxmlformats/schemas/drawingml/x2006/main/STTextStrikeType$Enum;)Lorg/apache/poi/xddf/usermodel/text/StrikeType;

    move-result-object p0

    return-object p0

    :pswitch_6
    check-cast p1, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextCharacterProperties;

    invoke-interface {p1}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextCharacterProperties;->getErr()Z

    move-result p0

    invoke-static {p0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p0

    return-object p0

    :pswitch_7
    check-cast p1, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextCharacterProperties;

    invoke-interface {p1}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextCharacterProperties;->getHighlight()Lorg/openxmlformats/schemas/drawingml/x2006/main/CTColor;

    move-result-object p0

    return-object p0

    :pswitch_8
    check-cast p1, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextParagraphProperties;

    invoke-static {p1}, Lorg/apache/poi/xddf/usermodel/text/XDDFTextParagraph;->e(Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextParagraphProperties;)Lorg/apache/poi/xddf/usermodel/text/XDDFBulletSize;

    move-result-object p0

    return-object p0

    :pswitch_9
    check-cast p1, Lorg/openxmlformats/schemas/drawingml/x2006/main/STCoordinate32;

    invoke-static {p1}, Lorg/apache/poi/ooxml/util/POIXMLUnits;->parseLength(Lorg/openxmlformats/schemas/drawingml/x2006/main/STCoordinate32;)J

    move-result-wide p0

    invoke-static {p0, p1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p0

    return-object p0

    :pswitch_a
    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p0

    int-to-long p0, p0

    invoke-static {p0, p1}, Lorg/apache/poi/util/Units;->toPoints(J)D

    move-result-wide p0

    invoke-static {p0, p1}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object p0

    return-object p0

    :pswitch_b
    check-cast p1, Lorg/openxmlformats/schemas/drawingml/x2006/main/STTextFontAlignType$Enum;

    invoke-static {p1}, Lorg/apache/poi/xddf/usermodel/text/FontAlignment;->valueOf(Lorg/openxmlformats/schemas/drawingml/x2006/main/STTextFontAlignType$Enum;)Lorg/apache/poi/xddf/usermodel/text/FontAlignment;

    move-result-object p0

    return-object p0

    :pswitch_c
    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p0

    int-to-long p0, p0

    invoke-static {p0, p1}, Lorg/apache/poi/util/Units;->toPoints(J)D

    move-result-wide p0

    invoke-static {p0, p1}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object p0

    return-object p0

    :pswitch_d
    check-cast p1, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextParagraphProperties;

    invoke-interface {p1}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextParagraphProperties;->getEaLnBrk()Z

    move-result p0

    invoke-static {p0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p0

    return-object p0

    :pswitch_e
    check-cast p1, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextParagraphProperties;

    invoke-static {p1}, Lorg/apache/poi/xddf/usermodel/text/XDDFTextParagraph;->b(Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextParagraphProperties;)Lorg/apache/poi/xddf/usermodel/text/XDDFFont;

    move-result-object p0

    return-object p0

    :pswitch_f
    check-cast p1, Lorg/openxmlformats/schemas/drawingml/x2006/chart/CTLegendEntry;

    invoke-static {p1}, Lorg/apache/poi/xddf/usermodel/chart/XDDFChartLegend;->a(Lorg/openxmlformats/schemas/drawingml/x2006/chart/CTLegendEntry;)Lorg/apache/poi/xddf/usermodel/chart/XDDFLegendEntry;

    move-result-object p0

    return-object p0

    :pswitch_10
    new-instance p0, Lorg/apache/poi/xddf/usermodel/XDDFGradientStop;

    check-cast p1, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTGradientStop;

    invoke-direct {p0, p1}, Lorg/apache/poi/xddf/usermodel/XDDFGradientStop;-><init>(Lorg/openxmlformats/schemas/drawingml/x2006/main/CTGradientStop;)V

    return-object p0

    :pswitch_11
    check-cast p1, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTGeomGuide;

    invoke-static {p1}, Lorg/apache/poi/xddf/usermodel/XDDFCustomGeometry2D;->f(Lorg/openxmlformats/schemas/drawingml/x2006/main/CTGeomGuide;)Lorg/apache/poi/xddf/usermodel/XDDFGeometryGuide;

    move-result-object p0

    return-object p0

    :pswitch_12
    check-cast p1, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTPath2D;

    invoke-static {p1}, Lorg/apache/poi/xddf/usermodel/XDDFCustomGeometry2D;->a(Lorg/openxmlformats/schemas/drawingml/x2006/main/CTPath2D;)Lorg/apache/poi/xddf/usermodel/XDDFPath;

    move-result-object p0

    return-object p0

    :pswitch_13
    check-cast p1, Lorg/apache/poi/util/LocaleID;

    invoke-virtual {p1}, Lorg/apache/poi/util/LocaleID;->getLcid()I

    move-result p0

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    return-object p0

    :pswitch_14
    check-cast p1, Lorg/apache/poi/sl/usermodel/TextRun;

    invoke-static {p1}, Lorg/apache/poi/sl/extractor/SlideShowExtractor;->c(Lorg/apache/poi/sl/usermodel/TextRun;)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :pswitch_15
    check-cast p1, Ljava/util/function/Supplier;

    invoke-interface {p1}, Ljava/util/function/Supplier;->get()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lorg/apache/poi/poifs/crypt/dsig/facets/SignatureFacet;

    return-object p0

    :pswitch_16
    check-cast p1, [Ljava/lang/String;

    invoke-static {p1}, Ljava/util/stream/Stream;->of([Ljava/lang/Object;)Ljava/util/stream/Stream;

    move-result-object p0

    return-object p0

    :pswitch_17
    check-cast p1, Lorg/apache/poi/hssf/record/common/ExtendedColor;

    invoke-virtual {p1}, Lorg/apache/poi/hssf/record/common/ExtendedColor;->copy()Lorg/apache/poi/hssf/record/common/ExtendedColor;

    move-result-object p0

    return-object p0

    :pswitch_18
    check-cast p1, Lorg/apache/poi/hssf/record/SubRecord$SubRecordTypes;

    invoke-virtual {p1}, Lorg/apache/poi/hssf/record/SubRecord$SubRecordTypes;->getSid()S

    move-result p0

    invoke-static {p0}, Ljava/lang/Short;->valueOf(S)Ljava/lang/Short;

    move-result-object p0

    return-object p0

    :pswitch_19
    check-cast p1, Lorg/apache/poi/hssf/util/CellRangeAddress8Bit;

    invoke-virtual {p1}, Lorg/apache/poi/hssf/util/CellRangeAddress8Bit;->copy()Lorg/apache/poi/hssf/util/CellRangeAddress8Bit;

    move-result-object p0

    return-object p0

    :pswitch_1a
    check-cast p1, Lorg/apache/poi/hssf/record/SubRecord;

    invoke-virtual {p1}, Lorg/apache/poi/hssf/record/SubRecord;->copy()Lorg/apache/poi/hssf/record/SubRecord;

    move-result-object p0

    return-object p0

    :pswitch_1b
    check-cast p1, Lorg/apache/poi/hssf/record/HSSFRecordTypes;

    invoke-virtual {p1}, Lorg/apache/poi/hssf/record/HSSFRecordTypes;->getSid()S

    move-result p0

    invoke-static {p0}, Ljava/lang/Short;->valueOf(S)Ljava/lang/Short;

    move-result-object p0

    return-object p0

    :pswitch_1c
    check-cast p1, Lorg/apache/poi/ddf/EscherRecordTypes;

    invoke-static {p1}, Lorg/apache/poi/ddf/EscherRecordTypes;->a(Lorg/apache/poi/ddf/EscherRecordTypes;)Ljava/lang/Short;

    move-result-object p0

    return-object p0

    nop

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
