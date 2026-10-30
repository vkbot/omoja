.class public final synthetic Lorg/apache/commons/io/function/y;
.super Ljava/lang/Object;
.source "r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75"

# interfaces
.implements Ljava/util/function/Consumer;


# instance fields
.field public final synthetic b:Lorg/apache/commons/io/function/IOConsumer;

.field public final synthetic c:Ljava/util/concurrent/atomic/AtomicReference;

.field public final synthetic d:Ljava/util/function/BiFunction;

.field public final synthetic e:Ljava/util/concurrent/atomic/AtomicInteger;


# direct methods
.method public synthetic constructor <init>(Lorg/apache/commons/io/function/IOConsumer;Ljava/util/concurrent/atomic/AtomicReference;Ljava/util/function/BiFunction;Ljava/util/concurrent/atomic/AtomicInteger;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lorg/apache/commons/io/function/y;->b:Lorg/apache/commons/io/function/IOConsumer;

    .line 5
    .line 6
    iput-object p2, p0, Lorg/apache/commons/io/function/y;->c:Ljava/util/concurrent/atomic/AtomicReference;

    .line 7
    .line 8
    iput-object p3, p0, Lorg/apache/commons/io/function/y;->d:Ljava/util/function/BiFunction;

    .line 9
    .line 10
    iput-object p4, p0, Lorg/apache/commons/io/function/y;->e:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 11
    .line 12
    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .locals 4

    .line 1
    iget-object v0, p0, Lorg/apache/commons/io/function/y;->d:Ljava/util/function/BiFunction;

    .line 2
    .line 3
    iget-object v1, p0, Lorg/apache/commons/io/function/y;->e:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 4
    .line 5
    iget-object v2, p0, Lorg/apache/commons/io/function/y;->b:Lorg/apache/commons/io/function/IOConsumer;

    .line 6
    .line 7
    iget-object v3, p0, Lorg/apache/commons/io/function/y;->c:Ljava/util/concurrent/atomic/AtomicReference;

    .line 8
    .line 9
    invoke-static {v2, v3, v0, v1, p1}, Lorg/apache/commons/io/function/IOStream;->v(Lorg/apache/commons/io/function/IOConsumer;Ljava/util/concurrent/atomic/AtomicReference;Ljava/util/function/BiFunction;Ljava/util/concurrent/atomic/AtomicInteger;Ljava/lang/Object;)V

    .line 10
    .line 11
    .line 12
    return-void
.end method
