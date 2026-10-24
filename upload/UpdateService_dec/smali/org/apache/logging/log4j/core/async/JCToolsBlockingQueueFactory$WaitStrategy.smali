.class public final enum Lorg/apache/logging/log4j/core/async/JCToolsBlockingQueueFactory$WaitStrategy;
.super Ljava/lang/Enum;
.source "JCToolsBlockingQueueFactory.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/apache/logging/log4j/core/async/JCToolsBlockingQueueFactory;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "WaitStrategy"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lorg/apache/logging/log4j/core/async/JCToolsBlockingQueueFactory$WaitStrategy;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lorg/apache/logging/log4j/core/async/JCToolsBlockingQueueFactory$WaitStrategy;

.field public static final enum PARK:Lorg/apache/logging/log4j/core/async/JCToolsBlockingQueueFactory$WaitStrategy;

.field public static final enum PROGRESSIVE:Lorg/apache/logging/log4j/core/async/JCToolsBlockingQueueFactory$WaitStrategy;

.field public static final enum SPIN:Lorg/apache/logging/log4j/core/async/JCToolsBlockingQueueFactory$WaitStrategy;

.field public static final enum YIELD:Lorg/apache/logging/log4j/core/async/JCToolsBlockingQueueFactory$WaitStrategy;


# instance fields
.field private final idle:Lorg/apache/logging/log4j/core/async/JCToolsBlockingQueueFactory$Idle;


