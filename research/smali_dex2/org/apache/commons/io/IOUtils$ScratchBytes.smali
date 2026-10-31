.class final Lorg/apache/commons/io/IOUtils$ScratchBytes;
.super Ljava/lang/Object;
.source "r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75"

# interfaces
.implements Ljava/lang/AutoCloseable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/apache/commons/io/IOUtils;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "ScratchBytes"
.end annotation


# static fields
.field private static final INSTANCE:Lorg/apache/commons/io/IOUtils$ScratchBytes;

.field private static final LOCAL:Ljava/lang/ThreadLocal;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ThreadLocal<",
            "[",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final buffer:[B


# direct methods
.method static constructor <clinit>()V
    .registers 3

    .line 1
    new-instance v0, Lorg/apache/commons/io/w;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    invoke-direct {v0, v1}, Lorg/apache/commons/io/w;-><init>(I)V

    .line 5
    .line 6
    .line 7
    new-instance v1, Lorg/apache/commons/io/x;

    .line 8
    .line 9
    const/4 v2, 0x0

    .line 10
    invoke-direct {v1, v0, v2}, Lorg/apache/commons/io/x;-><init>(Ljava/util/function/Supplier;I)V

    .line 11
    .line 12
    .line 13
    sput-object v1, Lorg/apache/commons/io/IOUtils$ScratchBytes;->LOCAL:Ljava/lang/ThreadLocal;

    .line 14
    .line 15
    new-instance v0, Lorg/apache/commons/io/IOUtils$ScratchBytes;

    .line 16
    .line 17
    const/4 v1, 0x0

    .line 18
    invoke-direct {v0, v1}, Lorg/apache/commons/io/IOUtils$ScratchBytes;-><init>([B)V

    .line 19
    .line 20
    .line 21
    sput-object v0, Lorg/apache/commons/io/IOUtils$ScratchBytes;->INSTANCE:Lorg/apache/commons/io/IOUtils$ScratchBytes;

    .line 22
    .line 23
    return-void
.end method

.method private constructor <init>([B)V
    .registers 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lorg/apache/commons/io/IOUtils$ScratchBytes;->buffer:[B

    .line 5
    .line 6
    return-void
.end method

.method public static synthetic access$100()Ljava/lang/ThreadLocal;
    .registers 1

    .line 1
    sget-object v0, Lorg/apache/commons/io/IOUtils$ScratchBytes;->LOCAL:Ljava/lang/ThreadLocal;

    .line 2
    .line 3
    return-object v0
.end method

.method public static synthetic b()[Ljava/lang/Object;
    .registers 1

    .line 1
    invoke-static {}, Lorg/apache/commons/io/IOUtils$ScratchBytes;->lambda$static$0()[Ljava/lang/Object;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    return-object v0
.end method

.method public static get()Lorg/apache/commons/io/IOUtils$ScratchBytes;
    .registers 3

    .line 1
    sget-object v0, Lorg/apache/commons/io/IOUtils$ScratchBytes;->LOCAL:Ljava/lang/ThreadLocal;

    .line 2
    .line 3
    invoke-virtual {v0}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    check-cast v0, [Ljava/lang/Object;

    .line 8
    .line 9
    const/4 v1, 0x0

    .line 10
    aget-object v2, v0, v1

    .line 11
    .line 12
    check-cast v2, Ljava/lang/Boolean;

    .line 13
    .line 14
    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    .line 15
    .line 16
    .line 17
    move-result v2

    .line 18
    if-eqz v2, :cond_1d

    .line 19
    .line 20
    new-instance v0, Lorg/apache/commons/io/IOUtils$ScratchBytes;

    .line 21
    .line 22
    invoke-static {}, Lorg/apache/commons/io/IOUtils;->byteArray()[B

    .line 23
    .line 24
    .line 25
    move-result-object v1

    .line 26
    invoke-direct {v0, v1}, Lorg/apache/commons/io/IOUtils$ScratchBytes;-><init>([B)V

    .line 27
    .line 28
    .line 29
    return-object v0

    .line 30
    :cond_1d
    sget-object v2, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    .line 31
    .line 32
    aput-object v2, v0, v1

    .line 33
    .line 34
    sget-object v0, Lorg/apache/commons/io/IOUtils$ScratchBytes;->INSTANCE:Lorg/apache/commons/io/IOUtils$ScratchBytes;

    .line 35
    .line 36
    return-object v0
.end method

.method private static synthetic lambda$static$0()[Ljava/lang/Object;
    .registers 2

    .line 1
    sget-object v0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    .line 2
    .line 3
    invoke-static {}, Lorg/apache/commons/io/IOUtils;->byteArray()[B

    .line 4
    .line 5
    .line 6
    move-result-object v1

    .line 7
    filled-new-array {v0, v1}, [Ljava/lang/Object;

    .line 8
    .line 9
    .line 10
    move-result-object v0

    .line 11
    return-object v0
.end method


# virtual methods
.method public array()[B
    .registers 3

    .line 1
    iget-object v0, p0, Lorg/apache/commons/io/IOUtils$ScratchBytes;->buffer:[B

    .line 2
    .line 3
    if-eqz v0, :cond_5

    .line 4
    .line 5
    return-object v0

    .line 6
    :cond_5
    sget-object v0, Lorg/apache/commons/io/IOUtils$ScratchBytes;->LOCAL:Ljava/lang/ThreadLocal;

    .line 7
    .line 8
    invoke-virtual {v0}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    .line 9
    .line 10
    .line 11
    move-result-object v0

    .line 12
    check-cast v0, [Ljava/lang/Object;

    .line 13
    .line 14
    const/4 v1, 0x1

    .line 15
    aget-object v0, v0, v1

    .line 16
    .line 17
    check-cast v0, [B

    .line 18
    .line 19
    return-object v0
.end method

.method public close()V
    .registers 4

    .line 1
    iget-object v0, p0, Lorg/apache/commons/io/IOUtils$ScratchBytes;->buffer:[B

    .line 2
    .line 3
    if-nez v0, :cond_19

    .line 4
    .line 5
    sget-object v0, Lorg/apache/commons/io/IOUtils$ScratchBytes;->LOCAL:Ljava/lang/ThreadLocal;

    .line 6
    .line 7
    invoke-virtual {v0}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    .line 8
    .line 9
    .line 10
    move-result-object v0

    .line 11
    check-cast v0, [Ljava/lang/Object;

    .line 12
    .line 13
    const/4 v1, 0x1

    .line 14
    aget-object v1, v0, v1

    .line 15
    .line 16
    check-cast v1, [B

    .line 17
    .line 18
    const/4 v2, 0x0

    .line 19
    invoke-static {v1, v2}, Ljava/util/Arrays;->fill([BB)V

    .line 20
    .line 21
    .line 22
    sget-object v1, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    .line 23
    .line 24
    aput-object v1, v0, v2

    .line 25
    .line 26
    :cond_19
    return-void
.end method
