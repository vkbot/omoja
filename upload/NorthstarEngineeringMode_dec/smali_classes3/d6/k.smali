.class public final synthetic Ld6/k;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/function/BiConsumer;


# instance fields
.field public final synthetic a:I

.field public final synthetic b:Lorg/openxmlformats/schemas/officeDocument/x2006/docPropsVTypes/impl/CTVectorImpl;


# direct methods
.method public synthetic constructor <init>(Lorg/openxmlformats/schemas/officeDocument/x2006/docPropsVTypes/impl/CTVectorImpl;I)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p2, p0, Ld6/k;->a:I

    iput-object p1, p0, Ld6/k;->b:Lorg/openxmlformats/schemas/officeDocument/x2006/docPropsVTypes/impl/CTVectorImpl;

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 2

    iget v0, p0, Ld6/k;->a:I

    iget-object p0, p0, Ld6/k;->b:Lorg/openxmlformats/schemas/officeDocument/x2006/docPropsVTypes/impl/CTVectorImpl;

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    packed-switch v0, :pswitch_data_0

    check-cast p2, Ljava/lang/String;

    invoke-virtual {p0, p1, p2}, Lorg/openxmlformats/schemas/officeDocument/x2006/docPropsVTypes/impl/CTVectorImpl;->insertLpwstr(ILjava/lang/String;)V

    return-void

    :pswitch_0
    check-cast p2, Li5/b1;

    invoke-virtual {p0, p1, p2}, Lorg/openxmlformats/schemas/officeDocument/x2006/docPropsVTypes/impl/CTVectorImpl;->xsetR4Array(ILi5/b1;)V

    return-void

    :pswitch_1
    check-cast p2, Ljava/lang/Boolean;

    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p2

    invoke-virtual {p0, p1, p2}, Lorg/openxmlformats/schemas/officeDocument/x2006/docPropsVTypes/impl/CTVectorImpl;->setBoolArray(IZ)V

    return-void

    :pswitch_2
    check-cast p2, Ljava/lang/Byte;

    invoke-virtual {p2}, Ljava/lang/Byte;->byteValue()B

    move-result p2

    invoke-virtual {p0, p1, p2}, Lorg/openxmlformats/schemas/officeDocument/x2006/docPropsVTypes/impl/CTVectorImpl;->setI1Array(IB)V

    return-void

    :pswitch_3
    check-cast p2, Ljava/lang/Short;

    invoke-virtual {p2}, Ljava/lang/Short;->shortValue()S

    move-result p2

    invoke-virtual {p0, p1, p2}, Lorg/openxmlformats/schemas/officeDocument/x2006/docPropsVTypes/impl/CTVectorImpl;->insertI2(IS)V

    return-void

    :pswitch_4
    check-cast p2, Li5/m2;

    invoke-virtual {p0, p1, p2}, Lorg/openxmlformats/schemas/officeDocument/x2006/docPropsVTypes/impl/CTVectorImpl;->xsetUi8Array(ILi5/m2;)V

    return-void

    :pswitch_5
    check-cast p2, Ljava/lang/Long;

    invoke-virtual {p2}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    invoke-virtual {p0, p1, v0, v1}, Lorg/openxmlformats/schemas/officeDocument/x2006/docPropsVTypes/impl/CTVectorImpl;->insertI8(IJ)V

    return-void

    :pswitch_6
    check-cast p2, Ljava/lang/Long;

    invoke-virtual {p2}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    invoke-virtual {p0, p1, v0, v1}, Lorg/openxmlformats/schemas/officeDocument/x2006/docPropsVTypes/impl/CTVectorImpl;->setUi4Array(IJ)V

    return-void

    :pswitch_7
    check-cast p2, Ljava/lang/String;

    invoke-virtual {p0, p1, p2}, Lorg/openxmlformats/schemas/officeDocument/x2006/docPropsVTypes/impl/CTVectorImpl;->insertClsid(ILjava/lang/String;)V

    return-void

    :pswitch_8
    check-cast p2, Ljava/lang/String;

    invoke-virtual {p0, p1, p2}, Lorg/openxmlformats/schemas/officeDocument/x2006/docPropsVTypes/impl/CTVectorImpl;->insertLpstr(ILjava/lang/String;)V

    return-void

    :pswitch_9
    check-cast p2, Lorg/openxmlformats/schemas/officeDocument/x2006/docPropsVTypes/CTVariant;

    invoke-virtual {p0, p1, p2}, Lorg/openxmlformats/schemas/officeDocument/x2006/docPropsVTypes/impl/CTVectorImpl;->setVariantArray(ILorg/openxmlformats/schemas/officeDocument/x2006/docPropsVTypes/CTVariant;)V

    return-void

    :pswitch_a
    check-cast p2, Ljava/lang/String;

    invoke-virtual {p0, p1, p2}, Lorg/openxmlformats/schemas/officeDocument/x2006/docPropsVTypes/impl/CTVectorImpl;->insertBstr(ILjava/lang/String;)V

    return-void

    :pswitch_b
    check-cast p2, Li5/n0;

    invoke-virtual {p0, p1, p2}, Lorg/openxmlformats/schemas/officeDocument/x2006/docPropsVTypes/impl/CTVectorImpl;->xsetI1Array(ILi5/n0;)V

    return-void

    :pswitch_c
    check-cast p2, Ljava/util/Calendar;

    invoke-virtual {p0, p1, p2}, Lorg/openxmlformats/schemas/officeDocument/x2006/docPropsVTypes/impl/CTVectorImpl;->setFiletimeArray(ILjava/util/Calendar;)V

    return-void

    :pswitch_d
    check-cast p2, Ljava/lang/Integer;

    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result p2

    invoke-virtual {p0, p1, p2}, Lorg/openxmlformats/schemas/officeDocument/x2006/docPropsVTypes/impl/CTVectorImpl;->setI4Array(II)V

    return-void

    :pswitch_e
    check-cast p2, Li5/n2;

    invoke-virtual {p0, p1, p2}, Lorg/openxmlformats/schemas/officeDocument/x2006/docPropsVTypes/impl/CTVectorImpl;->xsetUi2Array(ILi5/n2;)V

    return-void

    :pswitch_f
    check-cast p2, Ljava/lang/Double;

    invoke-virtual {p2}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v0

    invoke-virtual {p0, p1, v0, v1}, Lorg/openxmlformats/schemas/officeDocument/x2006/docPropsVTypes/impl/CTVectorImpl;->setR8Array(ID)V

    return-void

    :pswitch_10
    check-cast p2, Ljava/lang/Integer;

    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result p2

    invoke-virtual {p0, p1, p2}, Lorg/openxmlformats/schemas/officeDocument/x2006/docPropsVTypes/impl/CTVectorImpl;->insertUi2(II)V

    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x0
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
