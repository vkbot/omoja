.class public final synthetic Lorg/apache/commons/io/function/x;
.super Ljava/lang/Object;
.source "r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75"

# interfaces
.implements Ljava/util/function/Predicate;


# instance fields
.field public final synthetic a:I

.field public final synthetic b:Lorg/apache/commons/io/function/IOPredicate;


# direct methods
.method public synthetic constructor <init>(Lorg/apache/commons/io/function/IOPredicate;I)V
    .registers 3

    .line 1
    iput p2, p0, Lorg/apache/commons/io/function/x;->a:I

    .line 2
    .line 3
    iput-object p1, p0, Lorg/apache/commons/io/function/x;->b:Lorg/apache/commons/io/function/IOPredicate;

    .line 4
    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6
    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public final test(Ljava/lang/Object;)Z
    .registers 3

    .line 1
    iget v0, p0, Lorg/apache/commons/io/function/x;->a:I

    .line 2
    .line 3
    packed-switch v0, :pswitch_data_28

    .line 4
    .line 5
    .line 6
    iget-object v0, p0, Lorg/apache/commons/io/function/x;->b:Lorg/apache/commons/io/function/IOPredicate;

    .line 7
    .line 8
    invoke-static {v0, p1}, Lorg/apache/commons/io/function/IOStream;->e(Lorg/apache/commons/io/function/IOPredicate;Ljava/lang/Object;)Z

    .line 9
    .line 10
    .line 11
    move-result p1

    .line 12
    return p1

    .line 13
    :pswitch_c
    iget-object v0, p0, Lorg/apache/commons/io/function/x;->b:Lorg/apache/commons/io/function/IOPredicate;

    .line 14
    .line 15
    invoke-static {v0, p1}, Lorg/apache/commons/io/function/IOStream;->E(Lorg/apache/commons/io/function/IOPredicate;Ljava/lang/Object;)Z

    .line 16
    .line 17
    .line 18
    move-result p1

    .line 19
    return p1

    .line 20
    :pswitch_13
    iget-object v0, p0, Lorg/apache/commons/io/function/x;->b:Lorg/apache/commons/io/function/IOPredicate;

    .line 21
    .line 22
    invoke-static {v0, p1}, Lorg/apache/commons/io/function/IOStream;->s(Lorg/apache/commons/io/function/IOPredicate;Ljava/lang/Object;)Z

    .line 23
    .line 24
    .line 25
    move-result p1

    .line 26
    return p1

    .line 27
    :pswitch_1a
    iget-object v0, p0, Lorg/apache/commons/io/function/x;->b:Lorg/apache/commons/io/function/IOPredicate;

    .line 28
    .line 29
    invoke-static {v0, p1}, Lorg/apache/commons/io/function/IOStream;->r(Lorg/apache/commons/io/function/IOPredicate;Ljava/lang/Object;)Z

    .line 30
    .line 31
    .line 32
    move-result p1

    .line 33
    return p1

    .line 34
    :pswitch_21
    iget-object v0, p0, Lorg/apache/commons/io/function/x;->b:Lorg/apache/commons/io/function/IOPredicate;

    .line 35
    .line 36
    invoke-static {v0, p1}, Lorg/apache/commons/io/function/IOPredicate;->a(Lorg/apache/commons/io/function/IOPredicate;Ljava/lang/Object;)Z

    .line 37
    .line 38
    .line 39
    move-result p1

    .line 40
    return p1

    .line 41
    :pswitch_data_28
    .packed-switch 0x0
        :pswitch_21
        :pswitch_1a
        :pswitch_13
        :pswitch_c
    .end packed-switch
.end method
