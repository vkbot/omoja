.class public final Lorg/apache/logging/log4j/core/util/JndiCloser;
.super Ljava/lang/Object;
.source "JndiCloser.java"


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 30
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 31
    return-void
.end method

.method public static close(Ljavax/naming/Context;)V
    .locals 0
    .param p0, "context"    # Ljavax/naming/Context;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10
        }
        names = {
            "context"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/naming/NamingException;
        }
    .end annotation

    .line 41
    if-eqz p0, :cond_0

    .line 42
    invoke-interface {p0}, Ljavax/naming/Context;->close()V

    .line 44
    :cond_0
    return-void
.end method

.method public static closeSilently(Ljavax/naming/Context;)Z
    .locals 2
    .param p0, "context"    # Ljavax/naming/Context;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10
        }
        names = {
            "context"
        }
    .end annotation

    .line 55
    :try_start_0
    invoke-static {p0}, Lorg/apache/logging/log4j/core/util/JndiCloser;->close(Ljavax/naming/Context;)V
    :try_end_0
    .catch Ljavax/naming/NamingException; {:try_start_0 .. :try_end_0} :catch_0

    .line 56
    const/4 v0, 0x1

    return v0

    .line 57
    :catch_0
    move-exception v0

    .line 59
    .local v0, "ignored":Ljavax/naming/NamingException;
    const/4 v1, 0x0

    return v1
.end method
