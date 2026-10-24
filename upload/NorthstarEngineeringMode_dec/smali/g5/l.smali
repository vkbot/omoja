.class public final synthetic Lg5/l;
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

    iput p1, p0, Lg5/l;->a:I

    return-void
.end method

.method private static a(Ljava/lang/Object;)Ljava/lang/String;
    .locals 0

    check-cast p0, Ljavax/xml/crypto/dsig/Reference;

    invoke-interface {p0}, Ljavax/xml/crypto/URIReference;->getURI()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private static b(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p0, Lorg/bouncycastle/asn1/x509/DistributionPoint;

    invoke-static {p0}, Lorg/apache/poi/poifs/crypt/dsig/services/TSPTimeStampService;->g(Lorg/bouncycastle/asn1/x509/DistributionPoint;)Lorg/bouncycastle/asn1/x509/DistributionPointName;

    move-result-object p0

    return-object p0
.end method

.method private static c(Ljava/lang/Object;)Ljava/util/stream/Stream;
    .locals 0

    check-cast p0, Lorg/bouncycastle/asn1/x509/DistributionPointName;

    invoke-static {p0}, Lorg/apache/poi/poifs/crypt/dsig/services/TSPTimeStampService;->b(Lorg/bouncycastle/asn1/x509/DistributionPointName;)Ljava/util/stream/Stream;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public final apply(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    iget p0, p0, Lg5/l;->a:I

    packed-switch p0, :pswitch_data_0

    check-cast p1, Ljava/lang/Integer;

    invoke-static {p1}, Lorg/apache/poi/xddf/usermodel/text/XDDFTextRun;->b(Ljava/lang/Integer;)Ljava/lang/Boolean;

    move-result-object p0

    return-object p0

    :pswitch_0
    check-cast p1, Lorg/openxmlformats/schemas/drawingml/x2006/main/STTextCapsType$Enum;

    invoke-static {p1}, Lorg/apache/poi/xddf/usermodel/text/CapsType;->valueOf(Lorg/openxmlformats/schemas/drawingml/x2006/main/STTextCapsType$Enum;)Lorg/apache/poi/xddf/usermodel/text/CapsType;

    move-result-object p0

    return-object p0

    :pswitch_1
    check-cast p1, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextCharacterProperties;

    invoke-interface {p1}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextCharacterProperties;->getSz()I

    move-result p0

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    return-object p0

    :pswitch_2
    check-cast p1, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextCharacterProperties;

    invoke-interface {p1}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextCharacterProperties;->getHlinkClick()Lorg/openxmlformats/schemas/drawingml/x2006/main/CTHyperlink;

    move-result-object p0

    return-object p0

    :pswitch_3
    check-cast p1, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextCharacterProperties;

    invoke-interface {p1}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextCharacterProperties;->getStrike()Lorg/openxmlformats/schemas/drawingml/x2006/main/STTextStrikeType$Enum;

    move-result-object p0

    return-object p0

    :pswitch_4
    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p0

    int-to-long p0, p0

    invoke-static {p0, p1}, Lorg/apache/poi/util/Units;->toPoints(J)D

    move-result-wide p0

    invoke-static {p0, p1}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object p0

    return-object p0

    :pswitch_5
    check-cast p1, Lorg/openxmlformats/schemas/drawingml/x2006/main/STTextAlignType$Enum;

    invoke-static {p1}, Lorg/apache/poi/xddf/usermodel/text/TextAlignment;->valueOf(Lorg/openxmlformats/schemas/drawingml/x2006/main/STTextAlignType$Enum;)Lorg/apache/poi/xddf/usermodel/text/TextAlignment;

    move-result-object p0

    return-object p0

    :pswitch_6
    check-cast p1, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextParagraphProperties;

    invoke-static {p1}, Lorg/apache/poi/xddf/usermodel/text/XDDFTextParagraph;->h(Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextParagraphProperties;)Lorg/apache/poi/xddf/usermodel/text/XDDFBulletStyle;

    move-result-object p0

    return-object p0

    :pswitch_7
    check-cast p1, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextParagraphProperties;

    invoke-interface {p1}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextParagraphProperties;->xgetDefTabSz()Lorg/openxmlformats/schemas/drawingml/x2006/main/STCoordinate32;

    move-result-object p0

    return-object p0

    :pswitch_8
    check-cast p1, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextParagraphProperties;

    invoke-interface {p1}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextParagraphProperties;->getMarL()I

    move-result p0

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    return-object p0

    :pswitch_9
    check-cast p1, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextParagraphProperties;

    invoke-interface {p1}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextParagraphProperties;->getFontAlgn()Lorg/openxmlformats/schemas/drawingml/x2006/main/STTextFontAlignType$Enum;

    move-result-object p0

    return-object p0

    :pswitch_a
    check-cast p1, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextParagraphProperties;

    invoke-interface {p1}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextParagraphProperties;->getMarR()I

    move-result p0

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    return-object p0

    :pswitch_b
    check-cast p1, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextParagraphProperties;

    invoke-static {p1}, Lorg/apache/poi/xddf/usermodel/text/XDDFTextParagraph;->f(Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextParagraphProperties;)Lorg/apache/poi/xddf/usermodel/XDDFColor;

    move-result-object p0

    return-object p0

    :pswitch_c
    check-cast p1, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTGeomGuide;

    invoke-static {p1}, Lorg/apache/poi/xddf/usermodel/XDDFPresetGeometry2D;->a(Lorg/openxmlformats/schemas/drawingml/x2006/main/CTGeomGuide;)Lorg/apache/poi/xddf/usermodel/XDDFGeometryGuide;

    move-result-object p0

    return-object p0

    :pswitch_d
    check-cast p1, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTGeomGuide;

    invoke-static {p1}, Lorg/apache/poi/xddf/usermodel/XDDFCustomGeometry2D;->b(Lorg/openxmlformats/schemas/drawingml/x2006/main/CTGeomGuide;)Lorg/apache/poi/xddf/usermodel/XDDFGeometryGuide;

    move-result-object p0

    return-object p0

    :pswitch_e
    check-cast p1, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTPolarAdjustHandle;

    invoke-static {p1}, Lorg/apache/poi/xddf/usermodel/XDDFCustomGeometry2D;->e(Lorg/openxmlformats/schemas/drawingml/x2006/main/CTPolarAdjustHandle;)Lorg/apache/poi/xddf/usermodel/XDDFAdjustHandlePolar;

    move-result-object p0

    return-object p0

    :pswitch_f
    check-cast p1, Lorg/apache/poi/util/LocaleID;

    invoke-virtual {p1}, Lorg/apache/poi/util/LocaleID;->getLanguageTag()Ljava/lang/String;

    move-result-object p0

    return-object p0

    :pswitch_10
    check-cast p1, Ljava/util/Map$Entry;

    invoke-interface {p1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/String;

    return-object p0

    :pswitch_11
    check-cast p1, Ljava/util/Map$Entry;

    invoke-interface {p1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lorg/apache/poi/util/GenericRecordJsonWriter$GenericRecordHandler;

    return-object p0

    :pswitch_12
    check-cast p1, Lorg/apache/poi/ss/formula/eval/forked/ForkedEvaluator;

    invoke-static {p1}, Lorg/apache/poi/ss/formula/eval/forked/ForkedEvaluator;->b(Lorg/apache/poi/ss/formula/eval/forked/ForkedEvaluator;)Lorg/apache/poi/ss/formula/WorkbookEvaluator;

    move-result-object p0

    return-object p0

    :pswitch_13
    check-cast p1, Ljava/util/Locale;

    invoke-static {p1}, Lorg/apache/poi/ss/format/CellFormat;->a(Ljava/util/Locale;)Ljava/util/Map;

    move-result-object p0

    return-object p0

    :pswitch_14
    check-cast p1, Lorg/apache/poi/poifs/filesystem/Entry;

    invoke-interface {p1}, Lorg/apache/poi/poifs/filesystem/Entry;->getName()Ljava/lang/String;

    move-result-object p0

    return-object p0

    :pswitch_15
    invoke-static {p1}, Lg5/l;->c(Ljava/lang/Object;)Ljava/util/stream/Stream;

    move-result-object p0

    return-object p0

    :pswitch_16
    invoke-static {p1}, Lg5/l;->b(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    return-object p0

    :pswitch_17
    invoke-static {p1}, Lg5/l;->a(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :pswitch_18
    check-cast p1, Ljava/util/Date;

    invoke-static {p1}, Lorg/apache/poi/openxml4j/opc/internal/PackagePropertiesPart;->a(Ljava/util/Date;)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :pswitch_19
    check-cast p1, Lorg/apache/poi/hssf/record/cf/Threshold;

    invoke-virtual {p1}, Lorg/apache/poi/hssf/record/cf/Threshold;->copy()Lorg/apache/poi/hssf/record/cf/Threshold;

    move-result-object p0

    return-object p0

    :pswitch_1a
    check-cast p1, Lorg/apache/poi/hssf/record/CFRuleBase;

    invoke-virtual {p1}, Lorg/apache/poi/hssf/record/CFRuleBase;->copy()Lorg/apache/poi/hssf/record/CFRuleBase;

    move-result-object p0

    return-object p0

    :pswitch_1b
    check-cast p1, Lorg/apache/poi/ddf/EscherPropertyTypes;

    invoke-virtual {p1}, Lorg/apache/poi/ddf/EscherPropertyTypes;->getPropertyId()S

    move-result p0

    invoke-static {p0}, Ljava/lang/Short;->valueOf(S)Ljava/lang/Short;

    move-result-object p0

    return-object p0

    :pswitch_1c
    check-cast p1, Lg5/p;

    invoke-interface {p1}, Lg5/p;->a()Ljava/util/Collection;

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
