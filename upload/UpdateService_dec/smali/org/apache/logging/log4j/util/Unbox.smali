.class public Lorg/apache/logging/log4j/util/Unbox;
.super Ljava/lang/Object;
.source "Unbox.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/apache/logging/log4j/util/Unbox$State;,
        Lorg/apache/logging/log4j/util/Unbox$WebSafeState;
    }
.end annotation


# static fields
.field private static final BITS_PER_INT:I = 0x20

.field private static final LOGGER:Lorg/apache/logging/log4j/Logger;

.field private static final MASK:I

.field private static final RINGBUFFER_MIN_SIZE:I = 0x20

.field private static final RINGBUFFER_SIZE:I

.field private static threadLocalState:Ljava/lang/ThreadLocal;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ThreadLocal<",
            "Lorg/apache/logging/log4j/util/Unbox$State;",
            ">;"
        }
    .end annotation
.end field

.field private static webSafeState:Lorg/apache/logging/log4j/util/Unbox$WebSafeState;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 50
    invoke-static {}, Lorg/apache/logging/log4j/status/StatusLogger;->getLogger()Lorg/apache/logging/log4j/status/StatusLogger;

    move-result-object v0

    sput-object v0, Lorg/apache/logging/log4j/util/Unbox;->LOGGER:Lorg/apache/logging/log4j/Logger;

    .line 53
    const-string v0, "log4j.unbox.ringbuffer.size"

    invoke-static {v0}, Lorg/apache/logging/log4j/util/Unbox;->calculateRingBufferSize(Ljava/lang/String;)I

    move-result v0

    sput v0, Lorg/apache/logging/log4j/util/Unbox;->RINGBUFFER_SIZE:I

    .line 54
    add-int/lit8 v0, v0, -0x1

    sput v0, Lorg/apache/logging/log4j/util/Unbox;->MASK:I

    .line 123
    new-instance v0, Ljava/lang/ThreadLocal;

    invoke-direct {v0}, Ljava/lang/ThreadLocal;-><init>()V

    sput-object v0, Lorg/apache/logging/log4j/util/Unbox;->threadLocalState:Ljava/lang/ThreadLocal;

    .line 124
    new-instance v0, Lorg/apache/logging/log4j/util/Unbox$WebSafeState;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lorg/apache/logging/log4j/util/Unbox$WebSafeState;-><init>(Lorg/apache/logging/log4j/util/Unbox$1;)V

    sput-object v0, Lorg/apache/logging/log4j/util/Unbox;->webSafeState:Lorg/apache/logging/log4j/util/Unbox$WebSafeState;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 126
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 128
    return-void
.end method

.method static synthetic access$000()I
    .locals 1

    .line 49
    sget v0, Lorg/apache/logging/log4j/util/Unbox;->RINGBUFFER_SIZE:I

    return v0
.end method

.method static synthetic access$100()I
    .locals 1

    .line 49
    sget v0, Lorg/apache/logging/log4j/util/Unbox;->MASK:I

    return v0
.end method

.method public static box(B)Ljava/lang/StringBuilder;
    .locals 1
    .param p0, "value"    # B
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10
        }
        names = {
            "value"
        }
    .end annotation

    .line 241
    invoke-static {}, Lorg/apache/logging/log4j/util/Unbox;->getSB()Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    return-object v0
.end method

.method public static box(C)Ljava/lang/StringBuilder;
    .locals 1
    .param p0, "value"    # C
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10
        }
        names = {
            "value"
        }
    .end annotation

    .line 217
    invoke-static {}, Lorg/apache/logging/log4j/util/Unbox;->getSB()Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    return-object v0
.end method

.method public static box(D)Ljava/lang/StringBuilder;
    .locals 1
    .param p0, "value"    # D
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10
        }
        names = {
            "value"
        }
    .end annotation

    .line 181
    invoke-static {}, Lorg/apache/logging/log4j/util/Unbox;->getSB()Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p0, p1}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    return-object v0
.end method

.method public static box(F)Ljava/lang/StringBuilder;
    .locals 1
    .param p0, "value"    # F
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10
        }
        names = {
            "value"
        }
    .end annotation

    .line 169
    invoke-static {}, Lorg/apache/logging/log4j/util/Unbox;->getSB()Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    return-object v0
.end method

.method public static box(I)Ljava/lang/StringBuilder;
    .locals 1
    .param p0, "value"    # I
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10
        }
        names = {
            "value"
        }
    .end annotation

    .line 205
    invoke-static {}, Lorg/apache/logging/log4j/util/Unbox;->getSB()Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    return-object v0
.end method

.method public static box(J)Ljava/lang/StringBuilder;
    .locals 1
    .param p0, "value"    # J
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10
        }
        names = {
            "value"
        }
    .end annotation

    .line 229
    invoke-static {}, Lorg/apache/logging/log4j/util/Unbox;->getSB()Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p0, p1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    return-object v0
.end method

.method public static box(S)Ljava/lang/StringBuilder;
    .locals 1
    .param p0, "value"    # S
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10
        }
        names = {
            "value"
        }
    .end annotation

    .line 193
    invoke-static {}, Lorg/apache/logging/log4j/util/Unbox;->getSB()Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    return-object v0
