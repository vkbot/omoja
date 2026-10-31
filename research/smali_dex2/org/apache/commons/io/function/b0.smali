.class public final synthetic Lorg/apache/commons/io/function/b0;
.super Ljava/lang/Object;
.source "r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75"

# interfaces
.implements Ljava/util/function/BiFunction;


# instance fields
.field public final synthetic a:I


# direct methods
.method public synthetic constructor <init>(I)V
    .registers 2

    .line 1
    iput p1, p0, Lorg/apache/commons/io/function/b0;->a:I

    .line 2
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final apply(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .registers 4

    .line 1
    iget v0, p0, Lorg/apache/commons/io/function/b0;->a:I

    .line 2
    .line 3
    packed-switch v0, :pswitch_data_26

    .line 4
    .line 5
    .line 6
    check-cast p1, Ljava/lang/Integer;

    .line 7
    .line 8
    check-cast p2, Ljava/io/IOException;

    .line 9
    .line 10
    invoke-static {p1, p2}, Lorg/apache/commons/io/function/IOStream;->z(Ljava/lang/Integer;Ljava/io/IOException;)Ljava/io/IOException;

    .line 11
    .line 12
    .line 13
    move-result-object p1

    .line 14
    return-object p1

    .line 15
    :pswitch_e
    new-instance v0, Lorg/apache/commons/io/IOIndexedException;

    .line 16
    .line 17
    check-cast p1, Ljava/lang/Integer;

    .line 18
    .line 19
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    .line 20
    .line 21
    .line 22
    move-result p1

    .line 23
    check-cast p2, Ljava/io/IOException;

    .line 24
    .line 25
    invoke-direct {v0, p1, p2}, Lorg/apache/commons/io/IOIndexedException;-><init>(ILjava/lang/Throwable;)V

    .line 26
    .line 27
    .line 28
    return-object v0

    .line 29
    :pswitch_1c
    check-cast p1, Ljava/lang/Integer;

    .line 30
    .line 31
    check-cast p2, Ljava/io/IOException;

    .line 32
    .line 33
    invoke-static {p1, p2}, Lorg/apache/commons/io/function/IOStreams;->a(Ljava/lang/Integer;Ljava/io/IOException;)Ljava/io/IOException;

    .line 34
    .line 35
    .line 36
    move-result-object p1

    .line 37
    return-object p1

    .line 38
    nop

    .line 39
    :pswitch_data_26
    .packed-switch 0x0
        :pswitch_1c
        :pswitch_e
    .end packed-switch
.end method
