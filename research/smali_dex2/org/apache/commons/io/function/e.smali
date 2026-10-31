.class public final synthetic Lorg/apache/commons/io/function/e;
.super Ljava/lang/Object;
.source "r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75"

# interfaces
.implements Ljava/util/function/BiConsumer;


# instance fields
.field public final synthetic a:I

.field public final synthetic b:Lorg/apache/commons/io/function/IOBiConsumer;


# direct methods
.method public synthetic constructor <init>(Lorg/apache/commons/io/function/IOBiConsumer;I)V
    .registers 3

    .line 1
    iput p2, p0, Lorg/apache/commons/io/function/e;->a:I

    .line 2
    .line 3
    iput-object p1, p0, Lorg/apache/commons/io/function/e;->b:Lorg/apache/commons/io/function/IOBiConsumer;

    .line 4
    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6
    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;Ljava/lang/Object;)V
    .registers 4

    .line 1
    iget v0, p0, Lorg/apache/commons/io/function/e;->a:I

    .line 2
    .line 3
    packed-switch v0, :pswitch_data_18

    .line 4
    .line 5
    .line 6
    iget-object v0, p0, Lorg/apache/commons/io/function/e;->b:Lorg/apache/commons/io/function/IOBiConsumer;

    .line 7
    .line 8
    invoke-static {v0, p1, p2}, Lorg/apache/commons/io/function/IOStream;->x(Lorg/apache/commons/io/function/IOBiConsumer;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 9
    .line 10
    .line 11
    return-void

    .line 12
    :pswitch_b
    iget-object v0, p0, Lorg/apache/commons/io/function/e;->b:Lorg/apache/commons/io/function/IOBiConsumer;

    .line 13
    .line 14
    invoke-static {v0, p1, p2}, Lorg/apache/commons/io/function/IOStream;->i(Lorg/apache/commons/io/function/IOBiConsumer;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 15
    .line 16
    .line 17
    return-void

    .line 18
    :pswitch_11
    iget-object v0, p0, Lorg/apache/commons/io/function/e;->b:Lorg/apache/commons/io/function/IOBiConsumer;

    .line 19
    .line 20
    invoke-static {v0, p1, p2}, Lorg/apache/commons/io/function/IOBiConsumer;->f(Lorg/apache/commons/io/function/IOBiConsumer;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 21
    .line 22
    .line 23
    return-void

    .line 24
    nop

    .line 25
    :pswitch_data_18
    .packed-switch 0x0
        :pswitch_11
        :pswitch_b
    .end packed-switch
.end method
