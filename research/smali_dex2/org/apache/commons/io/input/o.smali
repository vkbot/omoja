.class public final synthetic Lorg/apache/commons/io/input/o;
.super Ljava/lang/Object;
.source "r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75"

# interfaces
.implements Lorg/apache/commons/io/function/IOIntSupplier;
.implements Lorg/apache/commons/io/function/IOTriFunction;
.implements Lorg/apache/commons/io/function/IOFunction;


# instance fields
.field public final synthetic b:I

.field public final synthetic c:Lorg/apache/commons/io/input/UncheckedFilterInputStream;


# direct methods
.method public synthetic constructor <init>(Lorg/apache/commons/io/input/UncheckedFilterInputStream;I)V
    .registers 3

    .line 1
    iput p2, p0, Lorg/apache/commons/io/input/o;->b:I

    .line 2
    .line 3
    iput-object p1, p0, Lorg/apache/commons/io/input/o;->c:Lorg/apache/commons/io/input/UncheckedFilterInputStream;

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
    .registers 4

    .line 1
    iget v0, p0, Lorg/apache/commons/io/input/o;->b:I

    .line 2
    .line 3
    packed-switch v0, :pswitch_data_1c

    .line 4
    .line 5
    .line 6
    iget-object v0, p0, Lorg/apache/commons/io/input/o;->c:Lorg/apache/commons/io/input/UncheckedFilterInputStream;

    .line 7
    .line 8
    check-cast p1, [B

    .line 9
    .line 10
    invoke-static {v0, p1}, Lorg/apache/commons/io/input/UncheckedFilterInputStream;->S(Lorg/apache/commons/io/input/UncheckedFilterInputStream;[B)Ljava/lang/Integer;

    .line 11
    .line 12
    .line 13
    move-result-object p1

    .line 14
    return-object p1

    .line 15
    :pswitch_e
    check-cast p1, Ljava/lang/Long;

    .line 16
    .line 17
    invoke-virtual {p1}, Ljava/lang/Long;->longValue()J

    .line 18
    .line 19
    .line 20
    move-result-wide v0

    .line 21
    iget-object p1, p0, Lorg/apache/commons/io/input/o;->c:Lorg/apache/commons/io/input/UncheckedFilterInputStream;

    .line 22
    .line 23
    invoke-static {p1, v0, v1}, Lorg/apache/commons/io/input/UncheckedFilterInputStream;->b(Lorg/apache/commons/io/input/UncheckedFilterInputStream;J)Ljava/lang/Long;

    .line 24
    .line 25
    .line 26
    move-result-object p1

    .line 27
    return-object p1

    .line 28
    nop

    .line 29
    :pswitch_data_1c
    .packed-switch 0x3
        :pswitch_e
    .end packed-switch
.end method

.method public apply(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .registers 5

    .line 29
    check-cast p1, [B

    check-cast p2, Ljava/lang/Integer;

    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result p2

    check-cast p3, Ljava/lang/Integer;

    invoke-virtual {p3}, Ljava/lang/Integer;->intValue()I

    move-result p3

    iget-object v0, p0, Lorg/apache/commons/io/input/o;->c:Lorg/apache/commons/io/input/UncheckedFilterInputStream;

    invoke-static {v0, p1, p2, p3}, Lorg/apache/commons/io/input/UncheckedFilterInputStream;->c0(Lorg/apache/commons/io/input/UncheckedFilterInputStream;[BII)Ljava/lang/Integer;

    move-result-object p1

    return-object p1
.end method

.method public getAsInt()I
    .registers 2

    .line 1
    iget v0, p0, Lorg/apache/commons/io/input/o;->b:I

    .line 2
    .line 3
    packed-switch v0, :pswitch_data_14

    .line 4
    .line 5
    .line 6
    iget-object v0, p0, Lorg/apache/commons/io/input/o;->c:Lorg/apache/commons/io/input/UncheckedFilterInputStream;

    .line 7
    .line 8
    invoke-static {v0}, Lorg/apache/commons/io/input/UncheckedFilterInputStream;->V(Lorg/apache/commons/io/input/UncheckedFilterInputStream;)I

    .line 9
    .line 10
    .line 11
    move-result v0

    .line 12
    return v0

    .line 13
    :pswitch_c
    iget-object v0, p0, Lorg/apache/commons/io/input/o;->c:Lorg/apache/commons/io/input/UncheckedFilterInputStream;

    .line 14
    .line 15
    invoke-static {v0}, Lorg/apache/commons/io/input/UncheckedFilterInputStream;->d0(Lorg/apache/commons/io/input/UncheckedFilterInputStream;)I

    .line 16
    .line 17
    .line 18
    move-result v0

    .line 19
    return v0

    .line 20
    nop

    .line 21
    :pswitch_data_14
    .packed-switch 0x0
        :pswitch_c
    .end packed-switch
.end method
