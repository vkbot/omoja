.class public final synthetic Lorg/apache/commons/io/function/v;
.super Ljava/lang/Object;
.source "r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75"

# interfaces
.implements Lorg/apache/commons/io/function/IOPredicate;
.implements Lorg/apache/commons/io/function/IOFunction;


# instance fields
.field public final synthetic b:I

.field public final synthetic c:Ljava/lang/Object;


# direct methods
.method public synthetic constructor <init>(ILjava/lang/Object;)V
    .registers 3

    .line 1
    iput p1, p0, Lorg/apache/commons/io/function/v;->b:I

    .line 2
    .line 3
    iput-object p2, p0, Lorg/apache/commons/io/function/v;->c:Ljava/lang/Object;

    .line 4
    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6
    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public apply(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 3

    .line 1
    iget-object v0, p0, Lorg/apache/commons/io/function/v;->c:Ljava/lang/Object;

    .line 2
    .line 3
    check-cast v0, Lorg/apache/commons/io/function/IOBaseStream;

    .line 4
    .line 5
    check-cast p1, Lorg/apache/commons/io/function/IORunnable;

    .line 6
    .line 7
    invoke-interface {v0, p1}, Lorg/apache/commons/io/function/IOBaseStream;->onClose(Lorg/apache/commons/io/function/IORunnable;)Lorg/apache/commons/io/function/IOBaseStream;

    .line 8
    .line 9
    .line 10
    move-result-object p1

    .line 11
    return-object p1
.end method

.method public test(Ljava/lang/Object;)Z
    .registers 3

    .line 1
    iget v0, p0, Lorg/apache/commons/io/function/v;->b:I

    .line 2
    .line 3
    packed-switch v0, :pswitch_data_16

    .line 4
    .line 5
    .line 6
    iget-object v0, p0, Lorg/apache/commons/io/function/v;->c:Ljava/lang/Object;

    .line 7
    .line 8
    invoke-static {v0, p1}, Lorg/apache/commons/io/function/IOPredicate;->e(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 9
    .line 10
    .line 11
    move-result p1

    .line 12
    return p1

    .line 13
    :pswitch_c
    iget-object v0, p0, Lorg/apache/commons/io/function/v;->c:Ljava/lang/Object;

    .line 14
    .line 15
    check-cast v0, Lorg/apache/commons/io/function/IOPredicate;

    .line 16
    .line 17
    invoke-static {v0, p1}, Lorg/apache/commons/io/function/IOPredicate;->g(Lorg/apache/commons/io/function/IOPredicate;Ljava/lang/Object;)Z

    .line 18
    .line 19
    .line 20
    move-result p1

    .line 21
    return p1

    .line 22
    nop

    .line 23
    :pswitch_data_16
    .packed-switch 0x0
        :pswitch_c
    .end packed-switch
.end method
