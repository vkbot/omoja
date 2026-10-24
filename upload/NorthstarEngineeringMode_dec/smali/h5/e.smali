.class public final synthetic Lh5/e;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/function/IntFunction;


# instance fields
.field public final synthetic a:I


# direct methods
.method public synthetic constructor <init>(I)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lh5/e;->a:I

    return-void
.end method


# virtual methods
.method public final apply(I)Ljava/lang/Object;
    .locals 0

    iget p0, p0, Lh5/e;->a:I

    packed-switch p0, :pswitch_data_0

    invoke-static {p1}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/impl/CTProtectedRangeImpl;->c2(I)[Li5/g2;

    move-result-object p0

    return-object p0

    :pswitch_0
    invoke-static {p1}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/impl/CTAuthorsImpl;->d2(I)[Lorg/openxmlformats/schemas/officeDocument/x2006/sharedTypes/STXstring;

    move-result-object p0

    return-object p0

    :pswitch_1
    invoke-static {p1}, Lorg/openxmlformats/schemas/officeDocument/x2006/docPropsVTypes/impl/CTVectorImpl;->c2(I)[Ljava/lang/String;

    move-result-object p0

    return-object p0

    :pswitch_2
    invoke-static {p1}, Lorg/openxmlformats/schemas/officeDocument/x2006/docPropsVTypes/impl/CTVectorImpl;->g2(I)[Lorg/openxmlformats/schemas/officeDocument/x2006/docPropsVTypes/STCy;

    move-result-object p0

    return-object p0

    :pswitch_3
    invoke-static {p1}, Lorg/openxmlformats/schemas/officeDocument/x2006/docPropsVTypes/impl/CTVectorImpl;->u2(I)[Li5/g2;

    move-result-object p0

    return-object p0

    :pswitch_4
    invoke-static {p1}, Lorg/openxmlformats/schemas/officeDocument/x2006/docPropsVTypes/impl/CTVectorImpl;->k2(I)[Li5/m2;

    move-result-object p0

    return-object p0

    :pswitch_5
    invoke-static {p1}, Lorg/openxmlformats/schemas/officeDocument/x2006/docPropsVTypes/impl/CTVectorImpl;->o2(I)[Li5/r0;

    move-result-object p0

    return-object p0

    :pswitch_6
    invoke-static {p1}, Lorg/openxmlformats/schemas/officeDocument/x2006/docPropsVTypes/impl/CTVectorImpl;->t2(I)[Ljava/lang/String;

    move-result-object p0

    return-object p0

    :pswitch_7
    invoke-static {p1}, Lorg/openxmlformats/schemas/officeDocument/x2006/docPropsVTypes/impl/CTVectorImpl;->d2(I)[Ljava/util/Calendar;

    move-result-object p0

    return-object p0

    :pswitch_8
    if-ltz p1, :cond_0

    invoke-static {p1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object p0

    goto :goto_0

    :cond_0
    const-string p0, ""

    :goto_0
    return-object p0

    :pswitch_9
    invoke-static {p1}, Lorg/apache/xmlbeans/impl/schema/z;->d(I)[Li5/t;

    move-result-object p0

    return-object p0

    :pswitch_a
    invoke-static {p1}, Lorg/apache/xmlbeans/impl/schema/z;->j(I)[Li5/c0;

    move-result-object p0

    return-object p0

    :pswitch_b
    invoke-static {p1}, Lorg/apache/poi/hssf/record/common/ExtRst;->c(I)[Lorg/apache/poi/hssf/record/common/PhRun;

    move-result-object p0

    return-object p0

    :pswitch_c
    invoke-static {p1}, Lorg/apache/poi/hssf/record/chart/ChartFRTInfoRecord;->d(I)[Lorg/apache/poi/hssf/record/chart/ChartFRTInfoRecord$CFRTID;

    move-result-object p0

    return-object p0

    :pswitch_d
    invoke-static {p1}, Lorg/apache/poi/hssf/record/cf/ColorGradientFormatting;->a(I)[Lorg/apache/poi/hssf/record/cf/ColorGradientThreshold;

    move-result-object p0

    return-object p0

    nop

    :pswitch_data_0
    .packed-switch 0x0
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
