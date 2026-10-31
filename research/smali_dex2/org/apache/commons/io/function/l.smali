.class public final synthetic Lorg/apache/commons/io/function/l;
.super Ljava/lang/Object;
.source "r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75"

# interfaces
.implements Lorg/apache/commons/io/function/IOConsumer;


# instance fields
.field public final synthetic a:I

.field public final synthetic b:Ljava/lang/Object;

.field public final synthetic c:Ljava/lang/Object;


# direct methods
.method public synthetic constructor <init>(ILjava/lang/Object;Ljava/lang/Object;)V
    .registers 4

    .line 12
    iput p1, p0, Lorg/apache/commons/io/function/l;->a:I

    iput-object p2, p0, Lorg/apache/commons/io/function/l;->b:Ljava/lang/Object;

    iput-object p3, p0, Lorg/apache/commons/io/function/l;->c:Ljava/lang/Object;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lorg/apache/commons/io/function/IOFunction;Lorg/apache/commons/io/function/IOConsumer;)V
    .registers 4

    .line 1
    const/4 v0, 0x1

    .line 2
    iput v0, p0, Lorg/apache/commons/io/function/l;->a:I

    .line 3
    .line 4
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 5
    .line 6
    .line 7
    iput-object p1, p0, Lorg/apache/commons/io/function/l;->c:Ljava/lang/Object;

    .line 8
    .line 9
    iput-object p2, p0, Lorg/apache/commons/io/function/l;->b:Ljava/lang/Object;

    .line 10
    .line 11
    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .registers 4

    .line 1
    iget v0, p0, Lorg/apache/commons/io/function/l;->a:I

    .line 2
    .line 3
    packed-switch v0, :pswitch_data_2a

    .line 4
    .line 5
    .line 6
    iget-object v0, p0, Lorg/apache/commons/io/function/l;->b:Ljava/lang/Object;

    .line 7
    .line 8
    check-cast v0, Lorg/apache/commons/io/function/IOFunction;

    .line 9
    .line 10
    iget-object v1, p0, Lorg/apache/commons/io/function/l;->c:Ljava/lang/Object;

    .line 11
    .line 12
    check-cast v1, Ljava/util/function/Consumer;

    .line 13
    .line 14
    invoke-static {v0, v1, p1}, Lorg/apache/commons/io/function/IOFunction;->d(Lorg/apache/commons/io/function/IOFunction;Ljava/util/function/Consumer;Ljava/lang/Object;)V

    .line 15
    .line 16
    .line 17
    return-void

    .line 18
    :pswitch_11
    iget-object v0, p0, Lorg/apache/commons/io/function/l;->c:Ljava/lang/Object;

    .line 19
    .line 20
    check-cast v0, Lorg/apache/commons/io/function/IOFunction;

    .line 21
    .line 22
    iget-object v1, p0, Lorg/apache/commons/io/function/l;->b:Ljava/lang/Object;

    .line 23
    .line 24
    check-cast v1, Lorg/apache/commons/io/function/IOConsumer;

    .line 25
    .line 26
    invoke-static {v0, v1, p1}, Lorg/apache/commons/io/function/IOFunction;->m(Lorg/apache/commons/io/function/IOFunction;Lorg/apache/commons/io/function/IOConsumer;Ljava/lang/Object;)V

    .line 27
    .line 28
    .line 29
    return-void

    .line 30
    :pswitch_1d
    iget-object v0, p0, Lorg/apache/commons/io/function/l;->b:Ljava/lang/Object;

    .line 31
    .line 32
    check-cast v0, Lorg/apache/commons/io/function/IOConsumer;

    .line 33
    .line 34
    iget-object v1, p0, Lorg/apache/commons/io/function/l;->c:Ljava/lang/Object;

    .line 35
    .line 36
    check-cast v1, Lorg/apache/commons/io/function/IOConsumer;

    .line 37
    .line 38
    invoke-static {v0, v1, p1}, Lorg/apache/commons/io/function/IOConsumer;->c(Lorg/apache/commons/io/function/IOConsumer;Lorg/apache/commons/io/function/IOConsumer;Ljava/lang/Object;)V

    .line 39
    .line 40
    .line 41
    return-void

    .line 42
    nop

    .line 43
    :pswitch_data_2a
    .packed-switch 0x0
        :pswitch_1d
        :pswitch_11
    .end packed-switch
.end method
