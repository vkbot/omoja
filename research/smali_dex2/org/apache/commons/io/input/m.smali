.class public final synthetic Lorg/apache/commons/io/input/m;
.super Ljava/lang/Object;
.source "r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75"

# interfaces
.implements Lorg/apache/commons/io/function/IOIntConsumer;


# instance fields
.field public final synthetic a:I

.field public final synthetic b:Ljava/io/Closeable;


# direct methods
.method public synthetic constructor <init>(Ljava/io/Closeable;I)V
    .registers 3

    .line 1
    iput p2, p0, Lorg/apache/commons/io/input/m;->a:I

    .line 2
    .line 3
    iput-object p1, p0, Lorg/apache/commons/io/input/m;->b:Ljava/io/Closeable;

    .line 4
    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6
    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public final accept(I)V
    .registers 3

    .line 1
    iget v0, p0, Lorg/apache/commons/io/input/m;->a:I

    .line 2
    .line 3
    packed-switch v0, :pswitch_data_26

    .line 4
    .line 5
    .line 6
    iget-object v0, p0, Lorg/apache/commons/io/input/m;->b:Ljava/io/Closeable;

    .line 7
    .line 8
    check-cast v0, Lorg/apache/commons/io/output/UncheckedFilterWriter;

    .line 9
    .line 10
    invoke-static {v0, p1}, Lorg/apache/commons/io/output/UncheckedFilterWriter;->f0(Lorg/apache/commons/io/output/UncheckedFilterWriter;I)V

    .line 11
    .line 12
    .line 13
    return-void

    .line 14
    :pswitch_d
    iget-object v0, p0, Lorg/apache/commons/io/input/m;->b:Ljava/io/Closeable;

    .line 15
    .line 16
    check-cast v0, Lorg/apache/commons/io/output/UncheckedFilterOutputStream;

    .line 17
    .line 18
    invoke-static {v0, p1}, Lorg/apache/commons/io/output/UncheckedFilterOutputStream;->S(Lorg/apache/commons/io/output/UncheckedFilterOutputStream;I)V

    .line 19
    .line 20
    .line 21
    return-void

    .line 22
    :pswitch_15
    iget-object v0, p0, Lorg/apache/commons/io/input/m;->b:Ljava/io/Closeable;

    .line 23
    .line 24
    check-cast v0, Lorg/apache/commons/io/input/UncheckedFilterReader;

    .line 25
    .line 26
    invoke-static {v0, p1}, Lorg/apache/commons/io/input/UncheckedFilterReader;->f0(Lorg/apache/commons/io/input/UncheckedFilterReader;I)V

    .line 27
    .line 28
    .line 29
    return-void

    .line 30
    :pswitch_1d
    iget-object v0, p0, Lorg/apache/commons/io/input/m;->b:Ljava/io/Closeable;

    .line 31
    .line 32
    check-cast v0, Lorg/apache/commons/io/input/UncheckedBufferedReader;

    .line 33
    .line 34
    invoke-static {v0, p1}, Lorg/apache/commons/io/input/UncheckedBufferedReader;->S(Lorg/apache/commons/io/input/UncheckedBufferedReader;I)V

    .line 35
    .line 36
    .line 37
    return-void

    .line 38
    nop

    .line 39
    :pswitch_data_26
    .packed-switch 0x0
        :pswitch_1d
        :pswitch_15
        :pswitch_d
    .end packed-switch
.end method
