.class public final synthetic Lorg/apache/commons/io/input/q;
.super Ljava/lang/Object;
.source "r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75"

# interfaces
.implements Lorg/apache/commons/io/function/IOIntSupplier;
.implements Lorg/apache/commons/io/function/IOTriFunction;
.implements Lorg/apache/commons/io/function/IOFunction;
.implements Lorg/apache/commons/io/function/IOBooleanSupplier;


# instance fields
.field public final synthetic b:I

.field public final synthetic c:Lorg/apache/commons/io/input/UncheckedFilterReader;


# direct methods
.method public synthetic constructor <init>(Lorg/apache/commons/io/input/UncheckedFilterReader;I)V
    .locals 0

    .line 1
    iput p2, p0, Lorg/apache/commons/io/input/q;->b:I

    .line 2
    .line 3
    iput-object p1, p0, Lorg/apache/commons/io/input/q;->c:Lorg/apache/commons/io/input/UncheckedFilterReader;

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
    .locals 2

    .line 1
    iget v0, p0, Lorg/apache/commons/io/input/q;->b:I

    .line 2
    .line 3
    packed-switch v0, :pswitch_data_0

    .line 4
    .line 5
    .line 6
    check-cast p1, Ljava/lang/Long;

    .line 7
    .line 8
    invoke-virtual {p1}, Ljava/lang/Long;->longValue()J

    .line 9
    .line 10
    .line 11
    move-result-wide v0

    .line 12
    iget-object p1, p0, Lorg/apache/commons/io/input/q;->c:Lorg/apache/commons/io/input/UncheckedFilterReader;

    .line 13
    .line 14
    invoke-static {p1, v0, v1}, Lorg/apache/commons/io/input/UncheckedFilterReader;->d0(Lorg/apache/commons/io/input/UncheckedFilterReader;J)Ljava/lang/Long;

    .line 15
    .line 16
    .line 17
    move-result-object p1

    .line 18
    return-object p1

    .line 19
    :pswitch_0
    iget-object v0, p0, Lorg/apache/commons/io/input/q;->c:Lorg/apache/commons/io/input/UncheckedFilterReader;

    .line 20
    .line 21
    check-cast p1, [C

    .line 22
    .line 23
    invoke-static {v0, p1}, Lorg/apache/commons/io/input/UncheckedFilterReader;->e0(Lorg/apache/commons/io/input/UncheckedFilterReader;[C)Ljava/lang/Integer;

    .line 24
    .line 25
    .line 26
    move-result-object p1

    .line 27
    return-object p1

    .line 28
    :pswitch_1
    iget-object v0, p0, Lorg/apache/commons/io/input/q;->c:Lorg/apache/commons/io/input/UncheckedFilterReader;

    .line 29
    .line 30
    check-cast p1, Ljava/nio/CharBuffer;

    .line 31
    .line 32
    invoke-static {v0, p1}, Lorg/apache/commons/io/input/UncheckedFilterReader;->S(Lorg/apache/commons/io/input/UncheckedFilterReader;Ljava/nio/CharBuffer;)Ljava/lang/Integer;

    .line 33
    .line 34
    .line 35
    move-result-object p1

    .line 36
    return-object p1

    .line 37
    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public apply(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .line 37
    check-cast p1, [C

    check-cast p2, Ljava/lang/Integer;

    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result p2

    check-cast p3, Ljava/lang/Integer;

    invoke-virtual {p3}, Ljava/lang/Integer;->intValue()I

    move-result p3

    iget-object v0, p0, Lorg/apache/commons/io/input/q;->c:Lorg/apache/commons/io/input/UncheckedFilterReader;

    invoke-static {v0, p1, p2, p3}, Lorg/apache/commons/io/input/UncheckedFilterReader;->V(Lorg/apache/commons/io/input/UncheckedFilterReader;[CII)Ljava/lang/Integer;

    move-result-object p1

    return-object p1
.end method

.method public getAsBoolean()Z
    .locals 1

    .line 1
    iget-object v0, p0, Lorg/apache/commons/io/input/q;->c:Lorg/apache/commons/io/input/UncheckedFilterReader;

    .line 2
    .line 3
    invoke-static {v0}, Lorg/apache/commons/io/input/UncheckedFilterReader;->c0(Lorg/apache/commons/io/input/UncheckedFilterReader;)Z

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    return v0
.end method

.method public getAsInt()I
    .locals 1

    .line 1
    iget-object v0, p0, Lorg/apache/commons/io/input/q;->c:Lorg/apache/commons/io/input/UncheckedFilterReader;

    .line 2
    .line 3
    invoke-static {v0}, Lorg/apache/commons/io/input/UncheckedFilterReader;->y(Lorg/apache/commons/io/input/UncheckedFilterReader;)I

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    return v0
.end method
