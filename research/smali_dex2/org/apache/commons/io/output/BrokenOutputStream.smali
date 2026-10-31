.class public Lorg/apache/commons/io/output/BrokenOutputStream;
.super Ljava/io/OutputStream;
.source "r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75"


# static fields
.field public static final INSTANCE:Lorg/apache/commons/io/output/BrokenOutputStream;


# instance fields
.field private final exceptionFunction:Ljava/util/function/Function;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/function/Function<",
            "Ljava/lang/String;",
            "Ljava/lang/Throwable;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 1
    new-instance v0, Lorg/apache/commons/io/output/BrokenOutputStream;

    .line 2
    .line 3
    invoke-direct {v0}, Lorg/apache/commons/io/output/BrokenOutputStream;-><init>()V

    .line 4
    .line 5
    .line 6
    sput-object v0, Lorg/apache/commons/io/output/BrokenOutputStream;->INSTANCE:Lorg/apache/commons/io/output/BrokenOutputStream;

    .line 7
    .line 8
    return-void
.end method

.method public constructor <init>()V
    .registers 3

    .line 16
    new-instance v0, Lai/onnxruntime/d;

    const/4 v1, 0x5

    invoke-direct {v0, v1}, Lai/onnxruntime/d;-><init>(I)V

    invoke-direct {p0, v0}, Lorg/apache/commons/io/output/BrokenOutputStream;-><init>(Ljava/util/function/Function;)V

    return-void
.end method

.method public constructor <init>(Ljava/io/IOException;)V
    .registers 4
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 15
    new-instance v0, Lorg/apache/commons/io/output/a;

    const/4 v1, 0x1

    invoke-direct {v0, v1, p1}, Lorg/apache/commons/io/output/a;-><init>(ILjava/lang/Object;)V

    invoke-direct {p0, v0}, Lorg/apache/commons/io/output/BrokenOutputStream;-><init>(Ljava/util/function/Function;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/Throwable;)V
    .registers 4

    .line 17
    new-instance v0, Lorg/apache/commons/io/output/a;

    const/4 v1, 0x2

    invoke-direct {v0, v1, p1}, Lorg/apache/commons/io/output/a;-><init>(ILjava/lang/Object;)V

    invoke-direct {p0, v0}, Lorg/apache/commons/io/output/BrokenOutputStream;-><init>(Ljava/util/function/Function;)V

    return-void
.end method

.method public constructor <init>(Ljava/util/function/Function;)V
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/function/Function<",
            "Ljava/lang/String;",
            "Ljava/lang/Throwable;",
            ">;)V"
        }
    .end annotation

    .line 13
    invoke-direct {p0}, Ljava/io/OutputStream;-><init>()V

    .line 14
    iput-object p1, p0, Lorg/apache/commons/io/output/BrokenOutputStream;->exceptionFunction:Ljava/util/function/Function;

    return-void
.end method

