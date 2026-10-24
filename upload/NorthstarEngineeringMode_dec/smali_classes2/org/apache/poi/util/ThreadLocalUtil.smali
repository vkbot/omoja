.class public Lorg/apache/poi/util/ThreadLocalUtil;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static final registeredCleaners:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/Runnable;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lorg/apache/poi/util/ThreadLocalUtil;->registeredCleaners:Ljava/util/List;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static clearAllThreadLocals()V
    .locals 3

    sget-object v0, Lorg/apache/poi/util/ThreadLocalUtil;->registeredCleaners:Ljava/util/List;

    new-instance v1, Lw0/b;

    const/4 v2, 0x3

    invoke-direct {v1, v2}, Lw0/b;-><init>(I)V

    invoke-interface {v0, v1}, Ljava/lang/Iterable;->forEach(Ljava/util/function/Consumer;)V

    return-void
.end method

.method public static registerCleaner(Ljava/lang/Runnable;)V
    .locals 1
    .annotation runtime Lorg/apache/poi/util/Internal;
    .end annotation

    sget-object v0, Lorg/apache/poi/util/ThreadLocalUtil;->registeredCleaners:Ljava/util/List;

    invoke-interface {v0, p0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method
