.class public final synthetic Lorg/apache/commons/io/function/z;
.super Ljava/lang/Object;
.source "r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75"

# interfaces
.implements Ljava/util/function/Supplier;


# instance fields
.field public final synthetic a:I

.field public final synthetic b:Lorg/apache/commons/io/function/IOSupplier;


# direct methods
.method public synthetic constructor <init>(Lorg/apache/commons/io/function/IOSupplier;I)V
    .locals 0

    .line 1
    iput p2, p0, Lorg/apache/commons/io/function/z;->a:I

    .line 2
    .line 3
    iput-object p1, p0, Lorg/apache/commons/io/function/z;->b:Lorg/apache/commons/io/function/IOSupplier;

    .line 4
    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6
    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public final get()Ljava/lang/Object;
    .locals 1

    .line 1
    iget v0, p0, Lorg/apache/commons/io/function/z;->a:I

    .line 2
    .line 3
    packed-switch v0, :pswitch_data_0

    .line 4
    .line 5
    .line 6
    iget-object v0, p0, Lorg/apache/commons/io/function/z;->b:Lorg/apache/commons/io/function/IOSupplier;

    .line 7
    .line 8
    invoke-interface {v0}, Lorg/apache/commons/io/function/IOSupplier;->getUnchecked()Ljava/lang/Object;

    .line 9
    .line 10
    .line 11
    move-result-object v0

    .line 12
    return-object v0

    .line 13
    :pswitch_0
    iget-object v0, p0, Lorg/apache/commons/io/function/z;->b:Lorg/apache/commons/io/function/IOSupplier;

    .line 14
    .line 15
    invoke-static {v0}, Lorg/apache/commons/io/function/IOStream;->l(Lorg/apache/commons/io/function/IOSupplier;)Ljava/lang/Object;

    .line 16
    .line 17
    .line 18
    move-result-object v0

    .line 19
    return-object v0

    .line 20
    nop

    .line 21
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
