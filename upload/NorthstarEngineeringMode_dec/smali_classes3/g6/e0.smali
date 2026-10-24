.class public final synthetic Lg6/e0;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/function/BiConsumer;


# instance fields
.field public final synthetic a:I

.field public final synthetic b:Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/impl/CTRPrEltImpl;


# direct methods
.method public synthetic constructor <init>(Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/impl/CTRPrEltImpl;I)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p2, p0, Lg6/e0;->a:I

    iput-object p1, p0, Lg6/e0;->b:Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/impl/CTRPrEltImpl;

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 1

    iget v0, p0, Lg6/e0;->a:I

    iget-object p0, p0, Lg6/e0;->b:Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/impl/CTRPrEltImpl;

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    packed-switch v0, :pswitch_data_0

    check-cast p2, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTUnderlineProperty;

    invoke-virtual {p0, p1, p2}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/impl/CTRPrEltImpl;->setUArray(ILorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTUnderlineProperty;)V

    return-void

    :pswitch_0
    check-cast p2, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTBooleanProperty;

    invoke-virtual {p0, p1, p2}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/impl/CTRPrEltImpl;->setCondenseArray(ILorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTBooleanProperty;)V

    return-void

    :pswitch_1
    check-cast p2, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTVerticalAlignFontProperty;

    invoke-virtual {p0, p1, p2}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/impl/CTRPrEltImpl;->setVertAlignArray(ILorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTVerticalAlignFontProperty;)V

    return-void

    :pswitch_2
    check-cast p2, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTIntProperty;

    invoke-virtual {p0, p1, p2}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/impl/CTRPrEltImpl;->setCharsetArray(ILorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTIntProperty;)V

    return-void

    :pswitch_3
    check-cast p2, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTBooleanProperty;

    invoke-virtual {p0, p1, p2}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/impl/CTRPrEltImpl;->setIArray(ILorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTBooleanProperty;)V

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
