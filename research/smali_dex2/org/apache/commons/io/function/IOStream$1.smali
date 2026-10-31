.class Lorg/apache/commons/io/function/IOStream$1;
.super Ljava/lang/Object;
.source "r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75"

# interfaces
.implements Ljava/util/Iterator;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/apache/commons/io/function/IOStream;->iterate(Ljava/lang/Object;Lorg/apache/commons/io/function/IOUnaryOperator;)Lorg/apache/commons/io/function/IOStream;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Iterator<",
        "TT;>;"
    }
.end annotation


# instance fields
.field t:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TT;"
        }
    .end annotation
.end field

.field final synthetic val$f:Lorg/apache/commons/io/function/IOUnaryOperator;

.field final synthetic val$seed:Ljava/lang/Object;


# direct methods
.method public constructor <init>(Ljava/lang/Object;Lorg/apache/commons/io/function/IOUnaryOperator;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lorg/apache/commons/io/function/IOStream$1;->val$seed:Ljava/lang/Object;

    .line 2
    .line 3
    iput-object p2, p0, Lorg/apache/commons/io/function/IOStream$1;->val$f:Lorg/apache/commons/io/function/IOUnaryOperator;

    .line 4
    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6
    .line 7
    .line 8
    sget-object p1, Lorg/apache/commons/io/function/IOStreams;->NONE:Ljava/lang/Object;

    .line 9
    .line 10
    iput-object p1, p0, Lorg/apache/commons/io/function/IOStream$1;->t:Ljava/lang/Object;

    .line 11
    .line 12
    return-void
.end method


# virtual methods
.method public hasNext()Z
    .registers 2

    .line 1
    const/4 v0, 0x1

    .line 2
    return v0
.end method

.method public next()Ljava/lang/Object;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation

    .line 1
    :try_start_0
    iget-object v0, p0, Lorg/apache/commons/io/function/IOStream$1;->t:Ljava/lang/Object;

    .line 2
    .line 3
    sget-object v1, Lorg/apache/commons/io/function/IOStreams;->NONE:Ljava/lang/Object;

    .line 4
    .line 5
    if-ne v0, v1, :cond_b

    .line 6
    .line 7
    iget-object v0, p0, Lorg/apache/commons/io/function/IOStream$1;->val$seed:Ljava/lang/Object;

    .line 8
    .line 9
    goto :goto_11

    .line 10
    :catch_9
    move-exception v0

    .line 11
    goto :goto_14

    .line 12
    :cond_b
    iget-object v1, p0, Lorg/apache/commons/io/function/IOStream$1;->val$f:Lorg/apache/commons/io/function/IOUnaryOperator;

    .line 13
    .line 14
    invoke-interface {v1, v0}, Lorg/apache/commons/io/function/IOFunction;->apply(Ljava/lang/Object;)Ljava/lang/Object;

    .line 15
    .line 16
    .line 17
    move-result-object v0

    .line 18
    :goto_11
    iput-object v0, p0, Lorg/apache/commons/io/function/IOStream$1;->t:Ljava/lang/Object;
    :try_end_13
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_13} :catch_9

    .line 19
    .line 20
    return-object v0

    .line 21
    :goto_14
    new-instance v1, Ljava/util/NoSuchElementException;

    .line 22
    .line 23
    invoke-direct {v1}, Ljava/util/NoSuchElementException;-><init>()V

    .line 24
    .line 25
    .line 26
    invoke-virtual {v1, v0}, Ljava/lang/Throwable;->initCause(Ljava/lang/Throwable;)Ljava/lang/Throwable;

    .line 27
    .line 28
    .line 29
    throw v1
.end method
