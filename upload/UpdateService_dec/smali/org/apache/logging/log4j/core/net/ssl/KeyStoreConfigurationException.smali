.class public Lorg/apache/logging/log4j/core/net/ssl/KeyStoreConfigurationException;
.super Lorg/apache/logging/log4j/core/net/ssl/StoreConfigurationException;
.source "KeyStoreConfigurationException.java"


# static fields
.field private static final serialVersionUID:J = 0x1L


# direct methods
.method public constructor <init>(Ljava/lang/Exception;)V
    .locals 0
    .param p1, "e"    # Ljava/lang/Exception;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10
        }
        names = {
            "e"
        }
    .end annotation

    .line 26
    invoke-direct {p0, p1}, Lorg/apache/logging/log4j/core/net/ssl/StoreConfigurationException;-><init>(Ljava/lang/Exception;)V

    .line 27
    return-void
.end method
