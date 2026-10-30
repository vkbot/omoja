.class public final synthetic Lorg/apache/commons/io/function/h;
.super Ljava/lang/Object;
.source "r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75"

# interfaces
.implements Ljava/util/function/BinaryOperator;


# instance fields
.field public final synthetic a:I

.field public final synthetic b:Lorg/apache/commons/io/function/IOBinaryOperator;


# direct methods
.method public synthetic constructor <init>(Lorg/apache/commons/io/function/IOBinaryOperator;I)V
    .locals 0

    .line 1
    iput p2, p0, Lorg/apache/commons/io/function/h;->a:I

    .line 2
    .line 3
    iput-object p1, p0, Lorg/apache/commons/io/function/h;->b:Lorg/apache/commons/io/function/IOBinaryOperator;

    .line 4
    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6
    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public final apply(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .line 1
    iget v0, p0, Lorg/apache/commons/io/function/h;->a:I

    .line 2
    .line 3
    packed-switch v0, :pswitch_data_0

    .line 4
    .line 5
    .line 6
    iget-object v0, p0, Lorg/apache/commons/io/function/h;->b:Lorg/apache/commons/io/function/IOBinaryOperator;

    .line 7
    .line 8
    invoke-static {v0, p1, p2}, Lorg/apache/commons/io/function/IOStream;->O(Lorg/apache/commons/io/function/IOBinaryOperator;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 9
    .line 10
    .line 11
    move-result-object p1

    .line 12
    return-object p1

    .line 13
    :pswitch_0
    iget-object v0, p0, Lorg/apache/commons/io/function/h;->b:Lorg/apache/commons/io/function/IOBinaryOperator;

    .line 14
    .line 15
    invoke-static {v0, p1, p2}, Lorg/apache/commons/io/function/IOStream;->X(Lorg/apache/commons/io/function/IOBinaryOperator;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 16
    .line 17
    .line 18
    move-result-object p1

    .line 19
    return-object p1

    .line 20
    :pswitch_1
    iget-object v0, p0, Lorg/apache/commons/io/function/h;->b:Lorg/apache/commons/io/function/IOBinaryOperator;

    .line 21
    .line 22
    invoke-static {v0, p1, p2}, Lorg/apache/commons/io/function/IOStream;->N(Lorg/apache/commons/io/function/IOBinaryOperator;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 23
    .line 24
    .line 25
    move-result-object p1

    .line 26
    return-object p1

    .line 27
    :pswitch_2
    iget-object v0, p0, Lorg/apache/commons/io/function/h;->b:Lorg/apache/commons/io/function/IOBinaryOperator;

    .line 28
    .line 29
    invoke-static {v0, p1, p2}, Lorg/apache/commons/io/function/IOBinaryOperator;->c(Lorg/apache/commons/io/function/IOBinaryOperator;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 30
    .line 31
    .line 32
    move-result-object p1

    .line 33
    return-object p1

    .line 34
    nop

    .line 35
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
