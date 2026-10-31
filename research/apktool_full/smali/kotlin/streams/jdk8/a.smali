.class public final synthetic Lkotlin/streams/jdk8/a;
.super Ljava/lang/Object;
.source "r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75"

# interfaces
.implements Ljava/util/function/Supplier;


# instance fields
.field public final synthetic a:I

.field public final synthetic b:Ljava/lang/Object;


# direct methods
.method public synthetic constructor <init>(ILjava/lang/Object;)V
    .locals 0

    .line 1
    iput p1, p0, Lkotlin/streams/jdk8/a;->a:I

    .line 2
    .line 3
    iput-object p2, p0, Lkotlin/streams/jdk8/a;->b:Ljava/lang/Object;

    .line 4
    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6
    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public final get()Ljava/lang/Object;
    .locals 1

    .line 1
    iget v0, p0, Lkotlin/streams/jdk8/a;->a:I

    .line 2
    .line 3
    packed-switch v0, :pswitch_data_0

    .line 4
    .line 5
    .line 6
    iget-object v0, p0, Lkotlin/streams/jdk8/a;->b:Ljava/lang/Object;

    .line 7
    .line 8
    check-cast v0, Lorg/apache/commons/io/input/ReaderInputStream$Builder;

    .line 9
    .line 10
    invoke-static {v0}, Lorg/apache/commons/io/input/ReaderInputStream$Builder;->b(Lorg/apache/commons/io/input/ReaderInputStream$Builder;)Ljava/nio/charset/CharsetEncoder;

    .line 11
    .line 12
    .line 13
    move-result-object v0

    .line 14
    return-object v0

    .line 15
    :pswitch_0
    iget-object v0, p0, Lkotlin/streams/jdk8/a;->b:Ljava/lang/Object;

    .line 16
    .line 17
    check-cast v0, Lorg/apache/commons/io/input/CharSequenceInputStream$Builder;

    .line 18
    .line 19
    invoke-static {v0}, Lorg/apache/commons/io/input/CharSequenceInputStream$Builder;->c(Lorg/apache/commons/io/input/CharSequenceInputStream$Builder;)Ljava/nio/charset/CharsetEncoder;

    .line 20
    .line 21
    .line 22
    move-result-object v0

    .line 23
    return-object v0

    .line 24
    :pswitch_1
    iget-object v0, p0, Lkotlin/streams/jdk8/a;->b:Ljava/lang/Object;

    .line 25
    .line 26
    check-cast v0, Lkotlin/sequences/Sequence;

    .line 27
    .line 28
    invoke-static {v0}, Lkotlin/streams/jdk8/StreamsKt;->a(Lkotlin/sequences/Sequence;)Ljava/util/Spliterator;

    .line 29
    .line 30
    .line 31
    move-result-object v0

    .line 32
    return-object v0

    .line 33
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