# direct methods
.method static constructor <clinit>()V
    .locals 7

    .line 146
    new-instance v0, Lorg/apache/logging/log4j/core/async/JCToolsBlockingQueueFactory$WaitStrategy;

    sget-object v1, Lorg/apache/logging/log4j/core/async/-$$Lambda$JCToolsBlockingQueueFactory$WaitStrategy$MWrmrCbgZDwPlkVgv3C_Yp3PT3Q;->INSTANCE:Lorg/apache/logging/log4j/core/async/-$$Lambda$JCToolsBlockingQueueFactory$WaitStrategy$MWrmrCbgZDwPlkVgv3C_Yp3PT3Q;

    const-string v2, "SPIN"

    const/4 v3, 0x0

    invoke-direct {v0, v2, v3, v1}, Lorg/apache/logging/log4j/core/async/JCToolsBlockingQueueFactory$WaitStrategy;-><init>(Ljava/lang/String;ILorg/apache/logging/log4j/core/async/JCToolsBlockingQueueFactory$Idle;)V

    sput-object v0, Lorg/apache/logging/log4j/core/async/JCToolsBlockingQueueFactory$WaitStrategy;->SPIN:Lorg/apache/logging/log4j/core/async/JCToolsBlockingQueueFactory$WaitStrategy;

    .line 147
    new-instance v0, Lorg/apache/logging/log4j/core/async/JCToolsBlockingQueueFactory$WaitStrategy;

    sget-object v1, Lorg/apache/logging/log4j/core/async/-$$Lambda$JCToolsBlockingQueueFactory$WaitStrategy$6Yd079TdNMHILl0h7wybloWJiFY;->INSTANCE:Lorg/apache/logging/log4j/core/async/-$$Lambda$JCToolsBlockingQueueFactory$WaitStrategy$6Yd079TdNMHILl0h7wybloWJiFY;

    const-string v2, "YIELD"

    const/4 v4, 0x1

    invoke-direct {v0, v2, v4, v1}, Lorg/apache/logging/log4j/core/async/JCToolsBlockingQueueFactory$WaitStrategy;-><init>(Ljava/lang/String;ILorg/apache/logging/log4j/core/async/JCToolsBlockingQueueFactory$Idle;)V

    sput-object v0, Lorg/apache/logging/log4j/core/async/JCToolsBlockingQueueFactory$WaitStrategy;->YIELD:Lorg/apache/logging/log4j/core/async/JCToolsBlockingQueueFactory$WaitStrategy;

    .line 151
    new-instance v0, Lorg/apache/logging/log4j/core/async/JCToolsBlockingQueueFactory$WaitStrategy;

    sget-object v1, Lorg/apache/logging/log4j/core/async/-$$Lambda$JCToolsBlockingQueueFactory$WaitStrategy$_gVbgwB37Cn7SlpXdoWZ4xNxYRs;->INSTANCE:Lorg/apache/logging/log4j/core/async/-$$Lambda$JCToolsBlockingQueueFactory$WaitStrategy$_gVbgwB37Cn7SlpXdoWZ4xNxYRs;

    const-string v2, "PARK"

    const/4 v5, 0x2

    invoke-direct {v0, v2, v5, v1}, Lorg/apache/logging/log4j/core/async/JCToolsBlockingQueueFactory$WaitStrategy;-><init>(Ljava/lang/String;ILorg/apache/logging/log4j/core/async/JCToolsBlockingQueueFactory$Idle;)V

    sput-object v0, Lorg/apache/logging/log4j/core/async/JCToolsBlockingQueueFactory$WaitStrategy;->PARK:Lorg/apache/logging/log4j/core/async/JCToolsBlockingQueueFactory$WaitStrategy;

    .line 155
    new-instance v0, Lorg/apache/logging/log4j/core/async/JCToolsBlockingQueueFactory$WaitStrategy;

    sget-object v1, Lorg/apache/logging/log4j/core/async/-$$Lambda$JCToolsBlockingQueueFactory$WaitStrategy$QuUCxpKWlpnCycsZ05V-KR8Lkh0;->INSTANCE:Lorg/apache/logging/log4j/core/async/-$$Lambda$JCToolsBlockingQueueFactory$WaitStrategy$QuUCxpKWlpnCycsZ05V-KR8Lkh0;

    const-string v2, "PROGRESSIVE"

    const/4 v6, 0x3

    invoke-direct {v0, v2, v6, v1}, Lorg/apache/logging/log4j/core/async/JCToolsBlockingQueueFactory$WaitStrategy;-><init>(Ljava/lang/String;ILorg/apache/logging/log4j/core/async/JCToolsBlockingQueueFactory$Idle;)V

    sput-object v0, Lorg/apache/logging/log4j/core/async/JCToolsBlockingQueueFactory$WaitStrategy;->PROGRESSIVE:Lorg/apache/logging/log4j/core/async/JCToolsBlockingQueueFactory$WaitStrategy;

    .line 145
    const/4 v1, 0x4

    new-array v1, v1, [Lorg/apache/logging/log4j/core/async/JCToolsBlockingQueueFactory$WaitStrategy;

    sget-object v2, Lorg/apache/logging/log4j/core/async/JCToolsBlockingQueueFactory$WaitStrategy;->SPIN:Lorg/apache/logging/log4j/core/async/JCToolsBlockingQueueFactory$WaitStrategy;

    aput-object v2, v1, v3

    sget-object v2, Lorg/apache/logging/log4j/core/async/JCToolsBlockingQueueFactory$WaitStrategy;->YIELD:Lorg/apache/logging/log4j/core/async/JCToolsBlockingQueueFactory$WaitStrategy;

    aput-object v2, v1, v4

    sget-object v2, Lorg/apache/logging/log4j/core/async/JCToolsBlockingQueueFactory$WaitStrategy;->PARK:Lorg/apache/logging/log4j/core/async/JCToolsBlockingQueueFactory$WaitStrategy;

    aput-object v2, v1, v5

    aput-object v0, v1, v6

    sput-object v1, Lorg/apache/logging/log4j/core/async/JCToolsBlockingQueueFactory$WaitStrategy;->$VALUES:[Lorg/apache/logging/log4j/core/async/JCToolsBlockingQueueFactory$WaitStrategy;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;ILorg/apache/logging/log4j/core/async/JCToolsBlockingQueueFactory$Idle;)V
    .locals 0
    .param p3, "idle"    # Lorg/apache/logging/log4j/core/async/JCToolsBlockingQueueFactory$Idle;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000,
            0x1000,
            0x10
        }
        names = {
            "$enum$name",
            "$enum$ordinal",
            "idle"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/apache/logging/log4j/core/async/JCToolsBlockingQueueFactory$Idle;",
            ")V"
        }
    .end annotation

    .line 170
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 171
    iput-object p3, p0, Lorg/apache/logging/log4j/core/async/JCToolsBlockingQueueFactory$WaitStrategy;->idle:Lorg/apache/logging/log4j/core/async/JCToolsBlockingQueueFactory$Idle;

    .line 172
    return-void
