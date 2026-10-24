.class public final synthetic Ld6/e;
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

    iput p2, p0, Ld6/e;->a:I

    iput-object p1, p0, Ld6/e;->b:Lorg/openxmlformats/schemas/officeDocument/x2006/docPropsVTypes/impl/CTVectorImpl;

    return-void
.end method

.method private final a(Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 0

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    check-cast p2, Lorg/openxmlformats/schemas/officeDocument/x2006/docPropsVTypes/STError;

    iget-object p0, p0, Ld6/e;->b:Lorg/openxmlformats/schemas/officeDocument/x2006/docPropsVTypes/impl/CTVectorImpl;

    invoke-virtual {p0, p1, p2}, Lorg/openxmlformats/schemas/officeDocument/x2006/docPropsVTypes/impl/CTVectorImpl;->xsetErrorArray(ILorg/openxmlformats/schemas/officeDocument/x2006/docPropsVTypes/STError;)V

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 2

    iget v0, p0, Ld6/e;->a:I

    iget-object v1, p0, Ld6/e;->b:Lorg/openxmlformats/schemas/officeDocument/x2006/docPropsVTypes/impl/CTVectorImpl;

    packed-switch v0, :pswitch_data_0

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p0

    check-cast p2, Ljava/lang/Boolean;

    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    invoke-virtual {v1, p0, p1}, Lorg/openxmlformats/schemas/officeDocument/x2006/docPropsVTypes/impl/CTVectorImpl;->insertBool(IZ)V

    return-void

    :pswitch_0
    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p0

    check-cast p2, Ljava/lang/Byte;

    invoke-virtual {p2}, Ljava/lang/Byte;->byteValue()B

    move-result p1

    invoke-virtual {v1, p0, p1}, Lorg/openxmlformats/schemas/officeDocument/x2006/docPropsVTypes/impl/CTVectorImpl;->insertI1(IB)V

    return-void

    :pswitch_1
    invoke-direct {p0, p1, p2}, Ld6/e;->a(Ljava/lang/Object;Ljava/lang/Object;)V

    return-void

    :pswitch_2
    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p0

    check-cast p2, Ljava/math/BigInteger;

    invoke-virtual {v1, p0, p2}, Lorg/openxmlformats/schemas/officeDocument/x2006/docPropsVTypes/impl/CTVectorImpl;->setUi8Array(ILjava/math/BigInteger;)V

    return-void

    :pswitch_3
    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p0

    check-cast p2, Ljava/lang/Long;

    invoke-virtual {p2}, Ljava/lang/Long;->longValue()J

    move-result-wide p1

    invoke-virtual {v1, p0, p1, p2}, Lorg/openxmlformats/schemas/officeDocument/x2006/docPropsVTypes/impl/CTVectorImpl;->insertUi4(IJ)V

    return-void

    :pswitch_4
    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p0

    check-cast p2, Ljava/lang/String;

    invoke-virtual {v1, p0, p2}, Lorg/openxmlformats/schemas/officeDocument/x2006/docPropsVTypes/impl/CTVectorImpl;->setErrorArray(ILjava/lang/String;)V

    return-void

    :pswitch_5
    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p0

    check-cast p2, Li5/r0;

    invoke-virtual {v1, p0, p2}, Lorg/openxmlformats/schemas/officeDocument/x2006/docPropsVTypes/impl/CTVectorImpl;->xsetDateArray(ILi5/r0;)V

    return-void

    :pswitch_6
    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p0

    check-cast p2, Lorg/openxmlformats/schemas/officeDocument/x2006/sharedTypes/STGuid;

    invoke-virtual {v1, p0, p2}, Lorg/openxmlformats/schemas/officeDocument/x2006/docPropsVTypes/impl/CTVectorImpl;->xsetClsidArray(ILorg/openxmlformats/schemas/officeDocument/x2006/sharedTypes/STGuid;)V

    return-void

    :pswitch_7
    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p0

    check-cast p2, Ljava/util/Calendar;

    invoke-virtual {v1, p0, p2}, Lorg/openxmlformats/schemas/officeDocument/x2006/docPropsVTypes/impl/CTVectorImpl;->setDateArray(ILjava/util/Calendar;)V

    return-void

    :pswitch_8
    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p0

    check-cast p2, Ljava/util/Calendar;

    invoke-virtual {v1, p0, p2}, Lorg/openxmlformats/schemas/officeDocument/x2006/docPropsVTypes/impl/CTVectorImpl;->insertFiletime(ILjava/util/Calendar;)V

    return-void

    :pswitch_9
    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p0

    check-cast p2, Ljava/lang/String;

    invoke-virtual {v1, p0, p2}, Lorg/openxmlformats/schemas/officeDocument/x2006/docPropsVTypes/impl/CTVectorImpl;->setCyArray(ILjava/lang/String;)V

    return-void

    :pswitch_a
    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p0

    check-cast p2, Ljava/lang/Integer;

    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result p1

    invoke-virtual {v1, p0, p1}, Lorg/openxmlformats/schemas/officeDocument/x2006/docPropsVTypes/impl/CTVectorImpl;->insertI4(II)V

    return-void

    :pswitch_b
    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p0

    check-cast p2, Ljava/lang/Float;

    invoke-virtual {p2}, Ljava/lang/Float;->floatValue()F

    move-result p1

    invoke-virtual {v1, p0, p1}, Lorg/openxmlformats/schemas/officeDocument/x2006/docPropsVTypes/impl/CTVectorImpl;->setR4Array(IF)V

    return-void

    :pswitch_c
    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p0

    check-cast p2, Li5/u0;

    invoke-virtual {v1, p0, p2}, Lorg/openxmlformats/schemas/officeDocument/x2006/docPropsVTypes/impl/CTVectorImpl;->xsetR8Array(ILi5/u0;)V

    return-void

    :pswitch_d
    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p0

    check-cast p2, Ljava/lang/Double;

    invoke-virtual {p2}, Ljava/lang/Double;->doubleValue()D

    move-result-wide p1

    invoke-virtual {v1, p0, p1, p2}, Lorg/openxmlformats/schemas/officeDocument/x2006/docPropsVTypes/impl/CTVectorImpl;->insertR8(ID)V

    return-void

    :pswitch_e
    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p0

    check-cast p2, Ljava/lang/Short;

    invoke-virtual {p2}, Ljava/lang/Short;->shortValue()S

    move-result p1

    invoke-virtual {v1, p0, p1}, Lorg/openxmlformats/schemas/officeDocument/x2006/docPropsVTypes/impl/CTVectorImpl;->setUi1Array(IS)V

    return-void

    :pswitch_f
    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p0

    check-cast p2, Li5/k2;

    invoke-virtual {v1, p0, p2}, Lorg/openxmlformats/schemas/officeDocument/x2006/docPropsVTypes/impl/CTVectorImpl;->xsetUi1Array(ILi5/k2;)V

    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x0
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
