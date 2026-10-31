.class public Lorg/apache/commons/io/input/BrokenReader;
.super Ljava/io/Reader;
.source "r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75"


# static fields
.field public static final INSTANCE:Lorg/apache/commons/io/input/BrokenReader;


# instance fields
.field private final exceptionSupplier:Ljava/util/function/Supplier;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/function/Supplier<",
            "Ljava/lang/Throwable;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Lorg/apache/commons/io/input/BrokenReader;

    .line 2
    .line 3
    invoke-direct {v0}, Lorg/apache/commons/io/input/BrokenReader;-><init>()V

    .line 4
    .line 5
    .line 6
    sput-object v0, Lorg/apache/commons/io/input/BrokenReader;->INSTANCE:Lorg/apache/commons/io/input/BrokenReader;

    .line 7
    .line 8
    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .line 1
    new-instance v0, Landroidx/emoji2/text/flatbuffer/a;

    .line 2
    .line 3
    const/4 v1, 0x5

    .line 4
    invoke-direct {v0, v1}, Landroidx/emoji2/text/flatbuffer/a;-><init>(I)V

    .line 5
    .line 6
    .line 7
    invoke-direct {p0, v0}, Lorg/apache/commons/io/input/BrokenReader;-><init>(Ljava/util/function/Supplier;)V

    .line 8
    .line 9
    .line 10
    return-void
.end method

.method public constructor <init>(Ljava/io/IOException;)V
    .locals 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 11
    new-instance v0, Lorg/apache/commons/io/input/c;

    const/4 v1, 0x1

    invoke-direct {v0, p1, v1}, Lorg/apache/commons/io/input/c;-><init>(Ljava/io/IOException;I)V

    invoke-direct {p0, v0}, Lorg/apache/commons/io/input/BrokenReader;-><init>(Ljava/util/function/Supplier;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/Throwable;)V
    .locals 2

    .line 14
    new-instance v0, Lorg/apache/commons/io/input/b;

    const/4 v1, 0x1

    invoke-direct {v0, v1, p1}, Lorg/apache/commons/io/input/b;-><init>(ILjava/lang/Throwable;)V

    invoke-direct {p0, v0}, Lorg/apache/commons/io/input/BrokenReader;-><init>(Ljava/util/function/Supplier;)V

    return-void
.end method

.method public constructor <init>(Ljava/util/function/Supplier;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/function/Supplier<",
            "Ljava/lang/Throwable;",
            ">;)V"
        }
    .end annotation

    .line 12
    invoke-direct {p0}, Ljava/io/Reader;-><init>()V

    .line 13
    iput-object p1, p0, Lorg/apache/commons/io/input/BrokenReader;->exceptionSupplier:Ljava/util/function/Supplier;

    return-void
.end method

.method public static synthetic b(Ljava/io/IOException;)Ljava/lang/Throwable;
    .locals 0

    .line 1
    invoke-static {p0}, Lorg/apache/commons/io/input/BrokenReader;->lambda$new$1(Ljava/io/IOException;)Ljava/lang/Throwable;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method public static synthetic c()Ljava/lang/Throwable;
    .locals 1

    .line 1
    invoke-static {}, Lorg/apache/commons/io/input/BrokenReader;->lambda$new$0()Ljava/lang/Throwable;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    return-object v0
.end method

.method private static synthetic lambda$new$0()Ljava/lang/Throwable;
    .locals 2

    .line 1
    new-instance v0, Ljava/io/IOException;

    .line 2
    .line 3
    const-string v1, "Broken reader"

    .line 4
    .line 5
    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    return-object v0
.end method

.method private static synthetic lambda$new$1(Ljava/io/IOException;)Ljava/lang/Throwable;
    .locals 0

    .line 1
    return-object p0
.end method

.method private static synthetic lambda$new$2(Ljava/lang/Throwable;)Ljava/lang/Throwable;
    .locals 0

    .line 1
    return-object p0
.end method

.method private rethrow()Ljava/lang/RuntimeException;
    .locals 1

    .line 1
    iget-object v0, p0, Lorg/apache/commons/io/input/BrokenReader;->exceptionSupplier:Ljava/util/function/Supplier;

    .line 2
    .line 3
    invoke-interface {v0}, Ljava/util/function/Supplier;->get()Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    check-cast v0, Ljava/lang/Throwable;

    .line 8
    .line 9
    invoke-static {v0}, Lorg/apache/commons/io/function/Erase;->rethrow(Ljava/lang/Throwable;)Ljava/lang/RuntimeException;

    .line 10
    .line 11
    .line 12
    move-result-object v0

    .line 13
    return-object v0
.end method

.method public static synthetic y(Ljava/lang/Throwable;)Ljava/lang/Throwable;
    .locals 0

    .line 1
    invoke-static {p0}, Lorg/apache/commons/io/input/BrokenReader;->lambda$new$2(Ljava/lang/Throwable;)Ljava/lang/Throwable;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method


# virtual methods
.method public close()V
    .locals 1

    .line 1
    invoke-direct {p0}, Lorg/apache/commons/io/input/BrokenReader;->rethrow()Ljava/lang/RuntimeException;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    throw v0
.end method

.method public mark(I)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lorg/apache/commons/io/input/BrokenReader;->rethrow()Ljava/lang/RuntimeException;

    .line 2
    .line 3
    .line 4
    move-result-object p1

    .line 5
    throw p1
.end method

.method public read([CII)I
    .locals 0

    .line 1
    invoke-direct {p0}, Lorg/apache/commons/io/input/BrokenReader;->rethrow()Ljava/lang/RuntimeException;

    .line 2
    .line 3
    .line 4
    move-result-object p1

    .line 5
    throw p1
.end method

.method public ready()Z
    .locals 1

    .line 1
    invoke-direct {p0}, Lorg/apache/commons/io/input/BrokenReader;->rethrow()Ljava/lang/RuntimeException;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    throw v0
.end method

.method public reset()V
    .locals 1

    .line 1
    invoke-direct {p0}, Lorg/apache/commons/io/input/BrokenReader;->rethrow()Ljava/lang/RuntimeException;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    throw v0
.end method

.method public skip(J)J
    .locals 0

    .line 1
    invoke-direct {p0}, Lorg/apache/commons/io/input/BrokenReader;->rethrow()Ljava/lang/RuntimeException;

    .line 2
    .line 3
    .line 4
    move-result-object p1

    .line 5
    throw p1
.end method
