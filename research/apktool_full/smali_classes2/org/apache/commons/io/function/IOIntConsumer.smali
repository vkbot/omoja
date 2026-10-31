.class public interface abstract Lorg/apache/commons/io/function/IOIntConsumer;
.super Ljava/lang/Object;
.source "r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75"


# annotations
.annotation runtime Ljava/lang/FunctionalInterface;
.end annotation


# static fields
.field public static final NOOP:Lorg/apache/commons/io/function/IOIntConsumer;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Lorg/apache/commons/io/function/r;

    .line 2
    .line 3
    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    .line 6
    sput-object v0, Lorg/apache/commons/io/function/IOIntConsumer;->NOOP:Lorg/apache/commons/io/function/IOIntConsumer;

    .line 7
    .line 8
    return-void
.end method

.method public static synthetic a(Lorg/apache/commons/io/function/IOIntConsumer;I)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lorg/apache/commons/io/function/IOIntConsumer;->lambda$asIntConsumer$3(I)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static synthetic b(Lorg/apache/commons/io/function/IOIntConsumer;Lorg/apache/commons/io/function/IOIntConsumer;I)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2}, Lorg/apache/commons/io/function/IOIntConsumer;->lambda$andThen$1(Lorg/apache/commons/io/function/IOIntConsumer;I)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static synthetic c(Lorg/apache/commons/io/function/IOIntConsumer;Ljava/lang/Integer;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lorg/apache/commons/io/function/IOIntConsumer;->lambda$asConsumer$2(Ljava/lang/Integer;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static synthetic d(I)V
    .locals 0

    .line 1
    invoke-static {p0}, Lorg/apache/commons/io/function/IOIntConsumer;->lambda$static$0(I)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method private synthetic lambda$andThen$1(Lorg/apache/commons/io/function/IOIntConsumer;I)V
    .locals 0

    .line 1
    invoke-interface {p0, p2}, Lorg/apache/commons/io/function/IOIntConsumer;->accept(I)V

    .line 2
    .line 3
    .line 4
    invoke-interface {p1, p2}, Lorg/apache/commons/io/function/IOIntConsumer;->accept(I)V

    .line 5
    .line 6
    .line 7
    return-void
.end method

.method private synthetic lambda$asConsumer$2(Ljava/lang/Integer;)V
    .locals 0

    .line 1
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    .line 2
    .line 3
    .line 4
    move-result p1

    .line 5
    invoke-static {p0, p1}, Lorg/apache/commons/io/function/Uncheck;->accept(Lorg/apache/commons/io/function/IOIntConsumer;I)V

    .line 6
    .line 7
    .line 8
    return-void
.end method

.method private synthetic lambda$asIntConsumer$3(I)V
    .locals 0

    .line 1
    invoke-static {p0, p1}, Lorg/apache/commons/io/function/Uncheck;->accept(Lorg/apache/commons/io/function/IOIntConsumer;I)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method private static synthetic lambda$static$0(I)V
    .locals 0

    .line 1
    return-void
.end method


# virtual methods
.method public abstract accept(I)V
.end method

.method public andThen(Lorg/apache/commons/io/function/IOIntConsumer;)Lorg/apache/commons/io/function/IOIntConsumer;
    .locals 1

    .line 1
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 2
    .line 3
    .line 4
    new-instance v0, Lorg/apache/commons/io/function/q;

    .line 5
    .line 6
    invoke-direct {v0, p0, p1}, Lorg/apache/commons/io/function/q;-><init>(Lorg/apache/commons/io/function/IOIntConsumer;Lorg/apache/commons/io/function/IOIntConsumer;)V

    .line 7
    .line 8
    .line 9
    return-object v0
.end method

.method public asConsumer()Ljava/util/function/Consumer;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/function/Consumer<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .line 1
    new-instance v0, Lorg/apache/commons/io/function/a0;

    .line 2
    .line 3
    const/4 v1, 0x5

    .line 4
    invoke-direct {v0, v1, p0}, Lorg/apache/commons/io/function/a0;-><init>(ILjava/lang/Object;)V

    .line 5
    .line 6
    .line 7
    return-object v0
.end method

.method public asIntConsumer()Ljava/util/function/IntConsumer;
    .locals 1

    .line 1
    new-instance v0, Lorg/apache/commons/io/function/s;

    .line 2
    .line 3
    invoke-direct {v0, p0}, Lorg/apache/commons/io/function/s;-><init>(Lorg/apache/commons/io/function/IOIntConsumer;)V

    .line 4
    .line 5
    .line 6
    return-object v0
.end method