.end method

.method static synthetic access$000(Lorg/apache/logging/log4j/core/async/JCToolsBlockingQueueFactory$WaitStrategy;I)I
    .locals 1
    .param p0, "x0"    # Lorg/apache/logging/log4j/core/async/JCToolsBlockingQueueFactory$WaitStrategy;
    .param p1, "x1"    # I

    .line 145
    invoke-direct {p0, p1}, Lorg/apache/logging/log4j/core/async/JCToolsBlockingQueueFactory$WaitStrategy;->idle(I)I

    move-result v0

    return v0
.end method

.method private idle(I)I
    .locals 1
    .param p1, "idleCounter"    # I
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10
        }
        names = {
            "idleCounter"
        }
    .end annotation

    .line 167
    iget-object v0, p0, Lorg/apache/logging/log4j/core/async/JCToolsBlockingQueueFactory$WaitStrategy;->idle:Lorg/apache/logging/log4j/core/async/JCToolsBlockingQueueFactory$Idle;

    invoke-interface {v0, p1}, Lorg/apache/logging/log4j/core/async/JCToolsBlockingQueueFactory$Idle;->idle(I)I

    move-result v0

    return v0
.end method

.method static synthetic lambda$static$0(I)I
    .locals 1
    .param p0, "idleCounter"    # I
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000
        }
        names = {
            "idleCounter"
        }
    .end annotation

    .line 146
    add-int/lit8 v0, p0, 0x1

    return v0
.end method

.method static synthetic lambda$static$1(I)I
    .locals 1
    .param p0, "idleCounter"    # I
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000
        }
        names = {
            "idleCounter"
        }
    .end annotation

    .line 148
    invoke-static {}, Ljava/lang/Thread;->yield()V

    .line 149
    add-int/lit8 v0, p0, 0x1

    return v0
.end method

.method static synthetic lambda$static$2(I)I
    .locals 2
    .param p0, "idleCounter"    # I
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000
        }
        names = {
            "idleCounter"
        }
    .end annotation

    .line 152
    const-wide/16 v0, 0x1

    invoke-static {v0, v1}, Ljava/util/concurrent/locks/LockSupport;->parkNanos(J)V

    .line 153
    add-int/lit8 v0, p0, 0x1

    return v0
.end method

.method static synthetic lambda$static$3(I)I
    .locals 2
    .param p0, "idleCounter"    # I
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000
        }
        names = {
            "idleCounter"
        }
    .end annotation

    .line 156
    const/16 v0, 0xc8

    if-le p0, v0, :cond_0

    .line 157
    const-wide/16 v0, 0x1

    invoke-static {v0, v1}, Ljava/util/concurrent/locks/LockSupport;->parkNanos(J)V

    goto :goto_0

    .line 158
    :cond_0
    const/16 v0, 0x64

    if-le p0, v0, :cond_1

    .line 159
    invoke-static {}, Ljava/lang/Thread;->yield()V

    .line 161
    :cond_1
    :goto_0
    add-int/lit8 v0, p0, 0x1

    return v0
.end method

.method public static valueOf(Ljava/lang/String;)Lorg/apache/logging/log4j/core/async/JCToolsBlockingQueueFactory$WaitStrategy;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8000
        }
        names = {
            "name"
        }
    .end annotation

    .line 145
    const-class v0, Lorg/apache/logging/log4j/core/async/JCToolsBlockingQueueFactory$WaitStrategy;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lorg/apache/logging/log4j/core/async/JCToolsBlockingQueueFactory$WaitStrategy;

    return-object v0
.end method

.method public static values()[Lorg/apache/logging/log4j/core/async/JCToolsBlockingQueueFactory$WaitStrategy;
    .locals 1

    .line 145
    sget-object v0, Lorg/apache/logging/log4j/core/async/JCToolsBlockingQueueFactory$WaitStrategy;->$VALUES:[Lorg/apache/logging/log4j/core/async/JCToolsBlockingQueueFactory$WaitStrategy;

    invoke-virtual {v0}, [Lorg/apache/logging/log4j/core/async/JCToolsBlockingQueueFactory$WaitStrategy;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lorg/apache/logging/log4j/core/async/JCToolsBlockingQueueFactory$WaitStrategy;

    return-object v0
.end method
