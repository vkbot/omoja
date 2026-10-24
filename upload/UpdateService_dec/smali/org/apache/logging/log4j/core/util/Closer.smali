.class public final Lorg/apache/logging/log4j/core/util/Closer;
.super Ljava/lang/Object;
.source "Closer.java"


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 27
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 29
    return-void
.end method

.method public static close(Ljava/lang/AutoCloseable;)Z
    .locals 3
    .param p0, "closeable"    # Ljava/lang/AutoCloseable;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10
        }
        names = {
            "closeable"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 41
    if-eqz p0, :cond_0

    .line 42
    invoke-static {}, Lorg/apache/logging/log4j/status/StatusLogger;->getLogger()Lorg/apache/logging/log4j/status/StatusLogger;

    move-result-object v0

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    const-string v2, "Closing {} {}"

    invoke-virtual {v0, v2, v1, p0}, Lorg/apache/logging/log4j/status/StatusLogger;->debug(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 43
    invoke-interface {p0}, Ljava/lang/AutoCloseable;->close()V

    .line 44
    const/4 v0, 0x1

    return v0

    .line 46
    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public static closeSilently(Ljava/lang/AutoCloseable;)Z
    .locals 2
    .param p0, "closeable"    # Ljava/lang/AutoCloseable;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10
        }
        names = {
            "closeable"
        }
    .end annotation

    .line 57
    :try_start_0
    invoke-static {p0}, Lorg/apache/logging/log4j/core/util/Closer;->close(Ljava/lang/AutoCloseable;)Z

    move-result v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    .line 58
    :catch_0
    move-exception v0

    .line 59
    .local v0, "ignored":Ljava/lang/Exception;
    const/4 v1, 0x0

    return v1
.end method
