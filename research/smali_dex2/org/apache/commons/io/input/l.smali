.class public final synthetic Lorg/apache/commons/io/input/l;
.super Ljava/lang/Object;
.source "r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75"

# interfaces
.implements Lorg/apache/commons/io/function/IOFunction;
.implements Lorg/apache/commons/io/function/IOSupplier;
.implements Lorg/apache/commons/io/function/IOTriFunction;
.implements Lorg/apache/commons/io/function/IOIntSupplier;
.implements Lorg/apache/commons/io/function/IOBooleanSupplier;


# instance fields
.field public final synthetic b:I

.field public final synthetic c:Lorg/apache/commons/io/input/UncheckedBufferedReader;


# direct methods
.method public synthetic constructor <init>(Lorg/apache/commons/io/input/UncheckedBufferedReader;I)V
    .registers 3

    .line 1
    iput p2, p0, Lorg/apache/commons/io/input/l;->b:I

    .line 2
    .line 3
    iput-object p1, p0, Lorg/apache/commons/io/input/l;->c:Lorg/apache/commons/io/input/UncheckedBufferedReader;

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
    iget v0, p0, Lorg/apache/commons/io/input/l;->b:I

    .line 2
    .line 3
    packed-switch v0, :pswitch_data_24

    .line 4
    .line 5
    .line 6
    :pswitch_5
    check-cast p1, Ljava/lang/Long;

    .line 7
    .line 8
    invoke-virtual {p1}, Ljava/lang/Long;->longValue()J

    .line 9
    .line 10
    .line 11
    move-result-wide v0

    .line 12
    iget-object p1, p0, Lorg/apache/commons/io/input/l;->c:Lorg/apache/commons/io/input/UncheckedBufferedReader;

    .line 13
    .line 14
    invoke-static {p1, v0, v1}, Lorg/apache/commons/io/input/UncheckedBufferedReader;->b(Lorg/apache/commons/io/input/UncheckedBufferedReader;J)Ljava/lang/Long;

    .line 15
    .line 16
    .line 17
    move-result-object p1

    .line 18
    return-object p1

    .line 19
    :pswitch_12
    iget-object v0, p0, Lorg/apache/commons/io/input/l;->c:Lorg/apache/commons/io/input/UncheckedBufferedReader;

    .line 20
    .line 21
    check-cast p1, Ljava/nio/CharBuffer;

    .line 22
    .line 23
    invoke-static {v0, p1}, Lorg/apache/commons/io/input/UncheckedBufferedReader;->c(Lorg/apache/commons/io/input/UncheckedBufferedReader;Ljava/nio/CharBuffer;)Ljava/lang/Integer;

    .line 24
    .line 25
    .line 26
    move-result-object p1

    .line 27
    return-object p1

    .line 28
    :pswitch_1b
    iget-object v0, p0, Lorg/apache/commons/io/input/l;->c:Lorg/apache/commons/io/input/UncheckedBufferedReader;

    .line 29
    .line 30
    check-cast p1, [C

    .line 31
    .line 32
    invoke-static {v0, p1}, Lorg/apache/commons/io/input/UncheckedBufferedReader;->g0(Lorg/apache/commons/io/input/UncheckedBufferedReader;[C)Ljava/lang/Integer;

    .line 33
    .line 34
    .line 35
    move-result-object p1

    .line 36
    return-object p1

    .line 37
    :pswitch_data_24
    .packed-switch 0x0
        :pswitch_1b
        :pswitch_5
        :pswitch_12
    .end packed-switch
.end method

.method public apply(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .registers 5

    .line 37
    check-cast p1, [C

    check-cast p2, Ljava/lang/Integer;

    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result p2

    check-cast p3, Ljava/lang/Integer;

    invoke-virtual {p3}, Ljava/lang/Integer;->intValue()I

    move-result p3

    iget-object v0, p0, Lorg/apache/commons/io/input/l;->c:Lorg/apache/commons/io/input/UncheckedBufferedReader;

    invoke-static {v0, p1, p2, p3}, Lorg/apache/commons/io/input/UncheckedBufferedReader;->e0(Lorg/apache/commons/io/input/UncheckedBufferedReader;[CII)Ljava/lang/Integer;

    move-result-object p1

    return-object p1
.end method

.method public get()Ljava/lang/Object;
    .registers 2

    .line 1
    iget-object v0, p0, Lorg/apache/commons/io/input/l;->c:Lorg/apache/commons/io/input/UncheckedBufferedReader;

    .line 2
    .line 3
    invoke-static {v0}, Lorg/apache/commons/io/input/UncheckedBufferedReader;->d0(Lorg/apache/commons/io/input/UncheckedBufferedReader;)Ljava/lang/String;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    return-object v0
.end method

.method public getAsBoolean()Z
    .registers 2

    .line 1
    iget-object v0, p0, Lorg/apache/commons/io/input/l;->c:Lorg/apache/commons/io/input/UncheckedBufferedReader;

    .line 2
    .line 3
    invoke-static {v0}, Lorg/apache/commons/io/input/UncheckedBufferedReader;->f0(Lorg/apache/commons/io/input/UncheckedBufferedReader;)Z

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    return v0
.end method

.method public getAsInt()I
    .registers 2

    .line 1
    iget-object v0, p0, Lorg/apache/commons/io/input/l;->c:Lorg/apache/commons/io/input/UncheckedBufferedReader;

    .line 2
    .line 3
    invoke-static {v0}, Lorg/apache/commons/io/input/UncheckedBufferedReader;->y(Lorg/apache/commons/io/input/UncheckedBufferedReader;)I

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    return v0
.end method
