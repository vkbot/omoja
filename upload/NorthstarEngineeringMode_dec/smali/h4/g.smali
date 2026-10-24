.class public final synthetic Lh4/g;
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

    iput p1, p0, Lh4/g;->a:I

    return-void
.end method

.method private static a(Ljava/lang/Object;)Z
    .locals 0

    check-cast p0, Lorg/bouncycastle/asn1/x509/DistributionPointName;

    invoke-static {p0}, Lorg/apache/poi/poifs/crypt/dsig/services/TSPTimeStampService;->j(Lorg/bouncycastle/asn1/x509/DistributionPointName;)Z

    move-result p0

    return p0
.end method


# virtual methods
.method public final test(Ljava/lang/Object;)Z
    .locals 1

    iget p0, p0, Lh4/g;->a:I

    packed-switch p0, :pswitch_data_0

    check-cast p1, Ljava/io/File;

    invoke-virtual {p1}, Ljava/io/File;->isDirectory()Z

    move-result p0

    return p0

    :pswitch_0
    check-cast p1, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextCharacterProperties;

    invoke-interface {p1}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextCharacterProperties;->isSetBaseline()Z

    move-result p0

    return p0

    :pswitch_1
    check-cast p1, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextCharacterProperties;

    invoke-interface {p1}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextCharacterProperties;->isSetKern()Z

    move-result p0

    return p0

    :pswitch_2
    check-cast p1, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextCharacterProperties;

    invoke-interface {p1}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextCharacterProperties;->isSetNormalizeH()Z

    move-result p0

    return p0

    :pswitch_3
    check-cast p1, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextCharacterProperties;

    invoke-interface {p1}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextCharacterProperties;->isSetLatin()Z

    move-result p0

    return p0

    :pswitch_4
    check-cast p1, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextCharacterProperties;

    invoke-interface {p1}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextCharacterProperties;->isSetSz()Z

    move-result p0

    return p0

    :pswitch_5
    check-cast p1, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextCharacterProperties;

    invoke-interface {p1}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextCharacterProperties;->isSetHlinkClick()Z

    move-result p0

    return p0

    :pswitch_6
    check-cast p1, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextCharacterProperties;

    invoke-interface {p1}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextCharacterProperties;->isSetStrike()Z

    move-result p0

    return p0

    :pswitch_7
    check-cast p1, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextParagraphProperties;

    invoke-static {p1}, Lorg/apache/poi/xddf/usermodel/text/XDDFTextParagraph;->g(Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextParagraphProperties;)Z

    move-result p0

    return p0

    :pswitch_8
    check-cast p1, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextParagraphProperties;

    invoke-interface {p1}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextParagraphProperties;->isSetDefTabSz()Z

    move-result p0

    return p0

    :pswitch_9
    check-cast p1, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextParagraphProperties;

    invoke-interface {p1}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextParagraphProperties;->isSetMarL()Z

    move-result p0

    return p0

    :pswitch_a
    check-cast p1, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextParagraphProperties;

    invoke-interface {p1}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextParagraphProperties;->isSetFontAlgn()Z

    move-result p0

    return p0

    :pswitch_b
    check-cast p1, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextParagraphProperties;

    invoke-interface {p1}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextParagraphProperties;->isSetMarR()Z

    move-result p0

    return p0

    :pswitch_c
    check-cast p1, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextParagraphProperties;

    invoke-static {p1}, Lorg/apache/poi/xddf/usermodel/text/XDDFTextParagraph;->a(Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextParagraphProperties;)Z

    move-result p0

    return p0

    :pswitch_d
    check-cast p1, Lorg/apache/poi/util/LocaleID;

    invoke-static {p1}, Lorg/apache/poi/util/LocaleID;->a(Lorg/apache/poi/util/LocaleID;)Z

    move-result p0

    return p0

    :pswitch_e
    check-cast p1, Ljava/lang/String;

    invoke-static {p1}, Ljava/util/Objects;->isNull(Ljava/lang/Object;)Z

    move-result p0

    return p0

    :pswitch_f
    invoke-static {p1}, Lh4/g;->a(Ljava/lang/Object;)Z

    move-result p0

    return p0

    :pswitch_10
    check-cast p1, Ljava/security/Provider;

    invoke-static {p1}, Ljava/util/Objects;->nonNull(Ljava/lang/Object;)Z

    move-result p0

    return p0

    :pswitch_11
    check-cast p1, Lorg/apache/poi/poifs/filesystem/Entry;

    invoke-static {p1}, Lorg/apache/poi/extractor/ExtractorFactory;->j(Lorg/apache/poi/poifs/filesystem/Entry;)Z

    move-result p0

    return p0

    :pswitch_12
    check-cast p1, Le5/o;

    sget-object p0, Lg5/q;->a:Ljava/util/HashSet;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object p0, Lg5/q;->c:[Ljava/lang/String;

    array-length p1, p0

    const/4 v0, 0x0

    if-gtz p1, :cond_0

    return v0

    :cond_0
    aget-object p0, p0, v0

    const/4 p0, 0x0

    throw p0

    :pswitch_13
    check-cast p1, Ljava/lang/String;

    invoke-static {p1}, Ljava/util/Objects;->nonNull(Ljava/lang/Object;)Z

    move-result p0

    return p0

    :pswitch_14
    check-cast p1, Ljava/nio/channels/SeekableByteChannel;

    invoke-interface {p1}, Ljava/nio/channels/Channel;->isOpen()Z

    move-result p0

    return p0

    :pswitch_data_0
    .packed-switch 0x0
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
