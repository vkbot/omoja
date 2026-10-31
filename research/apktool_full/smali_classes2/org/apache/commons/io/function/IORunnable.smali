.class public interface abstract Lorg/apache/commons/io/function/IORunnable;
.super Ljava/lang/Object;
.source "r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75"


# annotations
.annotation runtime Ljava/lang/FunctionalInterface;
.end annotation


# direct methods
.method public static synthetic a(Lorg/apache/commons/io/function/IORunnable;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lorg/apache/commons/io/function/IORunnable;->lambda$asRunnable$0()V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method private synthetic lambda$asRunnable$0()V
    .locals 0

    .line 1
    invoke-static {p0}, Lorg/apache/commons/io/function/Uncheck;->run(Lorg/apache/commons/io/function/IORunnable;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static noop()Lorg/apache/commons/io/function/IORunnable;
    .locals 1

    .line 1
    sget-object v0, Lorg/apache/commons/io/function/Constants;->IO_RUNNABLE:Lorg/apache/commons/io/function/IORunnable;

    .line 2
    .line 3
    return-object v0
.end method


# virtual methods
.method public asRunnable()Ljava/lang/Runnable;
    .locals 2

    .line 1
    new-instance v0, Lorg/apache/commons/io/function/d;

    .line 2
    .line 3
    const/4 v1, 0x1

    .line 4
    invoke-direct {v0, p0, v1}, Lorg/apache/commons/io/function/d;-><init>(Lorg/apache/commons/io/function/IORunnable;I)V

    .line 5
    .line 6
    .line 7
    return-object v0
.end method

.method public abstract run()V
.end method
