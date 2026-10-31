.class public final synthetic Lorg/apache/commons/io/build/b;
.super Ljava/lang/Object;
.source "r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75"

# interfaces
.implements Ljava/util/function/IntUnaryOperator;


# instance fields
.field public final synthetic a:I

.field public final synthetic b:Ljava/lang/Object;


# direct methods
.method public synthetic constructor <init>(ILjava/lang/Object;)V
    .registers 3

    .line 1
    iput p1, p0, Lorg/apache/commons/io/build/b;->a:I

    .line 2
    .line 3
    iput-object p2, p0, Lorg/apache/commons/io/build/b;->b:Ljava/lang/Object;

    .line 4
    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6
    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public final applyAsInt(I)I
    .registers 3

    .line 1
    iget v0, p0, Lorg/apache/commons/io/build/b;->a:I

    .line 2
    .line 3
    packed-switch v0, :pswitch_data_18

    .line 4
    .line 5
    .line 6
    iget-object v0, p0, Lorg/apache/commons/io/build/b;->b:Ljava/lang/Object;

    .line 7
    .line 8
    check-cast v0, [Ljava/lang/String;

    .line 9
    .line 10
    invoke-static {v0, p1}, Lorg/apache/commons/net/smtp/AuthenticatingSMTPClient;->a([Ljava/lang/String;I)I

    .line 11
    .line 12
    .line 13
    move-result p1

    .line 14
    return p1

    .line 15
    :pswitch_e
    iget-object v0, p0, Lorg/apache/commons/io/build/b;->b:Ljava/lang/Object;

    .line 16
    .line 17
    check-cast v0, Lorg/apache/commons/io/build/AbstractStreamBuilder;

    .line 18
    .line 19
    invoke-static {v0, p1}, Lorg/apache/commons/io/build/AbstractStreamBuilder;->a(Lorg/apache/commons/io/build/AbstractStreamBuilder;I)I

    .line 20
    .line 21
    .line 22
    move-result p1

    .line 23
    return p1

    .line 24
    nop

    .line 25
    :pswitch_data_18
    .packed-switch 0x0
        :pswitch_e
    .end packed-switch
.end method
