.class public final synthetic Lorg/apache/logging/log4j/core/util/-$$Lambda$jtcmVMmQs1qXecROhWbH0t8MfaQ;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Lorg/apache/logging/log4j/util/Supplier;


# static fields
.field public static final synthetic INSTANCE:Lorg/apache/logging/log4j/core/util/-$$Lambda$jtcmVMmQs1qXecROhWbH0t8MfaQ;


# direct methods
.method static synthetic constructor <clinit>()V
    .locals 1

    new-instance v0, Lorg/apache/logging/log4j/core/util/-$$Lambda$jtcmVMmQs1qXecROhWbH0t8MfaQ;

    invoke-direct {v0}, Lorg/apache/logging/log4j/core/util/-$$Lambda$jtcmVMmQs1qXecROhWbH0t8MfaQ;-><init>()V

    sput-object v0, Lorg/apache/logging/log4j/core/util/-$$Lambda$jtcmVMmQs1qXecROhWbH0t8MfaQ;->INSTANCE:Lorg/apache/logging/log4j/core/util/-$$Lambda$jtcmVMmQs1qXecROhWbH0t8MfaQ;

    return-void
.end method

.method private synthetic constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final get()Ljava/lang/Object;
    .locals 1

    invoke-static {}, Lorg/apache/logging/log4j/core/util/CoarseCachedClock;->instance()Lorg/apache/logging/log4j/core/util/CoarseCachedClock;

    move-result-object v0

    check-cast v0, Lorg/apache/logging/log4j/core/util/Clock;

    return-object v0
.end method
