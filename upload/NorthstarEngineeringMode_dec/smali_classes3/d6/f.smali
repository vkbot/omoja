.class public final synthetic Ld6/f;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/function/Function;


# instance fields
.field public final synthetic a:I

.field public final synthetic b:Lorg/openxmlformats/schemas/officeDocument/x2006/docPropsVTypes/impl/CTVectorImpl;


# direct methods
.method public synthetic constructor <init>(Lorg/openxmlformats/schemas/officeDocument/x2006/docPropsVTypes/impl/CTVectorImpl;I)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p2, p0, Ld6/f;->a:I

    iput-object p1, p0, Ld6/f;->b:Lorg/openxmlformats/schemas/officeDocument/x2006/docPropsVTypes/impl/CTVectorImpl;

    return-void
.end method


# virtual methods
.method public final apply(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    iget v0, p0, Ld6/f;->a:I

    iget-object p0, p0, Ld6/f;->b:Lorg/openxmlformats/schemas/officeDocument/x2006/docPropsVTypes/impl/CTVectorImpl;

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    packed-switch v0, :pswitch_data_0

    invoke-virtual {p0, p1}, Lorg/openxmlformats/schemas/officeDocument/x2006/docPropsVTypes/impl/CTVectorImpl;->xgetR4Array(I)Li5/b1;

    move-result-object p0

    return-object p0

    :pswitch_0
    invoke-virtual {p0, p1}, Lorg/openxmlformats/schemas/officeDocument/x2006/docPropsVTypes/impl/CTVectorImpl;->getBoolArray(I)Z

    move-result p0

    invoke-static {p0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p0

    return-object p0

    :pswitch_1
    invoke-virtual {p0, p1}, Lorg/openxmlformats/schemas/officeDocument/x2006/docPropsVTypes/impl/CTVectorImpl;->getI1Array(I)B

    move-result p0

    invoke-static {p0}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object p0

    return-object p0

    :pswitch_2
    invoke-virtual {p0, p1}, Lorg/openxmlformats/schemas/officeDocument/x2006/docPropsVTypes/impl/CTVectorImpl;->insertNewError(I)Lorg/openxmlformats/schemas/officeDocument/x2006/docPropsVTypes/STError;

    move-result-object p0

    return-object p0

    :pswitch_3
    invoke-virtual {p0, p1}, Lorg/openxmlformats/schemas/officeDocument/x2006/docPropsVTypes/impl/CTVectorImpl;->xgetUi8Array(I)Li5/m2;

    move-result-object p0

    return-object p0

    :pswitch_4
    invoke-virtual {p0, p1}, Lorg/openxmlformats/schemas/officeDocument/x2006/docPropsVTypes/impl/CTVectorImpl;->getUi4Array(I)J

    move-result-wide p0

    invoke-static {p0, p1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p0

    return-object p0

    :pswitch_5
    invoke-virtual {p0, p1}, Lorg/openxmlformats/schemas/officeDocument/x2006/docPropsVTypes/impl/CTVectorImpl;->getVariantArray(I)Lorg/openxmlformats/schemas/officeDocument/x2006/docPropsVTypes/CTVariant;

    move-result-object p0

    return-object p0

    :pswitch_6
    invoke-virtual {p0, p1}, Lorg/openxmlformats/schemas/officeDocument/x2006/docPropsVTypes/impl/CTVectorImpl;->insertNewDate(I)Li5/r0;

    move-result-object p0

    return-object p0

    :pswitch_7
    invoke-virtual {p0, p1}, Lorg/openxmlformats/schemas/officeDocument/x2006/docPropsVTypes/impl/CTVectorImpl;->xgetI1Array(I)Li5/n0;

    move-result-object p0

    return-object p0

    :pswitch_8
    invoke-virtual {p0, p1}, Lorg/openxmlformats/schemas/officeDocument/x2006/docPropsVTypes/impl/CTVectorImpl;->insertNewClsid(I)Lorg/openxmlformats/schemas/officeDocument/x2006/sharedTypes/STGuid;

    move-result-object p0

    return-object p0

    :pswitch_9
    invoke-virtual {p0, p1}, Lorg/openxmlformats/schemas/officeDocument/x2006/docPropsVTypes/impl/CTVectorImpl;->getFiletimeArray(I)Ljava/util/Calendar;

    move-result-object p0

    return-object p0

    :pswitch_a
    invoke-virtual {p0, p1}, Lorg/openxmlformats/schemas/officeDocument/x2006/docPropsVTypes/impl/CTVectorImpl;->getI4Array(I)I

    move-result p0

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    return-object p0

    :pswitch_b
    invoke-virtual {p0, p1}, Lorg/openxmlformats/schemas/officeDocument/x2006/docPropsVTypes/impl/CTVectorImpl;->xgetUi2Array(I)Li5/n2;

    move-result-object p0

    return-object p0

    :pswitch_c
    invoke-virtual {p0, p1}, Lorg/openxmlformats/schemas/officeDocument/x2006/docPropsVTypes/impl/CTVectorImpl;->insertNewR8(I)Li5/u0;

    move-result-object p0

    return-object p0

    :pswitch_d
    invoke-virtual {p0, p1}, Lorg/openxmlformats/schemas/officeDocument/x2006/docPropsVTypes/impl/CTVectorImpl;->getR8Array(I)D

    move-result-wide p0

    invoke-static {p0, p1}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object p0

    return-object p0

    :pswitch_e
    invoke-virtual {p0, p1}, Lorg/openxmlformats/schemas/officeDocument/x2006/docPropsVTypes/impl/CTVectorImpl;->insertNewUi1(I)Li5/k2;

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
