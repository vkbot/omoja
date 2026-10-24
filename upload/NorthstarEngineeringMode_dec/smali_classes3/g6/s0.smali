.class public final synthetic Lg6/s0;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/function/Function;


# instance fields
.field public final synthetic a:I

.field public final synthetic b:Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/impl/CTSharedItemsImpl;


# direct methods
.method public synthetic constructor <init>(Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/impl/CTSharedItemsImpl;I)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p2, p0, Lg6/s0;->a:I

    iput-object p1, p0, Lg6/s0;->b:Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/impl/CTSharedItemsImpl;

    return-void
.end method


# virtual methods
.method public final apply(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    iget v0, p0, Lg6/s0;->a:I

    iget-object p0, p0, Lg6/s0;->b:Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/impl/CTSharedItemsImpl;

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    packed-switch v0, :pswitch_data_0

    invoke-virtual {p0, p1}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/impl/CTSharedItemsImpl;->getEArray(I)Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTError;

    move-result-object p0

    return-object p0

    :pswitch_0
    invoke-virtual {p0, p1}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/impl/CTSharedItemsImpl;->insertNewM(I)Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTMissing;

    move-result-object p0

    return-object p0

    :pswitch_1
    invoke-virtual {p0, p1}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/impl/CTSharedItemsImpl;->getDArray(I)Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTDateTime;

    move-result-object p0

    return-object p0

    :pswitch_2
    invoke-virtual {p0, p1}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/impl/CTSharedItemsImpl;->insertNewB(I)Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTBoolean;

    move-result-object p0

    return-object p0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
