.class public Lorg/apache/logging/log4j/core/selector/CoreContextSelectors;
.super Ljava/lang/Object;
.source "CoreContextSelectors.java"


# static fields
.field public static final CLASSES:[Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "[",
            "Ljava/lang/Class<",
            "*>;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 24
    const/4 v0, 0x4

    new-array v0, v0, [Ljava/lang/Class;

    const/4 v1, 0x0

    const-class v2, Lorg/apache/logging/log4j/core/selector/ClassLoaderContextSelector;

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-class v2, Lorg/apache/logging/log4j/core/selector/BasicContextSelector;

    aput-object v2, v0, v1

    const/4 v1, 0x2

    const-class v2, Lorg/apache/logging/log4j/core/async/AsyncLoggerContextSelector;

    aput-object v2, v0, v1

    const/4 v1, 0x3

    const-class v2, Lorg/apache/logging/log4j/core/async/BasicAsyncLoggerContextSelector;

    aput-object v2, v0, v1

    sput-object v0, Lorg/apache/logging/log4j/core/selector/CoreContextSelectors;->CLASSES:[Ljava/lang/Class;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 22
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
