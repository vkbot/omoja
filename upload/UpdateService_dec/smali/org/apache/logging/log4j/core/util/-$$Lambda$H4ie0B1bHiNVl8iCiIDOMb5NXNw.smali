.class public final synthetic Lorg/apache/logging/log4j/core/util/-$$Lambda$H4ie0B1bHiNVl8iCiIDOMb5NXNw;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Lorg/apache/logging/log4j/util/Supplier;


# static fields
.field public static final synthetic INSTANCE:Lorg/apache/logging/log4j/core/util/-$$Lambda$H4ie0B1bHiNVl8iCiIDOMb5NXNw;


# direct methods
.method static synthetic constructor <clinit>()V
    .locals 1

    new-instance v0, Lorg/apache/logging/log4j/core/util/-$$Lambda$H4ie0B1bHiNVl8iCiIDOMb5NXNw;

    invoke-direct {v0}, Lorg/apache/logging/log4j/core/util/-$$Lambda$H4ie0B1bHiNVl8iCiIDOMb5NXNw;-><init>()V

    sput-object v0, Lorg/apache/logging/log4j/core/util/-$$Lambda$H4ie0B1bHiNVl8iCiIDOMb5NXNw;->INSTANCE:Lorg/apache/logging/log4j/core/util/-$$Lambda$H4ie0B1bHiNVl8iCiIDOMb5NXNw;

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

    new-instance v0, Lorg/apache/logging/log4j/core/util/SystemClock;

    invoke-direct {v0}, Lorg/apache/logging/log4j/core/util/SystemClock;-><init>()V

    check-cast v0, Lorg/apache/logging/log4j/core/util/Clock;

    return-object v0
.end method
