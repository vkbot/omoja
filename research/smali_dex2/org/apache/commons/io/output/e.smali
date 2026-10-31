.class public final synthetic Lorg/apache/commons/io/output/e;
.super Ljava/lang/Object;
.source "r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75"

# interfaces
.implements Lorg/apache/commons/io/function/IOFunction;
.implements Lorg/apache/commons/io/function/IOTriConsumer;
.implements Lorg/apache/commons/io/function/IOTriFunction;


# instance fields
.field public final synthetic b:I

.field public final synthetic c:Lorg/apache/commons/io/output/UncheckedFilterWriter;


# direct methods
.method public synthetic constructor <init>(Lorg/apache/commons/io/output/UncheckedFilterWriter;I)V
    .registers 3

    .line 1
    iput p2, p0, Lorg/apache/commons/io/output/e;->b:I

    .line 2
    .line 3
    iput-object p1, p0, Lorg/apache/commons/io/output/e;->c:Lorg/apache/commons/io/output/UncheckedFilterWriter;

    .line 4
    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6
    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public accept(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V
    .registers 5

    .line 1
    iget v0, p0, Lorg/apache/commons/io/output/e;->b:I

    .line 2
    .line 3
    packed-switch v0, :pswitch_data_2e

    .line 4
    .line 5
    .line 6
    check-cast p1, [C

    .line 7
    .line 8
    check-cast p2, Ljava/lang/Integer;

    .line 9
    .line 10
    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    .line 11
    .line 12
    .line 13
    move-result p2

    .line 14
    check-cast p3, Ljava/lang/Integer;

    .line 15
    .line 16
    invoke-virtual {p3}, Ljava/lang/Integer;->intValue()I

    .line 17
    .line 18
    .line 19
    move-result p3

    .line 20
    iget-object v0, p0, Lorg/apache/commons/io/output/e;->c:Lorg/apache/commons/io/output/UncheckedFilterWriter;

    .line 21
    .line 22
    invoke-static {v0, p1, p2, p3}, Lorg/apache/commons/io/output/UncheckedFilterWriter;->c(Lorg/apache/commons/io/output/UncheckedFilterWriter;[CII)V

    .line 23
    .line 24
    .line 25
    return-void

    .line 26
    :pswitch_19
    check-cast p1, Ljava/lang/String;

    .line 27
    .line 28
    check-cast p2, Ljava/lang/Integer;

    .line 29
    .line 30
    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    .line 31
    .line 32
    .line 33
    move-result p2

    .line 34
    check-cast p3, Ljava/lang/Integer;

    .line 35
    .line 36
    invoke-virtual {p3}, Ljava/lang/Integer;->intValue()I

    .line 37
    .line 38
    .line 39
    move-result p3

    .line 40
    iget-object v0, p0, Lorg/apache/commons/io/output/e;->c:Lorg/apache/commons/io/output/UncheckedFilterWriter;

    .line 41
    .line 42
    invoke-static {v0, p1, p2, p3}, Lorg/apache/commons/io/output/UncheckedFilterWriter;->y(Lorg/apache/commons/io/output/UncheckedFilterWriter;Ljava/lang/String;II)V

    .line 43
    .line 44
    .line 45
    return-void

    .line 46
    nop

    .line 47
    :pswitch_data_2e
    .packed-switch 0x2
        :pswitch_19
    .end packed-switch
.end method

.method public apply(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 3

    .line 1
    iget v0, p0, Lorg/apache/commons/io/output/e;->b:I

    .line 2
    .line 3
    packed-switch v0, :pswitch_data_1c

    .line 4
    .line 5
    .line 6
    check-cast p1, Ljava/lang/Character;

    .line 7
    .line 8
    invoke-virtual {p1}, Ljava/lang/Character;->charValue()C

    .line 9
    .line 10
    .line 11
    move-result p1

    .line 12
    iget-object v0, p0, Lorg/apache/commons/io/output/e;->c:Lorg/apache/commons/io/output/UncheckedFilterWriter;

    .line 13
    .line 14
    invoke-static {v0, p1}, Lorg/apache/commons/io/output/UncheckedFilterWriter;->e0(Lorg/apache/commons/io/output/UncheckedFilterWriter;C)Ljava/io/Writer;

    .line 15
    .line 16
    .line 17
    move-result-object p1

    .line 18
    return-object p1

    .line 19
    :pswitch_12
    iget-object v0, p0, Lorg/apache/commons/io/output/e;->c:Lorg/apache/commons/io/output/UncheckedFilterWriter;

    .line 20
    .line 21
    check-cast p1, Ljava/lang/CharSequence;

    .line 22
    .line 23
    invoke-static {v0, p1}, Lorg/apache/commons/io/output/UncheckedFilterWriter;->d0(Lorg/apache/commons/io/output/UncheckedFilterWriter;Ljava/lang/CharSequence;)Ljava/io/Writer;

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
    .packed-switch 0x0
        :pswitch_12
    .end packed-switch
.end method

.method public apply(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .registers 5

    .line 29
    check-cast p1, Ljava/lang/CharSequence;

    check-cast p2, Ljava/lang/Integer;

    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result p2

    check-cast p3, Ljava/lang/Integer;

    invoke-virtual {p3}, Ljava/lang/Integer;->intValue()I

    move-result p3

    iget-object v0, p0, Lorg/apache/commons/io/output/e;->c:Lorg/apache/commons/io/output/UncheckedFilterWriter;

    invoke-static {v0, p1, p2, p3}, Lorg/apache/commons/io/output/UncheckedFilterWriter;->c0(Lorg/apache/commons/io/output/UncheckedFilterWriter;Ljava/lang/CharSequence;II)Ljava/io/Writer;

    move-result-object p1

    return-object p1
.end method
