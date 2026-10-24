.class public final synthetic Ld6/m;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/function/Supplier;


# instance fields
.field public final synthetic a:I

.field public final synthetic b:Lorg/openxmlformats/schemas/officeDocument/x2006/docPropsVTypes/impl/CTVectorImpl;


# direct methods
.method public synthetic constructor <init>(Lorg/openxmlformats/schemas/officeDocument/x2006/docPropsVTypes/impl/CTVectorImpl;I)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p2, p0, Ld6/m;->a:I

    iput-object p1, p0, Ld6/m;->b:Lorg/openxmlformats/schemas/officeDocument/x2006/docPropsVTypes/impl/CTVectorImpl;

    return-void
.end method


# virtual methods
.method public final get()Ljava/lang/Object;
    .locals 1

    iget v0, p0, Ld6/m;->a:I

    iget-object p0, p0, Ld6/m;->b:Lorg/openxmlformats/schemas/officeDocument/x2006/docPropsVTypes/impl/CTVectorImpl;

    packed-switch v0, :pswitch_data_0

    invoke-virtual {p0}, Lorg/openxmlformats/schemas/officeDocument/x2006/docPropsVTypes/impl/CTVectorImpl;->sizeOfI8Array()I

    move-result p0

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    return-object p0

    :pswitch_0
    invoke-virtual {p0}, Lorg/openxmlformats/schemas/officeDocument/x2006/docPropsVTypes/impl/CTVectorImpl;->sizeOfLpwstrArray()I

    move-result p0

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    return-object p0

    :pswitch_1
    invoke-virtual {p0}, Lorg/openxmlformats/schemas/officeDocument/x2006/docPropsVTypes/impl/CTVectorImpl;->sizeOfI2Array()I

    move-result p0

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    return-object p0

    :pswitch_2
    invoke-virtual {p0}, Lorg/openxmlformats/schemas/officeDocument/x2006/docPropsVTypes/impl/CTVectorImpl;->sizeOfI4Array()I

    move-result p0

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    return-object p0

    :pswitch_3
    invoke-virtual {p0}, Lorg/openxmlformats/schemas/officeDocument/x2006/docPropsVTypes/impl/CTVectorImpl;->sizeOfI2Array()I

    move-result p0

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    return-object p0

    :pswitch_4
    invoke-virtual {p0}, Lorg/openxmlformats/schemas/officeDocument/x2006/docPropsVTypes/impl/CTVectorImpl;->sizeOfI8Array()I

    move-result p0

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    return-object p0

    :pswitch_5
    invoke-virtual {p0}, Lorg/openxmlformats/schemas/officeDocument/x2006/docPropsVTypes/impl/CTVectorImpl;->sizeOfBstrArray()I

    move-result p0

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    return-object p0

    :pswitch_6
    invoke-virtual {p0}, Lorg/openxmlformats/schemas/officeDocument/x2006/docPropsVTypes/impl/CTVectorImpl;->sizeOfClsidArray()I

    move-result p0

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    return-object p0

    :pswitch_7
    invoke-virtual {p0}, Lorg/openxmlformats/schemas/officeDocument/x2006/docPropsVTypes/impl/CTVectorImpl;->sizeOfLpstrArray()I

    move-result p0

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    return-object p0

    :pswitch_8
    invoke-virtual {p0}, Lorg/openxmlformats/schemas/officeDocument/x2006/docPropsVTypes/impl/CTVectorImpl;->sizeOfFiletimeArray()I

    move-result p0

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    return-object p0

    :pswitch_9
    invoke-virtual {p0}, Lorg/openxmlformats/schemas/officeDocument/x2006/docPropsVTypes/impl/CTVectorImpl;->sizeOfCyArray()I

    move-result p0

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    return-object p0

    :pswitch_a
    invoke-virtual {p0}, Lorg/openxmlformats/schemas/officeDocument/x2006/docPropsVTypes/impl/CTVectorImpl;->sizeOfBstrArray()I

    move-result p0

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    return-object p0

    :pswitch_b
    invoke-virtual {p0}, Lorg/openxmlformats/schemas/officeDocument/x2006/docPropsVTypes/impl/CTVectorImpl;->sizeOfLpwstrArray()I

    move-result p0

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    return-object p0

    :pswitch_c
    invoke-virtual {p0}, Lorg/openxmlformats/schemas/officeDocument/x2006/docPropsVTypes/impl/CTVectorImpl;->sizeOfBoolArray()I

    move-result p0

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    return-object p0

    :pswitch_d
    invoke-virtual {p0}, Lorg/openxmlformats/schemas/officeDocument/x2006/docPropsVTypes/impl/CTVectorImpl;->sizeOfLpstrArray()I

    move-result p0

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    return-object p0

    :pswitch_e
    invoke-virtual {p0}, Lorg/openxmlformats/schemas/officeDocument/x2006/docPropsVTypes/impl/CTVectorImpl;->sizeOfUi4Array()I

    move-result p0

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    return-object p0

    :pswitch_f
    invoke-virtual {p0}, Lorg/openxmlformats/schemas/officeDocument/x2006/docPropsVTypes/impl/CTVectorImpl;->sizeOfUi2Array()I

    move-result p0

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    return-object p0

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
