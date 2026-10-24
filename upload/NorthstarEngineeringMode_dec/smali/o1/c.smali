.class public final synthetic Lo1/c;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/function/Predicate;


# instance fields
.field public final synthetic a:I


# direct methods
.method public synthetic constructor <init>(I)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lo1/c;->a:I

    return-void
.end method

.method private static a(Ljava/lang/Object;)Z
    .locals 0

    check-cast p0, Lorg/bouncycastle/asn1/x509/DistributionPointName;

    invoke-static {p0}, Ljava/util/Objects;->nonNull(Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method

.method private static b(Ljava/lang/Object;)Z
    .locals 0

    check-cast p0, Lorg/bouncycastle/asn1/x509/GeneralName;

    invoke-static {p0}, Lorg/apache/poi/poifs/crypt/dsig/services/TSPTimeStampService;->f(Lorg/bouncycastle/asn1/x509/GeneralName;)Z

    move-result p0

    return p0
.end method


# virtual methods
.method public final test(Ljava/lang/Object;)Z
    .locals 0

    iget p0, p0, Lo1/c;->a:I

    packed-switch p0, :pswitch_data_0

    check-cast p1, Lorg/apache/poi/ooxml/POIXMLDocumentPart;

    invoke-static {p1}, Lorg/apache/poi/xslf/usermodel/XSLFSheet;->b(Lorg/apache/poi/ooxml/POIXMLDocumentPart;)Z

    move-result p0

    return p0

    :pswitch_0
    check-cast p1, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextCharacterProperties;

    invoke-interface {p1}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextCharacterProperties;->isSetB()Z

    move-result p0

    return p0

    :pswitch_1
    check-cast p1, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextCharacterProperties;

    invoke-interface {p1}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextCharacterProperties;->isSetCap()Z

    move-result p0

    return p0

    :pswitch_2
    check-cast p1, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextCharacterProperties;

    invoke-interface {p1}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextCharacterProperties;->isSetKumimoji()Z

    move-result p0

    return p0

    :pswitch_3
    check-cast p1, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextCharacterProperties;

    invoke-interface {p1}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextCharacterProperties;->isSetAltLang()Z

    move-result p0

    return p0

    :pswitch_4
    check-cast p1, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextCharacterProperties;

    invoke-interface {p1}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextCharacterProperties;->isSetU()Z

    move-result p0

    return p0

    :pswitch_5
    check-cast p1, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextCharacterProperties;

    invoke-interface {p1}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextCharacterProperties;->isSetEa()Z

    move-result p0

    return p0

    :pswitch_6
    check-cast p1, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextCharacterProperties;

    invoke-interface {p1}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextCharacterProperties;->isSetI()Z

    move-result p0

    return p0

    :pswitch_7
    check-cast p1, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextCharacterProperties;

    invoke-interface {p1}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextCharacterProperties;->isSetU()Z

    move-result p0

    return p0

    :pswitch_8
    check-cast p1, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextCharacterProperties;

    invoke-interface {p1}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextCharacterProperties;->isSetNoProof()Z

    move-result p0

    return p0

    :pswitch_9
    check-cast p1, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextCharacterProperties;

    invoke-interface {p1}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextCharacterProperties;->isSetCap()Z

    move-result p0

    return p0

    :pswitch_a
    check-cast p1, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextParagraphProperties;

    invoke-interface {p1}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextParagraphProperties;->isSetHangingPunct()Z

    move-result p0

    return p0

    :pswitch_b
    check-cast p1, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextParagraphProperties;

    invoke-interface {p1}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextParagraphProperties;->isSetLnSpc()Z

    move-result p0

    return p0

    :pswitch_c
    check-cast p1, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextParagraphProperties;

    invoke-interface {p1}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextParagraphProperties;->isSetIndent()Z

    move-result p0

    return p0

    :pswitch_d
    check-cast p1, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextParagraphProperties;

    invoke-interface {p1}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextParagraphProperties;->isSetSpcBef()Z

    move-result p0

    return p0

    :pswitch_e
    check-cast p1, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextParagraphProperties;

    invoke-interface {p1}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextParagraphProperties;->isSetAlgn()Z

    move-result p0

    return p0

    :pswitch_f
    check-cast p1, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextParagraphProperties;

    invoke-interface {p1}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextParagraphProperties;->isSetLatinLnBrk()Z

    move-result p0

    return p0

    :pswitch_10
    check-cast p1, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextParagraphProperties;

    invoke-interface {p1}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextParagraphProperties;->isSetRtl()Z

    move-result p0

    return p0

    :pswitch_11
    check-cast p1, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextParagraphProperties;

    invoke-interface {p1}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextParagraphProperties;->isSetSpcAft()Z

    move-result p0

    return p0

    :pswitch_12
    check-cast p1, [B

    invoke-static {p1}, Ljava/util/Objects;->nonNull(Ljava/lang/Object;)Z

    move-result p0

    return p0

    :pswitch_13
    invoke-static {p1}, Lo1/c;->b(Ljava/lang/Object;)Z

    move-result p0

    return p0

    :pswitch_14
    invoke-static {p1}, Lo1/c;->a(Ljava/lang/Object;)Z

    move-result p0

    return p0

    :pswitch_15
    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p0

    const/4 p1, 0x2

    if-ne p0, p1, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0

    :pswitch_data_0
    .packed-switch 0x0
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
