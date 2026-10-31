.class public final synthetic Lorg/apache/commons/io/function/g0;
.super Ljava/lang/Object;
.source "r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75"

# interfaces
.implements Lorg/apache/commons/io/function/IOConsumer;


# instance fields
.field public final synthetic a:I

.field public final synthetic b:Ljava/lang/Object;


# direct methods
.method public synthetic constructor <init>(ILjava/lang/Object;)V
    .registers 3

    .line 1
    iput p1, p0, Lorg/apache/commons/io/function/g0;->a:I

    .line 2
    .line 3
    iput-object p2, p0, Lorg/apache/commons/io/function/g0;->b:Ljava/lang/Object;

    .line 4
    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6
    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .registers 3

    .line 1
    iget v0, p0, Lorg/apache/commons/io/function/g0;->a:I

    .line 2
    .line 3
    packed-switch v0, :pswitch_data_18

    .line 4
    .line 5
    .line 6
    iget-object v0, p0, Lorg/apache/commons/io/function/g0;->b:Ljava/lang/Object;

    .line 7
    .line 8
    check-cast v0, Lorg/apache/commons/io/function/IOSpliterator;

    .line 9
    .line 10
    check-cast p1, Lorg/apache/commons/io/function/IOConsumer;

    .line 11
    .line 12
    invoke-interface {v0, p1}, Lorg/apache/commons/io/function/IOSpliterator;->forEachRemaining(Lorg/apache/commons/io/function/IOConsumer;)V

    .line 13
    .line 14
    .line 15
    return-void

    .line 16
    :pswitch_f
    iget-object v0, p0, Lorg/apache/commons/io/function/g0;->b:Ljava/lang/Object;

    .line 17
    .line 18
    check-cast v0, Ljava/util/function/Consumer;

    .line 19
    .line 20
    invoke-interface {v0, p1}, Ljava/util/function/Consumer;->accept(Ljava/lang/Object;)V

    .line 21
    .line 22
    .line 23
    return-void

    .line 24
    nop

    .line 25
    :pswitch_data_18
    .packed-switch 0x0
        :pswitch_f
    .end packed-switch
.end method
