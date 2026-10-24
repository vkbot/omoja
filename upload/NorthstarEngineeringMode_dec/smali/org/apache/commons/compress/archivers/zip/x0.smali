.class public final synthetic Lorg/apache/commons/compress/archivers/zip/x0;
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

    iput p1, p0, Lorg/apache/commons/compress/archivers/zip/x0;->a:I

    return-void
.end method

.method private static a(Ljava/lang/Object;)Ljava/lang/String;
    .locals 0

    check-cast p0, Lorg/bouncycastle/asn1/x509/GeneralName;

    invoke-static {p0}, Lorg/apache/poi/poifs/crypt/dsig/services/TSPTimeStampService;->i(Lorg/bouncycastle/asn1/x509/GeneralName;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private static b(Ljava/lang/Object;)Ljava/lang/String;
    .locals 0

    check-cast p0, Lorg/bouncycastle/cert/X509CertificateHolder;

    invoke-static {p0}, Lorg/apache/poi/poifs/crypt/dsig/services/TSPTimeStampService;->e(Lorg/bouncycastle/cert/X509CertificateHolder;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public final apply(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    iget p0, p0, Lorg/apache/commons/compress/archivers/zip/x0;->a:I

    packed-switch p0, :pswitch_data_0

    check-cast p1, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextCharacterProperties;

    invoke-interface {p1}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextCharacterProperties;->getNoProof()Z

    move-result p0

    invoke-static {p0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p0

    return-object p0

    :pswitch_0
    check-cast p1, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextCharacterProperties;

    invoke-interface {p1}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextCharacterProperties;->getCap()Lorg/openxmlformats/schemas/drawingml/x2006/main/STTextCapsType$Enum;

    move-result-object p0

    return-object p0

    :pswitch_1
    check-cast p1, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTColor;

    invoke-static {p1}, Lorg/apache/poi/xddf/usermodel/XDDFColor;->forColorContainer(Lorg/openxmlformats/schemas/drawingml/x2006/main/CTColor;)Lorg/apache/poi/xddf/usermodel/XDDFColor;

    move-result-object p0

    return-object p0

    :pswitch_2
    check-cast p1, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextParagraphProperties;

    invoke-interface {p1}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextParagraphProperties;->getHangingPunct()Z

    move-result p0

    invoke-static {p0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p0

    return-object p0

    :pswitch_3
    check-cast p1, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextParagraphProperties;

    invoke-interface {p1}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextParagraphProperties;->getLnSpc()Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextSpacing;

    move-result-object p0

    return-object p0

    :pswitch_4
    check-cast p1, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextParagraphProperties;

    invoke-interface {p1}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextParagraphProperties;->getIndent()I

    move-result p0

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    return-object p0

    :pswitch_5
    check-cast p1, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextParagraphProperties;

    invoke-interface {p1}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextParagraphProperties;->getSpcBef()Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextSpacing;

    move-result-object p0

    return-object p0

    :pswitch_6
    check-cast p1, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextParagraphProperties;

    invoke-interface {p1}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextParagraphProperties;->getAlgn()Lorg/openxmlformats/schemas/drawingml/x2006/main/STTextAlignType$Enum;

    move-result-object p0

    return-object p0

    :pswitch_7
    check-cast p1, Ljava/lang/Long;

    invoke-virtual {p1}, Ljava/lang/Long;->longValue()J

    move-result-wide p0

    invoke-static {p0, p1}, Lorg/apache/poi/util/Units;->toPoints(J)D

    move-result-wide p0

    invoke-static {p0, p1}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object p0

    return-object p0

    :pswitch_8
    check-cast p1, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextParagraphProperties;

    invoke-interface {p1}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextParagraphProperties;->getLatinLnBrk()Z

    move-result p0

    invoke-static {p0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p0

    return-object p0

    :pswitch_9
    check-cast p1, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextParagraphProperties;

    invoke-interface {p1}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextParagraphProperties;->getRtl()Z

    move-result p0

    invoke-static {p0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p0

    return-object p0

    :pswitch_a
    check-cast p1, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextParagraphProperties;

    invoke-interface {p1}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextParagraphProperties;->getSpcAft()Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextSpacing;

    move-result-object p0

    return-object p0

    :pswitch_b
    check-cast p1, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextTabStop;

    invoke-static {p1}, Lorg/apache/poi/xddf/usermodel/text/XDDFParagraphProperties;->a(Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextTabStop;)Lorg/apache/poi/xddf/usermodel/text/XDDFTabStop;

    move-result-object p0

    return-object p0

    :pswitch_c
    check-cast p1, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTDashStop;

    invoke-static {p1}, Lorg/apache/poi/xddf/usermodel/XDDFLineProperties;->a(Lorg/openxmlformats/schemas/drawingml/x2006/main/CTDashStop;)Lorg/apache/poi/xddf/usermodel/XDDFDashStop;

    move-result-object p0

    return-object p0

    :pswitch_d
    check-cast p1, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTConnectionSite;

    invoke-static {p1}, Lorg/apache/poi/xddf/usermodel/XDDFCustomGeometry2D;->d(Lorg/openxmlformats/schemas/drawingml/x2006/main/CTConnectionSite;)Lorg/apache/poi/xddf/usermodel/XDDFConnectionSite;

    move-result-object p0

    return-object p0

    :pswitch_e
    check-cast p1, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTXYAdjustHandle;

    invoke-static {p1}, Lorg/apache/poi/xddf/usermodel/XDDFCustomGeometry2D;->c(Lorg/openxmlformats/schemas/drawingml/x2006/main/CTXYAdjustHandle;)Lorg/apache/poi/xddf/usermodel/XDDFAdjustHandleXY;

    move-result-object p0

    return-object p0

    :pswitch_f
    check-cast p1, Lorg/apache/poi/sl/usermodel/Comment;

    invoke-static {p1}, Lorg/apache/poi/sl/extractor/SlideShowExtractor;->i(Lorg/apache/poi/sl/usermodel/Comment;)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :pswitch_10
    check-cast p1, Lorg/apache/poi/sl/usermodel/TextRun;

    invoke-static {p1}, Lorg/apache/poi/sl/extractor/SlideShowExtractor;->l(Lorg/apache/poi/sl/usermodel/TextRun;)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :pswitch_11
    invoke-static {p1}, Lorg/apache/commons/compress/archivers/zip/x0;->b(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :pswitch_12
    invoke-static {p1}, Lorg/apache/commons/compress/archivers/zip/x0;->a(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :pswitch_13
    check-cast p1, Lorg/apache/poi/poifs/crypt/dsig/SignatureConfig$CRLEntry;

    invoke-virtual {p1}, Lorg/apache/poi/poifs/crypt/dsig/SignatureConfig$CRLEntry;->getCrlBytes()[B

    move-result-object p0

    return-object p0

    :pswitch_14
    new-instance p0, Lorg/apache/poi/hssf/record/common/FormatRun;

    check-cast p1, Lorg/apache/poi/hssf/record/common/FormatRun;

    invoke-direct {p0, p1}, Lorg/apache/poi/hssf/record/common/FormatRun;-><init>(Lorg/apache/poi/hssf/record/common/FormatRun;)V

    return-object p0

    :pswitch_15
    new-instance p0, Lorg/apache/poi/hssf/record/common/PhRun;

    check-cast p1, Lorg/apache/poi/hssf/record/common/PhRun;

    invoke-direct {p0, p1}, Lorg/apache/poi/hssf/record/common/PhRun;-><init>(Lorg/apache/poi/hssf/record/common/PhRun;)V

    return-object p0

    :pswitch_16
    check-cast p1, Lorg/apache/poi/hssf/record/cf/ColorGradientThreshold;

    invoke-virtual {p1}, Lorg/apache/poi/hssf/record/cf/ColorGradientThreshold;->copy()Lorg/apache/poi/hssf/record/cf/ColorGradientThreshold;

    move-result-object p0

    return-object p0

    :pswitch_17
    check-cast p1, Lorg/apache/poi/hssf/record/ColumnInfoRecord;

    invoke-virtual {p1}, Lorg/apache/poi/hssf/record/ColumnInfoRecord;->copy()Lorg/apache/poi/hssf/record/ColumnInfoRecord;

    move-result-object p0

    return-object p0

    :pswitch_18
    check-cast p1, Ljava/lang/Short;

    invoke-static {p1}, Lorg/apache/poi/hssf/eventusermodel/HSSFRequest;->a(Ljava/lang/Short;)Ljava/util/List;

    move-result-object p0

    return-object p0

    :pswitch_19
    check-cast p1, Lorg/apache/poi/ddf/EscherRecord;

    invoke-virtual {p1}, Lorg/apache/poi/ddf/EscherRecord;->copy()Lorg/apache/poi/ddf/EscherRecord;

    move-result-object p0

    return-object p0

    :pswitch_1a
    new-instance p0, Lorg/apache/poi/ddf/EscherDggRecord$FileIdCluster;

    check-cast p1, Lorg/apache/poi/ddf/EscherDggRecord$FileIdCluster;

    invoke-direct {p0, p1}, Lorg/apache/poi/ddf/EscherDggRecord$FileIdCluster;-><init>(Lorg/apache/poi/ddf/EscherDggRecord$FileIdCluster;)V

    return-object p0

    :pswitch_1b
    check-cast p1, Lorg/apache/poi/ddf/EscherRecord;

    invoke-virtual {p1}, Lorg/apache/poi/ddf/EscherRecord;->copy()Lorg/apache/poi/ddf/EscherRecord;

    move-result-object p0

    return-object p0

    :pswitch_1c
    check-cast p1, Ljava/lang/String;

    invoke-static {p1}, Lorg/apache/commons/compress/archivers/zip/a1;->c(Ljava/lang/String;)Ljava/util/LinkedList;

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
