.class public final synthetic Lorg/apache/commons/io/function/a0;
.super Ljava/lang/Object;
.source "r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75"

# interfaces
.implements Ljava/util/function/Consumer;


# instance fields
.field public final synthetic b:I

.field public final synthetic c:Ljava/lang/Object;


# direct methods
.method public synthetic constructor <init>(ILjava/lang/Object;)V
    .locals 0

    .line 1
    iput p1, p0, Lorg/apache/commons/io/function/a0;->b:I

    .line 2
    .line 3
    iput-object p2, p0, Lorg/apache/commons/io/function/a0;->c:Ljava/lang/Object;

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
    .locals 1

    .line 1
    iget v0, p0, Lorg/apache/commons/io/function/a0;->b:I

    .line 2
    .line 3
    packed-switch v0, :pswitch_data_0

    .line 4
    .line 5
    .line 6
    iget-object v0, p0, Lorg/apache/commons/io/function/a0;->c:Ljava/lang/Object;

    .line 7
    .line 8
    check-cast v0, Lorg/apache/commons/io/function/IOIntConsumer;

    .line 9
    .line 10
    check-cast p1, Ljava/lang/Integer;

    .line 11
    .line 12
    invoke-static {v0, p1}, Lorg/apache/commons/io/function/IOIntConsumer;->c(Lorg/apache/commons/io/function/IOIntConsumer;Ljava/lang/Integer;)V

    .line 13
    .line 14
    .line 15
    return-void

    .line 16
    :pswitch_0
    iget-object v0, p0, Lorg/apache/commons/io/function/a0;->c:Ljava/lang/Object;

    .line 17
    .line 18
    check-cast v0, Lorg/apache/commons/io/function/IOConsumer;

    .line 19
    .line 20
    invoke-static {v0, p1}, Lorg/apache/commons/io/function/IOStream;->C(Lorg/apache/commons/io/function/IOConsumer;Ljava/lang/Object;)V

    .line 21
    .line 22
    .line 23
    return-void

    .line 24
    :pswitch_1
    iget-object v0, p0, Lorg/apache/commons/io/function/a0;->c:Ljava/lang/Object;

    .line 25
    .line 26
    check-cast v0, Lorg/apache/commons/io/function/IOConsumer;

    .line 27
    .line 28
    invoke-static {v0, p1}, Lorg/apache/commons/io/function/IOStream;->R(Lorg/apache/commons/io/function/IOConsumer;Ljava/lang/Object;)V

    .line 29
    .line 30
    .line 31
    return-void

    .line 32
    :pswitch_2
    iget-object v0, p0, Lorg/apache/commons/io/function/a0;->c:Ljava/lang/Object;

    .line 33
    .line 34
    check-cast v0, Lorg/apache/commons/io/function/IOConsumer;

    .line 35
    .line 36
    invoke-static {v0, p1}, Lorg/apache/commons/io/function/IOStream;->h(Lorg/apache/commons/io/function/IOConsumer;Ljava/lang/Object;)V

    .line 37
    .line 38
    .line 39
    return-void

    .line 40
    :pswitch_3
    iget-object v0, p0, Lorg/apache/commons/io/function/a0;->c:Ljava/lang/Object;

    .line 41
    .line 42
    check-cast v0, Lorg/apache/commons/io/function/IOConsumer;

    .line 43
    .line 44
    invoke-static {v0, p1}, Lorg/apache/commons/io/function/IOConsumer;->b(Lorg/apache/commons/io/function/IOConsumer;Ljava/lang/Object;)V

    .line 45
    .line 46
    .line 47
    return-void

    .line 48
    :pswitch_4
    iget-object v0, p0, Lorg/apache/commons/io/function/a0;->c:Ljava/lang/Object;

    .line 49
    .line 50
    check-cast v0, Lorg/apache/commons/io/function/IOConsumer;

    .line 51
    .line 52
    invoke-static {v0, p1}, Lorg/apache/commons/io/function/IOStreams;->b(Lorg/apache/commons/io/function/IOConsumer;Ljava/lang/Object;)V

    .line 53
    .line 54
    .line 55
    return-void

    .line 56
    nop

    .line 57
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
