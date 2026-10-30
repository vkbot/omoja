.class public final synthetic Lorg/apache/commons/io/function/n;
.super Ljava/lang/Object;
.source "r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75"

# interfaces
.implements Ljava/util/function/Function;


# instance fields
.field public final synthetic b:I

.field public final synthetic c:Lorg/apache/commons/io/function/IOFunction;


# direct methods
.method public synthetic constructor <init>(Lorg/apache/commons/io/function/IOFunction;I)V
    .locals 0

    .line 1
    iput p2, p0, Lorg/apache/commons/io/function/n;->b:I

    .line 2
    .line 3
    iput-object p1, p0, Lorg/apache/commons/io/function/n;->c:Lorg/apache/commons/io/function/IOFunction;

    .line 4
    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6
    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public final apply(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .line 1
    iget v0, p0, Lorg/apache/commons/io/function/n;->b:I

    .line 2
    .line 3
    packed-switch v0, :pswitch_data_0

    .line 4
    .line 5
    .line 6
    iget-object v0, p0, Lorg/apache/commons/io/function/n;->c:Lorg/apache/commons/io/function/IOFunction;

    .line 7
    .line 8
    invoke-static {v0, p1}, Lorg/apache/commons/io/function/IOStream;->K(Lorg/apache/commons/io/function/IOFunction;Ljava/lang/Object;)Ljava/util/stream/DoubleStream;

    .line 9
    .line 10
    .line 11
    move-result-object p1

    .line 12
    return-object p1

    .line 13
    :pswitch_0
    iget-object v0, p0, Lorg/apache/commons/io/function/n;->c:Lorg/apache/commons/io/function/IOFunction;

    .line 14
    .line 15
    invoke-static {v0, p1}, Lorg/apache/commons/io/function/IOStream;->m(Lorg/apache/commons/io/function/IOFunction;Ljava/lang/Object;)Ljava/util/stream/LongStream;

    .line 16
    .line 17
    .line 18
    move-result-object p1

    .line 19
    return-object p1

    .line 20
    :pswitch_1
    iget-object v0, p0, Lorg/apache/commons/io/function/n;->c:Lorg/apache/commons/io/function/IOFunction;

    .line 21
    .line 22
    invoke-static {v0, p1}, Lorg/apache/commons/io/function/IOStream;->u(Lorg/apache/commons/io/function/IOFunction;Ljava/lang/Object;)Ljava/util/stream/IntStream;

    .line 23
    .line 24
    .line 25
    move-result-object p1

    .line 26
    return-object p1

    .line 27
    :pswitch_2
    iget-object v0, p0, Lorg/apache/commons/io/function/n;->c:Lorg/apache/commons/io/function/IOFunction;

    .line 28
    .line 29
    invoke-static {v0, p1}, Lorg/apache/commons/io/function/IOStream;->M(Lorg/apache/commons/io/function/IOFunction;Ljava/lang/Object;)Ljava/util/stream/Stream;

    .line 30
    .line 31
    .line 32
    move-result-object p1

    .line 33
    return-object p1

    .line 34
    :pswitch_3
    iget-object v0, p0, Lorg/apache/commons/io/function/n;->c:Lorg/apache/commons/io/function/IOFunction;

    .line 35
    .line 36
    invoke-static {v0, p1}, Lorg/apache/commons/io/function/IOStream;->T(Lorg/apache/commons/io/function/IOFunction;Ljava/lang/Object;)Ljava/lang/Object;

    .line 37
    .line 38
    .line 39
    move-result-object p1

    .line 40
    return-object p1

    .line 41
    :pswitch_4
    iget-object v0, p0, Lorg/apache/commons/io/function/n;->c:Lorg/apache/commons/io/function/IOFunction;

    .line 42
    .line 43
    invoke-static {v0, p1}, Lorg/apache/commons/io/function/IOFunction;->h(Lorg/apache/commons/io/function/IOFunction;Ljava/lang/Object;)Ljava/lang/Object;

    .line 44
    .line 45
    .line 46
    move-result-object p1

    .line 47
    return-object p1

    .line 48
    nop

    .line 49
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
