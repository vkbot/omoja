.class public final synthetic Lorg/apache/logging/log4j/core/async/-$$Lambda$JCToolsBlockingQueueFactory$WaitStrategy$_gVbgwB37Cn7SlpXdoWZ4xNxYRs;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Lorg/apache/logging/log4j/core/async/JCToolsBlockingQueueFactory$Idle;


# static fields
.field public static final synthetic INSTANCE:Lorg/apache/logging/log4j/core/async/-$$Lambda$JCToolsBlockingQueueFactory$WaitStrategy$_gVbgwB37Cn7SlpXdoWZ4xNxYRs;


# direct methods
.method static synthetic constructor <clinit>()V
    .locals 1

    new-instance v0, Lorg/apache/logging/log4j/core/async/-$$Lambda$JCToolsBlockingQueueFactory$WaitStrategy$_gVbgwB37Cn7SlpXdoWZ4xNxYRs;

    invoke-direct {v0}, Lorg/apache/logging/log4j/core/async/-$$Lambda$JCToolsBlockingQueueFactory$WaitStrategy$_gVbgwB37Cn7SlpXdoWZ4xNxYRs;-><init>()V

    sput-object v0, Lorg/apache/logging/log4j/core/async/-$$Lambda$JCToolsBlockingQueueFactory$WaitStrategy$_gVbgwB37Cn7SlpXdoWZ4xNxYRs;->INSTANCE:Lorg/apache/logging/log4j/core/async/-$$Lambda$JCToolsBlockingQueueFactory$WaitStrategy$_gVbgwB37Cn7SlpXdoWZ4xNxYRs;

    return-void
.end method

.method private synthetic constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final idle(I)I
    .locals 0

    invoke-static {p1}, Lorg/apache/logging/log4j/core/async/JCToolsBlockingQueueFactory$WaitStrategy;->lambda$static$2(I)I

    move-result p1

    return p1
.end method
