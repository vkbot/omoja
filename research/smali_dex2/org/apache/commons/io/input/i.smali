.class public final synthetic Lorg/apache/commons/io/input/i;
.super Ljava/lang/Object;
.source "r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75"

# interfaces
.implements Lorg/apache/commons/io/function/IOConsumer;


# instance fields
.field public final synthetic a:I

.field public final synthetic b:I

.field public final synthetic c:I

.field public final synthetic d:Ljava/lang/Object;


# direct methods
.method public synthetic constructor <init>(Ljava/lang/Object;III)V
    .registers 5

    .line 1
    iput p4, p0, Lorg/apache/commons/io/input/i;->a:I

    .line 2
    .line 3
    iput-object p1, p0, Lorg/apache/commons/io/input/i;->d:Ljava/lang/Object;

    .line 4
    .line 5
    iput p2, p0, Lorg/apache/commons/io/input/i;->b:I

    .line 6
    .line 7
    iput p3, p0, Lorg/apache/commons/io/input/i;->c:I

    .line 8
    .line 9
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 10
    .line 11
    .line 12
    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .registers 5

    .line 1
    iget v0, p0, Lorg/apache/commons/io/input/i;->a:I

    .line 2
    .line 3
    packed-switch v0, :pswitch_data_3e

    .line 4
    .line 5
    .line 6
    iget-object v0, p0, Lorg/apache/commons/io/input/i;->d:Ljava/lang/Object;

    .line 7
    .line 8
    check-cast v0, Ljava/lang/String;

    .line 9
    .line 10
    iget v1, p0, Lorg/apache/commons/io/input/i;->c:I

    .line 11
    .line 12
    check-cast p1, Ljava/io/Writer;

    .line 13
    .line 14
    iget v2, p0, Lorg/apache/commons/io/input/i;->b:I

    .line 15
    .line 16
    invoke-static {v0, v2, v1, p1}, Lorg/apache/commons/io/output/FilterCollectionWriter;->V(Ljava/lang/String;IILjava/io/Writer;)V

    .line 17
    .line 18
    .line 19
    return-void

    .line 20
    :pswitch_13
    iget-object v0, p0, Lorg/apache/commons/io/input/i;->d:Ljava/lang/Object;

    .line 21
    .line 22
    check-cast v0, [C

    .line 23
    .line 24
    iget v1, p0, Lorg/apache/commons/io/input/i;->c:I

    .line 25
    .line 26
    check-cast p1, Ljava/io/Writer;

    .line 27
    .line 28
    iget v2, p0, Lorg/apache/commons/io/input/i;->b:I

    .line 29
    .line 30
    invoke-static {v0, v2, v1, p1}, Lorg/apache/commons/io/output/FilterCollectionWriter;->d0([CIILjava/io/Writer;)V

    .line 31
    .line 32
    .line 33
    return-void

    .line 34
    :pswitch_21
    iget-object v0, p0, Lorg/apache/commons/io/input/i;->d:Ljava/lang/Object;

    .line 35
    .line 36
    check-cast v0, Ljava/lang/CharSequence;

    .line 37
    .line 38
    iget v1, p0, Lorg/apache/commons/io/input/i;->c:I

    .line 39
    .line 40
    check-cast p1, Ljava/io/Writer;

    .line 41
    .line 42
    iget v2, p0, Lorg/apache/commons/io/input/i;->b:I

    .line 43
    .line 44
    invoke-static {v0, v2, v1, p1}, Lorg/apache/commons/io/output/FilterCollectionWriter;->y(Ljava/lang/CharSequence;IILjava/io/Writer;)V

    .line 45
    .line 46
    .line 47
    return-void

    .line 48
    :pswitch_2f
    iget-object v0, p0, Lorg/apache/commons/io/input/i;->d:Ljava/lang/Object;

    .line 49
    .line 50
    check-cast v0, [B

    .line 51
    .line 52
    iget v1, p0, Lorg/apache/commons/io/input/i;->c:I

    .line 53
    .line 54
    check-cast p1, Lorg/apache/commons/io/input/ObservableInputStream$Observer;

    .line 55
    .line 56
    iget v2, p0, Lorg/apache/commons/io/input/i;->b:I

    .line 57
    .line 58
    invoke-static {v0, v2, v1, p1}, Lorg/apache/commons/io/input/ObservableInputStream;->y([BIILorg/apache/commons/io/input/ObservableInputStream$Observer;)V

    .line 59
    .line 60
    .line 61
    return-void

    .line 62
    nop

    .line 63
    :pswitch_data_3e
    .packed-switch 0x0
        :pswitch_2f
        :pswitch_21
        :pswitch_13
    .end packed-switch
.end method
