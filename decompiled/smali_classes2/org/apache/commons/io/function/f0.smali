.class public final synthetic Lorg/apache/commons/io/function/f0;
.super Ljava/lang/Object;
.source "r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75"

# interfaces
.implements Lorg/apache/commons/io/function/IOFunction;
.implements Lorg/apache/commons/io/function/IOSupplier;


# instance fields
.field public final synthetic b:Lorg/apache/commons/io/function/IOSpliterator;


# direct methods
.method public synthetic constructor <init>(Lorg/apache/commons/io/function/IOSpliterator;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lorg/apache/commons/io/function/f0;->b:Lorg/apache/commons/io/function/IOSpliterator;

    .line 2
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public apply(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .line 1
    iget-object v0, p0, Lorg/apache/commons/io/function/f0;->b:Lorg/apache/commons/io/function/IOSpliterator;

    .line 2
    .line 3
    check-cast p1, Lorg/apache/commons/io/function/IOConsumer;

    .line 4
    .line 5
    invoke-interface {v0, p1}, Lorg/apache/commons/io/function/IOSpliterator;->tryAdvance(Lorg/apache/commons/io/function/IOConsumer;)Z

    .line 6
    .line 7
    .line 8
    move-result p1

    .line 9
    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 10
    .line 11
    .line 12
    move-result-object p1

    .line 13
    return-object p1
.end method

.method public get()Ljava/lang/Object;
    .locals 1

    .line 1
    iget-object v0, p0, Lorg/apache/commons/io/function/f0;->b:Lorg/apache/commons/io/function/IOSpliterator;

    .line 2
    .line 3
    invoke-interface {v0}, Lorg/apache/commons/io/function/IOSpliterator;->trySplit()Lorg/apache/commons/io/function/IOSpliterator;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    return-object v0
.end method