.method public constructor <init>(Ljava/util/function/Supplier;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/function/Supplier<",
            "Ljava/lang/Throwable;",
            ">;)V"
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1
    invoke-direct {p0}, Ljava/io/OutputStream;-><init>()V

    .line 2
    .line 3
    .line 4
    new-instance v0, Lorg/apache/commons/io/output/a;

    .line 5
    .line 6
    const/4 v1, 0x0

    .line 7
    invoke-direct {v0, v1, p1}, Lorg/apache/commons/io/output/a;-><init>(ILjava/lang/Object;)V

    .line 8
    .line 9
    .line 10
    iput-object v0, p0, Lorg/apache/commons/io/output/BrokenOutputStream;->exceptionFunction:Ljava/util/function/Function;

    .line 11
    .line 12
    return-void
.end method

.method public static synthetic S(Ljava/util/function/Supplier;Ljava/lang/String;)Ljava/lang/Throwable;
    .registers 2

    .line 1
    invoke-static {p0, p1}, Lorg/apache/commons/io/output/BrokenOutputStream;->lambda$new$2(Ljava/util/function/Supplier;Ljava/lang/String;)Ljava/lang/Throwable;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method public static synthetic b(Ljava/io/IOException;Ljava/lang/String;)Ljava/lang/Throwable;
    .registers 2

    .line 1
    invoke-static {p0, p1}, Lorg/apache/commons/io/output/BrokenOutputStream;->lambda$new$1(Ljava/io/IOException;Ljava/lang/String;)Ljava/lang/Throwable;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method public static synthetic c(Ljava/lang/String;)Ljava/lang/Throwable;
    .registers 1

    .line 1
    invoke-static {p0}, Lorg/apache/commons/io/output/BrokenOutputStream;->lambda$new$0(Ljava/lang/String;)Ljava/lang/Throwable;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method private static synthetic lambda$new$0(Ljava/lang/String;)Ljava/lang/Throwable;
    .registers 3

    .line 1
    new-instance v0, Ljava/io/IOException;

    .line 2
    .line 3
    const-string v1, "Broken output stream: "

    .line 4
    .line 5
    invoke-static {v1, p0}, Lai/onnxruntime/a;->l(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 6
    .line 7
    .line 8
    move-result-object p0

    .line 9
    invoke-direct {v0, p0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    .line 10
    .line 11
    .line 12
    return-object v0
.end method

.method private static synthetic lambda$new$1(Ljava/io/IOException;Ljava/lang/String;)Ljava/lang/Throwable;
    .registers 2

    .line 1
    return-object p0
.end method

.method private static synthetic lambda$new$2(Ljava/util/function/Supplier;Ljava/lang/String;)Ljava/lang/Throwable;
    .registers 2

    .line 1
    invoke-interface {p0}, Ljava/util/function/Supplier;->get()Ljava/lang/Object;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    check-cast p0, Ljava/lang/Throwable;

    .line 6
    .line 7
    return-object p0
.end method

.method private static synthetic lambda$new$3(Ljava/lang/Throwable;Ljava/lang/String;)Ljava/lang/Throwable;
    .registers 2

    .line 1
    return-object p0
.end method

.method private rethrow(Ljava/lang/String;)Ljava/lang/RuntimeException;
    .registers 3

    .line 1
    iget-object v0, p0, Lorg/apache/commons/io/output/BrokenOutputStream;->exceptionFunction:Ljava/util/function/Function;

    .line 2
    .line 3
    invoke-interface {v0, p1}, Ljava/util/function/Function;->apply(Ljava/lang/Object;)Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object p1

    .line 7
    check-cast p1, Ljava/lang/Throwable;

    .line 8
    .line 9
    invoke-static {p1}, Lorg/apache/commons/io/function/Erase;->rethrow(Ljava/lang/Throwable;)Ljava/lang/RuntimeException;

    .line 10
    .line 11
    .line 12
    move-result-object p1

    .line 13
    return-object p1
.end method

.method public static synthetic y(Ljava/lang/String;Ljava/lang/Throwable;)Ljava/lang/Throwable;
    .registers 2

    .line 1
    invoke-static {p1, p0}, Lorg/apache/commons/io/output/BrokenOutputStream;->lambda$new$3(Ljava/lang/Throwable;Ljava/lang/String;)Ljava/lang/Throwable;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method


# virtual methods
.method public close()V
    .registers 2

    .line 1
    const-string v0, "close()"

    .line 2
    .line 3
    invoke-direct {p0, v0}, Lorg/apache/commons/io/output/BrokenOutputStream;->rethrow(Ljava/lang/String;)Ljava/lang/RuntimeException;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    throw v0
.end method

.method public flush()V
    .registers 2

    .line 1
    const-string v0, "flush()"

    .line 2
    .line 3
    invoke-direct {p0, v0}, Lorg/apache/commons/io/output/BrokenOutputStream;->rethrow(Ljava/lang/String;)Ljava/lang/RuntimeException;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    throw v0
.end method

.method public write(I)V
    .registers 2

    .line 1
    const-string p1, "write(int)"

    .line 2
    .line 3
    invoke-direct {p0, p1}, Lorg/apache/commons/io/output/BrokenOutputStream;->rethrow(Ljava/lang/String;)Ljava/lang/RuntimeException;

    .line 4
    .line 5
    .line 6
    move-result-object p1

    .line 7
    throw p1
.end method
