.class public final synthetic Lorg/apache/commons/io/input/g;
.super Ljava/lang/Object;
.source "r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75"

# interfaces
.implements Lorg/apache/commons/io/function/IOConsumer;


# instance fields
.field public final synthetic a:I

.field public final synthetic b:I


# direct methods
.method public synthetic constructor <init>(II)V
    .registers 3

    .line 1
    iput p2, p0, Lorg/apache/commons/io/input/g;->a:I

    .line 2
    .line 3
    iput p1, p0, Lorg/apache/commons/io/input/g;->b:I

    .line 4
    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6
    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .registers 3

    .line 1
    iget v0, p0, Lorg/apache/commons/io/input/g;->a:I

    .line 2
    .line 3
    packed-switch v0, :pswitch_data_16

    .line 4
    .line 5
    .line 6
    iget v0, p0, Lorg/apache/commons/io/input/g;->b:I

    .line 7
    .line 8
    check-cast p1, Ljava/io/Writer;

    .line 9
    .line 10
    invoke-static {v0, p1}, Lorg/apache/commons/io/output/FilterCollectionWriter;->S(ILjava/io/Writer;)V

    .line 11
    .line 12
    .line 13
    return-void

    .line 14
    :pswitch_d
    iget v0, p0, Lorg/apache/commons/io/input/g;->b:I

    .line 15
    .line 16
    check-cast p1, Lorg/apache/commons/io/input/ObservableInputStream$Observer;

    .line 17
    .line 18
    invoke-static {v0, p1}, Lorg/apache/commons/io/input/ObservableInputStream;->b(ILorg/apache/commons/io/input/ObservableInputStream$Observer;)V

    .line 19
    .line 20
    .line 21
    return-void

    .line 22
    nop

    .line 23
    :pswitch_data_16
    .packed-switch 0x0
        :pswitch_d
    .end packed-switch
.end method