.end method

.method public static box(Z)Ljava/lang/StringBuilder;
    .locals 1
    .param p0, "value"    # Z
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10
        }
        names = {
            "value"
        }
    .end annotation

    .line 253
    invoke-static {}, Lorg/apache/logging/log4j/util/Unbox;->getSB()Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    return-object v0
.end method

.method private static calculateRingBufferSize(Ljava/lang/String;)I
    .locals 6
    .param p0, "propertyName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10
        }
        names = {
            "propertyName"
        }
    .end annotation

    .line 131
    invoke-static {}, Lorg/apache/logging/log4j/util/PropertiesUtil;->getProperties()Lorg/apache/logging/log4j/util/PropertiesUtil;

    move-result-object v0

    .line 132
    const/16 v1, 0x20

    .line 143
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    .line 132
    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    .line 131
    invoke-virtual {v0, p0, v3}, Lorg/apache/logging/log4j/util/PropertiesUtil;->getStringProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 134
    .local v0, "userPreferredRBSize":Ljava/lang/String;
    :try_start_0
    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3

    .line 135
    .local v3, "size":I
    if-ge v3, v1, :cond_0

    .line 136
    const/16 v3, 0x20

    .line 137
    sget-object v4, Lorg/apache/logging/log4j/util/Unbox;->LOGGER:Lorg/apache/logging/log4j/Logger;

    const-string v5, "Invalid {} {}, using minimum size {}."

    .line 138
    nop

    .line 137
    invoke-interface {v4, v5, p0, v0, v2}, Lorg/apache/logging/log4j/Logger;->warn(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 140
    :cond_0
    invoke-static {v3}, Lorg/apache/logging/log4j/util/Unbox;->ceilingNextPowerOfTwo(I)I

    move-result v1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return v1

    .line 141
    .end local v3    # "size":I
    :catch_0
    move-exception v3

    .line 142
    .local v3, "ex":Ljava/lang/Exception;
    sget-object v4, Lorg/apache/logging/log4j/util/Unbox;->LOGGER:Lorg/apache/logging/log4j/Logger;

    .line 143
    nop

    .line 142
    const-string v5, "Invalid {} {}, using default size {}."

    invoke-interface {v4, v5, p0, v0, v2}, Lorg/apache/logging/log4j/Logger;->warn(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 144
    return v1
.end method

.method private static ceilingNextPowerOfTwo(I)I
    .locals 2
    .param p0, "x"    # I
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10
        }
        names = {
            "x"
        }
    .end annotation

    .line 157
    add-int/lit8 v0, p0, -0x1

    invoke-static {v0}, Ljava/lang/Integer;->numberOfLeadingZeros(I)I

    move-result v0

    rsub-int/lit8 v0, v0, 0x20

    const/4 v1, 0x1

    shl-int v0, v1, v0

    return v0
.end method

.method static getRingbufferSize()I
    .locals 1

    .line 271
    sget v0, Lorg/apache/logging/log4j/util/Unbox;->RINGBUFFER_SIZE:I

    return v0
.end method

.method private static getSB()Ljava/lang/StringBuilder;
    .locals 1

    .line 266
    sget-boolean v0, Lorg/apache/logging/log4j/util/Constants;->ENABLE_THREADLOCALS:Z

    if-eqz v0, :cond_0

    invoke-static {}, Lorg/apache/logging/log4j/util/Unbox;->getState()Lorg/apache/logging/log4j/util/Unbox$State;

    move-result-object v0

    invoke-virtual {v0}, Lorg/apache/logging/log4j/util/Unbox$State;->getStringBuilder()Ljava/lang/StringBuilder;

    move-result-object v0

    goto :goto_0

    :cond_0
    sget-object v0, Lorg/apache/logging/log4j/util/Unbox;->webSafeState:Lorg/apache/logging/log4j/util/Unbox$WebSafeState;

    invoke-virtual {v0}, Lorg/apache/logging/log4j/util/Unbox$WebSafeState;->getStringBuilder()Ljava/lang/StringBuilder;

    move-result-object v0

    :goto_0
    return-object v0
.end method

.method private static getState()Lorg/apache/logging/log4j/util/Unbox$State;
    .locals 2

    .line 257
    sget-object v0, Lorg/apache/logging/log4j/util/Unbox;->threadLocalState:Ljava/lang/ThreadLocal;

    invoke-virtual {v0}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/apache/logging/log4j/util/Unbox$State;

    .line 258
    .local v0, "state":Lorg/apache/logging/log4j/util/Unbox$State;
    if-nez v0, :cond_0

    .line 259
    new-instance v1, Lorg/apache/logging/log4j/util/Unbox$State;

    invoke-direct {v1}, Lorg/apache/logging/log4j/util/Unbox$State;-><init>()V

    move-object v0, v1

    .line 260
    sget-object v1, Lorg/apache/logging/log4j/util/Unbox;->threadLocalState:Ljava/lang/ThreadLocal;

    invoke-virtual {v1, v0}, Ljava/lang/ThreadLocal;->set(Ljava/lang/Object;)V

    .line 262
    :cond_0
    return-object v0
.end method
