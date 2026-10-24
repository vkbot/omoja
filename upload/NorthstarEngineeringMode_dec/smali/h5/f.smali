.class public final synthetic Lh5/f;
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

    iput p1, p0, Lh5/f;->a:I

    return-void
.end method


# virtual methods
.method public final apply(I)Ljava/lang/Object;
    .locals 0

    iget p0, p0, Lh5/f;->a:I

    packed-switch p0, :pswitch_data_0

    invoke-static {p1}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/impl/CTCfRuleImpl;->d2(I)[Ljava/lang/String;

    move-result-object p0

    return-object p0

    :pswitch_0
    invoke-static {p1}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/impl/CTCfRuleImpl;->c2(I)[Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/STFormula;

    move-result-object p0

    return-object p0

    :pswitch_1
    invoke-static {p1}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/impl/CTAuthorsImpl;->c2(I)[Ljava/lang/String;

    move-result-object p0

    return-object p0

    :pswitch_2
    invoke-static {p1}, Lorg/openxmlformats/schemas/officeDocument/x2006/docPropsVTypes/impl/CTVectorImpl;->p2(I)[Ljava/math/BigInteger;

    move-result-object p0

    return-object p0

    :pswitch_3
    invoke-static {p1}, Lorg/openxmlformats/schemas/officeDocument/x2006/docPropsVTypes/impl/CTVectorImpl;->q2(I)[Li5/g2;

    move-result-object p0

    return-object p0

    :pswitch_4
    invoke-static {p1}, Lorg/openxmlformats/schemas/officeDocument/x2006/docPropsVTypes/impl/CTVectorImpl;->s2(I)[Ljava/lang/String;

    move-result-object p0

    return-object p0

    :pswitch_5
    invoke-static {p1}, Lorg/openxmlformats/schemas/officeDocument/x2006/docPropsVTypes/impl/CTVectorImpl;->C2(I)[Li5/l1;

    move-result-object p0

    return-object p0

    :pswitch_6
    invoke-static {p1}, Lorg/openxmlformats/schemas/officeDocument/x2006/docPropsVTypes/impl/CTVectorImpl;->D2(I)[Ljava/lang/String;

    move-result-object p0

    return-object p0

    :pswitch_7
    invoke-static {p1}, Lorg/openxmlformats/schemas/officeDocument/x2006/docPropsVTypes/impl/CTVectorImpl;->v2(I)[Li5/r0;

    move-result-object p0

    return-object p0

    :pswitch_8
    invoke-static {p1}, Lorg/openxmlformats/schemas/officeDocument/x2006/docPropsVTypes/impl/CTVectorImpl;->z2(I)[Li5/m0;

    move-result-object p0

    return-object p0

    :pswitch_9
    invoke-static {p1}, Lorg/apache/xmlbeans/impl/schema/z;->p(I)[Li5/y;

    move-result-object p0

    return-object p0

    :pswitch_a
    invoke-static {p1}, Lorg/apache/xmlbeans/impl/schema/z;->c(I)[Li5/c0;

    move-result-object p0

    return-object p0

    :pswitch_b
    invoke-static {p1}, Lorg/apache/xmlbeans/impl/schema/z;->b(I)[Li5/c0;

    move-result-object p0

    return-object p0

    :pswitch_c
    invoke-static {p1}, Lorg/apache/xmlbeans/impl/schema/z;->m(I)[Li5/c0;

    move-result-object p0

    return-object p0

    :pswitch_d
    invoke-static {p1}, Lorg/apache/xmlbeans/impl/schema/z;->f(I)[Li5/v;

    move-result-object p0

    return-object p0

    :pswitch_e
    invoke-static {p1}, Lorg/apache/poi/hssf/record/cf/ColorGradientFormatting;->b(I)[Lorg/apache/poi/hssf/record/common/ExtendedColor;

    move-result-object p0

    return-object p0

    nop

    :pswitch_data_0
    .packed-switch 0x0
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
