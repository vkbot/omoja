.class final Lorg/apache/commons/io/input/ByteBufferCleaner;
.super Ljava/lang/Object;
.source "r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/apache/commons/io/input/ByteBufferCleaner$Cleaner;,
        Lorg/apache/commons/io/input/ByteBufferCleaner$Java8Cleaner;,
        Lorg/apache/commons/io/input/ByteBufferCleaner$Java9Cleaner;
    }
.end annotation


# static fields
.field private static final INSTANCE:Lorg/apache/commons/io/input/ByteBufferCleaner$Cleaner;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 1
    invoke-static {}, Lorg/apache/commons/io/input/ByteBufferCleaner;->getCleaner()Lorg/apache/commons/io/input/ByteBufferCleaner$Cleaner;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    sput-object v0, Lorg/apache/commons/io/input/ByteBufferCleaner;->INSTANCE:Lorg/apache/commons/io/input/ByteBufferCleaner$Cleaner;

    .line 6
    .line 7
    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static clean(Ljava/nio/ByteBuffer;)V
    .registers 3

    .line 1
    :try_start_0
    sget-object v0, Lorg/apache/commons/io/input/ByteBufferCleaner;->INSTANCE:Lorg/apache/commons/io/input/ByteBufferCleaner$Cleaner;

    .line 2
    .line 3
    invoke-interface {v0, p0}, Lorg/apache/commons/io/input/ByteBufferCleaner$Cleaner;->clean(Ljava/nio/ByteBuffer;)V
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_5} :catch_6

    .line 4
    .line 5
    .line 6
    return-void

    .line 7
    :catch_6
    move-exception p0

    .line 8
    new-instance v0, Ljava/lang/IllegalStateException;

    .line 9
    .line 10
    const-string v1, "Failed to clean direct buffer."

    .line 11
    .line 12
    invoke-direct {v0, v1, p0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 13
    .line 14
    .line 15
    throw v0
.end method

.method private static getCleaner()Lorg/apache/commons/io/input/ByteBufferCleaner$Cleaner;
    .registers 3

    .line 1
    const/4 v0, 0x0

    .line 2
    :try_start_1
    new-instance v1, Lorg/apache/commons/io/input/ByteBufferCleaner$Java8Cleaner;

    .line 3
    .line 4
    invoke-direct {v1, v0}, Lorg/apache/commons/io/input/ByteBufferCleaner$Java8Cleaner;-><init>(Lorg/apache/commons/io/input/ByteBufferCleaner$1;)V
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_6} :catch_7

    .line 5
    .line 6
    .line 7
    return-object v1

    .line 8
    :catch_7
    move-exception v1

    .line 9
    :try_start_8
    new-instance v2, Lorg/apache/commons/io/input/ByteBufferCleaner$Java9Cleaner;

    .line 10
    .line 11
    invoke-direct {v2, v0}, Lorg/apache/commons/io/input/ByteBufferCleaner$Java9Cleaner;-><init>(Lorg/apache/commons/io/input/ByteBufferCleaner$1;)V
    :try_end_d
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_d} :catch_e

    .line 12
    .line 13
    .line 14
    return-object v2

    .line 15
    :catch_e
    new-instance v0, Ljava/lang/IllegalStateException;

    .line 16
    .line 17
    const-string v2, "Failed to initialize a Cleaner."

    .line 18
    .line 19
    invoke-direct {v0, v2, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 20
    .line 21
    .line 22
    throw v0
.end method

.method public static isSupported()Z
    .registers 1

    .line 1
    sget-object v0, Lorg/apache/commons/io/input/ByteBufferCleaner;->INSTANCE:Lorg/apache/commons/io/input/ByteBufferCleaner$Cleaner;

    .line 2
    .line 3
    if-eqz v0, :cond_6

    .line 4
    .line 5
    const/4 v0, 0x1

    .line 6
    return v0

    .line 7
    :cond_6
    const/4 v0, 0x0

    .line 8
    return v0
.end method
