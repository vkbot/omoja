.class public final synthetic Lg6/c0;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/function/Consumer;


# instance fields
.field public final synthetic a:I

.field public final synthetic b:Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/impl/CTRPrEltImpl;


# direct methods
.method public synthetic constructor <init>(Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/impl/CTRPrEltImpl;I)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p2, p0, Lg6/c0;->a:I

    iput-object p1, p0, Lg6/c0;->b:Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/impl/CTRPrEltImpl;

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .locals 1

    iget v0, p0, Lg6/c0;->a:I

    iget-object p0, p0, Lg6/c0;->b:Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/impl/CTRPrEltImpl;

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    packed-switch v0, :pswitch_data_0

    invoke-virtual {p0, p1}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/impl/CTRPrEltImpl;->removeRFont(I)V

    return-void

    :pswitch_0
    invoke-virtual {p0, p1}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/impl/CTRPrEltImpl;->removeScheme(I)V

    return-void

    :pswitch_1
    invoke-virtual {p0, p1}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/impl/CTRPrEltImpl;->removeOutline(I)V

    return-void

    :pswitch_2
    invoke-virtual {p0, p1}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/impl/CTRPrEltImpl;->removeStrike(I)V

    return-void

    :pswitch_3
    invoke-virtual {p0, p1}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/impl/CTRPrEltImpl;->removeColor(I)V

    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
