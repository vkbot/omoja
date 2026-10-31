.class public final synthetic Lorg/apache/commons/io/function/p;
.super Ljava/lang/Object;
.source "r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75"

# interfaces
.implements Lorg/apache/commons/io/function/IOFunction;


# instance fields
.field public final synthetic b:I

.field public final synthetic c:Lorg/apache/commons/io/function/IOFunction;

.field public final synthetic d:Ljava/util/function/Function;


# direct methods
.method public synthetic constructor <init>(Lorg/apache/commons/io/function/IOFunction;Ljava/util/function/Function;I)V
    .locals 0

    .line 1
    iput p3, p0, Lorg/apache/commons/io/function/p;->b:I

    .line 2
    .line 3
    iput-object p1, p0, Lorg/apache/commons/io/function/p;->c:Lorg/apache/commons/io/function/IOFunction;

    .line 4
    .line 5
    iput-object p2, p0, Lorg/apache/commons/io/function/p;->d:Ljava/util/function/Function;

    .line 6
    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 8
    .line 9
    .line 10
    return-void
.end method


# virtual methods
.method public final apply(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2

    .line 1
    iget v0, p0, Lorg/apache/commons/io/function/p;->b:I

    .line 2
    .line 3
    packed-switch v0, :pswitch_data_0

    .line 4
    .line 5
    .line 6
    iget-object v0, p0, Lorg/apache/commons/io/function/p;->c:Lorg/apache/commons/io/function/IOFunction;

    .line 7
    .line 8
    iget-object v1, p0, Lorg/apache/commons/io/function/p;->d:Ljava/util/function/Function;

    .line 9
    .line 10
    invoke-static {v0, v1, p1}, Lorg/apache/commons/io/function/IOFunction;->q(Lorg/apache/commons/io/function/IOFunction;Ljava/util/function/Function;Ljava/lang/Object;)Ljava/lang/Object;

    .line 11
    .line 12
    .line 13
    move-result-object p1

    .line 14
    return-object p1

    .line 15
    :pswitch_0
    iget-object v0, p0, Lorg/apache/commons/io/function/p;->c:Lorg/apache/commons/io/function/IOFunction;

    .line 16
    .line 17
    iget-object v1, p0, Lorg/apache/commons/io/function/p;->d:Ljava/util/function/Function;

    .line 18
    .line 19
    invoke-static {v0, v1, p1}, Lorg/apache/commons/io/function/IOFunction;->r(Lorg/apache/commons/io/function/IOFunction;Ljava/util/function/Function;Ljava/lang/Object;)Ljava/lang/Object;

    .line 20
    .line 21
    .line 22
    move-result-object p1

    .line 23
    return-object p1

    .line 24
    nop

    .line 25
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
