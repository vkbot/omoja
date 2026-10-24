.class Lorg/apache/logging/log4j/util/Unbox$WebSafeState;
.super Ljava/lang/Object;
.source "Unbox.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/apache/logging/log4j/util/Unbox;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "WebSafeState"
.end annotation


# instance fields
.field private final current:Ljava/lang/ThreadLocal;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ThreadLocal<",
            "[I>;"
        }
    .end annotation
.end field

.field private final ringBuffer:Ljava/lang/ThreadLocal;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ThreadLocal<",
            "[",
            "Ljava/lang/StringBuilder;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method private constructor <init>()V
    .locals 1

    .line 65
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 66
    new-instance v0, Ljava/lang/ThreadLocal;

    invoke-direct {v0}, Ljava/lang/ThreadLocal;-><init>()V

    iput-object v0, p0, Lorg/apache/logging/log4j/util/Unbox$WebSafeState;->ringBuffer:Ljava/lang/ThreadLocal;

    .line 67
    new-instance v0, Ljava/lang/ThreadLocal;

    invoke-direct {v0}, Ljava/lang/ThreadLocal;-><init>()V

    iput-object v0, p0, Lorg/apache/logging/log4j/util/Unbox$WebSafeState;->current:Ljava/lang/ThreadLocal;

    return-void
.end method

.method synthetic constructor <init>(Lorg/apache/logging/log4j/util/Unbox$1;)V
    .locals 0
    .param p1, "x0"    # Lorg/apache/logging/log4j/util/Unbox$1;

    .line 65
    invoke-direct {p0}, Lorg/apache/logging/log4j/util/Unbox$WebSafeState;-><init>()V

    return-void
.end method


# virtual methods
.method public getStringBuilder()Ljava/lang/StringBuilder;
    .locals 6

    .line 70
    iget-object v0, p0, Lorg/apache/logging/log4j/util/Unbox$WebSafeState;->ringBuffer:Ljava/lang/ThreadLocal;

    invoke-virtual {v0}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/StringBuilder;

    .line 71
    .local v0, "array":[Ljava/lang/StringBuilder;
    if-nez v0, :cond_1

    .line 72
    invoke-static {}, Lorg/apache/logging/log4j/util/Unbox;->access$000()I

    move-result v1

    new-array v0, v1, [Ljava/lang/StringBuilder;

    .line 73
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    array-length v2, v0

    if-ge v1, v2, :cond_0

    .line 74
    new-instance v2, Ljava/lang/StringBuilder;

    const/16 v3, 0x15

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(I)V

    aput-object v2, v0, v1

    .line 73
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 76
    .end local v1    # "i":I
    :cond_0
    iget-object v1, p0, Lorg/apache/logging/log4j/util/Unbox$WebSafeState;->ringBuffer:Ljava/lang/ThreadLocal;

    invoke-virtual {v1, v0}, Ljava/lang/ThreadLocal;->set(Ljava/lang/Object;)V

    .line 77
    iget-object v1, p0, Lorg/apache/logging/log4j/util/Unbox$WebSafeState;->current:Ljava/lang/ThreadLocal;

    const/4 v2, 0x1

    new-array v2, v2, [I

    invoke-virtual {v1, v2}, Ljava/lang/ThreadLocal;->set(Ljava/lang/Object;)V

    .line 79
    :cond_1
    iget-object v1, p0, Lorg/apache/logging/log4j/util/Unbox$WebSafeState;->current:Ljava/lang/ThreadLocal;

    invoke-virtual {v1}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [I

    .line 80
    .local v1, "index":[I
    invoke-static {}, Lorg/apache/logging/log4j/util/Unbox;->access$100()I

    move-result v2

    const/4 v3, 0x0

    aget v4, v1, v3

    add-int/lit8 v5, v4, 0x1

    aput v5, v1, v3

    and-int/2addr v2, v4

    aget-object v2, v0, v2

    .line 81
    .local v2, "result":Ljava/lang/StringBuilder;
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->setLength(I)V

    .line 82
    return-object v2
.end method

.method public isBoxedPrimitive(Ljava/lang/StringBuilder;)Z
    .locals 4
    .param p1, "text"    # Ljava/lang/StringBuilder;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10
        }
        names = {
            "text"
        }
    .end annotation

    .line 86
    iget-object v0, p0, Lorg/apache/logging/log4j/util/Unbox$WebSafeState;->ringBuffer:Ljava/lang/ThreadLocal;

    invoke-virtual {v0}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/StringBuilder;

    .line 87
    .local v0, "array":[Ljava/lang/StringBuilder;
    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 88
    return v1

    .line 90
    :cond_0
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    array-length v3, v0

    if-ge v2, v3, :cond_2

    .line 91
    aget-object v3, v0, v2

    if-ne p1, v3, :cond_1

    .line 92
    const/4 v1, 0x1

    return v1

    .line 90
    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 95
    .end local v2    # "i":I
    :cond_2
    return v1
.end method
