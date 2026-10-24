.class public final synthetic Lg6/r0;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/function/BiConsumer;


# instance fields
.field public final synthetic a:I

.field public final synthetic b:Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/impl/CTSharedItemsImpl;


# direct methods
.method public synthetic constructor <init>(Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/impl/CTSharedItemsImpl;I)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p2, p0, Lg6/r0;->a:I

    iput-object p1, p0, Lg6/r0;->b:Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/impl/CTSharedItemsImpl;

    return-void
.end method

.method private final a(Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 0

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    check-cast p2, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTBoolean;

    iget-object p0, p0, Lg6/r0;->b:Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/impl/CTSharedItemsImpl;

    invoke-virtual {p0, p1, p2}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/impl/CTSharedItemsImpl;->setBArray(ILorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTBoolean;)V

    return-void
.end method

.method private final b(Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 0

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    check-cast p2, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTMissing;

    iget-object p0, p0, Lg6/r0;->b:Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/impl/CTSharedItemsImpl;

    invoke-virtual {p0, p1, p2}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/impl/CTSharedItemsImpl;->setMArray(ILorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTMissing;)V

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 1

    iget v0, p0, Lg6/r0;->a:I

    packed-switch v0, :pswitch_data_0

    invoke-direct {p0, p1, p2}, Lg6/r0;->b(Ljava/lang/Object;Ljava/lang/Object;)V

    return-void

    :pswitch_0
    invoke-direct {p0, p1, p2}, Lg6/r0;->a(Ljava/lang/Object;Ljava/lang/Object;)V

    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
