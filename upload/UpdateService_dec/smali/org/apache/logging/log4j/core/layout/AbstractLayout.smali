.class public abstract Lorg/apache/logging/log4j/core/layout/AbstractLayout;
.super Ljava/lang/Object;
.source "AbstractLayout.java"

# interfaces
.implements Lorg/apache/logging/log4j/core/Layout;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/apache/logging/log4j/core/layout/AbstractLayout$Builder;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T::",
        "Ljava/io/Serializable;",
        ">",
        "Ljava/lang/Object;",
        "Lorg/apache/logging/log4j/core/Layout<",
        "TT;>;"
    }
.end annotation


# static fields
.field protected static final LOGGER:Lorg/apache/logging/log4j/Logger;


# instance fields
.field protected final configuration:Lorg/apache/logging/log4j/core/config/Configuration;

.field protected eventCount:J

.field protected final footer:[B

.field protected final header:[B


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 92
    invoke-static {}, Lorg/apache/logging/log4j/status/StatusLogger;->getLogger()Lorg/apache/logging/log4j/status/StatusLogger;

    move-result-object v0

    sput-object v0, Lorg/apache/logging/log4j/core/layout/AbstractLayout;->LOGGER:Lorg/apache/logging/log4j/Logger;

    return-void
.end method

.method public constructor <init>(Lorg/apache/logging/log4j/core/config/Configuration;[B[B)V
    .locals 0
    .param p1, "configuration"    # Lorg/apache/logging/log4j/core/config/Configuration;
    .param p2, "header"    # [B
    .param p3, "footer"    # [B
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10,
            0x10,
            0x10
        }
        names = {
            "configuration",
            "header",
            "footer"
        }
    .end annotation

    .line 138
    .local p0, "this":Lorg/apache/logging/log4j/core/layout/AbstractLayout;, "Lorg/apache/logging/log4j/core/layout/AbstractLayout<TT;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 139
    iput-object p1, p0, Lorg/apache/logging/log4j/core/layout/AbstractLayout;->configuration:Lorg/apache/logging/log4j/core/config/Configuration;

    .line 140
    iput-object p2, p0, Lorg/apache/logging/log4j/core/layout/AbstractLayout;->header:[B

    .line 141
    iput-object p3, p0, Lorg/apache/logging/log4j/core/layout/AbstractLayout;->footer:[B

    .line 142
    return-void
.end method

.method public constructor <init>([B[B)V
    .locals 1
    .param p1, "header"    # [B
    .param p2, "footer"    # [B
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10,
            0x10
        }
        names = {
            "header",
            "footer"
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 125
    .local p0, "this":Lorg/apache/logging/log4j/core/layout/AbstractLayout;, "Lorg/apache/logging/log4j/core/layout/AbstractLayout<TT;>;"
    const/4 v0, 0x0

    invoke-direct {p0, v0, p1, p2}, Lorg/apache/logging/log4j/core/layout/AbstractLayout;-><init>(Lorg/apache/logging/log4j/core/config/Configuration;[B[B)V

    .line 126
    return-void
.end method


# virtual methods
.method public bridge synthetic encode(Ljava/lang/Object;Lorg/apache/logging/log4j/core/layout/ByteBufferDestination;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1010,
            0x1010
        }
        names = {
            "event",
            "destination"
        }
    .end annotation

    .line 37
    .local p0, "this":Lorg/apache/logging/log4j/core/layout/AbstractLayout;, "Lorg/apache/logging/log4j/core/layout/AbstractLayout<TT;>;"
    check-cast p1, Lorg/apache/logging/log4j/core/LogEvent;

    invoke-virtual {p0, p1, p2}, Lorg/apache/logging/log4j/core/layout/AbstractLayout;->encode(Lorg/apache/logging/log4j/core/LogEvent;Lorg/apache/logging/log4j/core/layout/ByteBufferDestination;)V

    return-void
.end method

.method public encode(Lorg/apache/logging/log4j/core/LogEvent;Lorg/apache/logging/log4j/core/layout/ByteBufferDestination;)V
    .locals 3
    .param p1, "event"    # Lorg/apache/logging/log4j/core/LogEvent;
    .param p2, "destination"    # Lorg/apache/logging/log4j/core/layout/ByteBufferDestination;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10,
            0x10
        }
        names = {
            "event",
            "destination"
        }
    .end annotation

    .line 209
    .local p0, "this":Lorg/apache/logging/log4j/core/layout/AbstractLayout;, "Lorg/apache/logging/log4j/core/layout/AbstractLayout<TT;>;"
    invoke-virtual {p0, p1}, Lorg/apache/logging/log4j/core/layout/AbstractLayout;->toByteArray(Lorg/apache/logging/log4j/core/LogEvent;)[B

    move-result-object v0

    .line 210
    .local v0, "data":[B
    array-length v1, v0

    const/4 v2, 0x0

    invoke-interface {p2, v0, v2, v1}, Lorg/apache/logging/log4j/core/layout/ByteBufferDestination;->writeBytes([BII)V

    .line 211
    return-void
.end method

.method public getConfiguration()Lorg/apache/logging/log4j/core/config/Configuration;
    .locals 1

    .line 145
    .local p0, "this":Lorg/apache/logging/log4j/core/layout/AbstractLayout;, "Lorg/apache/logging/log4j/core/layout/AbstractLayout<TT;>;"
    iget-object v0, p0, Lorg/apache/logging/log4j/core/layout/AbstractLayout;->configuration:Lorg/apache/logging/log4j/core/config/Configuration;

    return-object v0
.end method

.method public getContentFormat()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 150
    .local p0, "this":Lorg/apache/logging/log4j/core/layout/AbstractLayout;, "Lorg/apache/logging/log4j/core/layout/AbstractLayout<TT;>;"
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    return-object v0
.end method

.method public getFooter()[B
    .locals 1

    .line 160
    .local p0, "this":Lorg/apache/logging/log4j/core/layout/AbstractLayout;, "Lorg/apache/logging/log4j/core/layout/AbstractLayout<TT;>;"
    iget-object v0, p0, Lorg/apache/logging/log4j/core/layout/AbstractLayout;->footer:[B

    return-object v0
.end method

.method public getHeader()[B
    .locals 1

    .line 170
    .local p0, "this":Lorg/apache/logging/log4j/core/layout/AbstractLayout;, "Lorg/apache/logging/log4j/core/layout/AbstractLayout<TT;>;"
    iget-object v0, p0, Lorg/apache/logging/log4j/core/layout/AbstractLayout;->header:[B

    return-object v0
.end method

.method protected markEvent()V
    .locals 4

    .line 174
    .local p0, "this":Lorg/apache/logging/log4j/core/layout/AbstractLayout;, "Lorg/apache/logging/log4j/core/layout/AbstractLayout<TT;>;"
    iget-wide v0, p0, Lorg/apache/logging/log4j/core/layout/AbstractLayout;->eventCount:J

    const-wide/16 v2, 0x1

    add-long/2addr v0, v2

    iput-wide v0, p0, Lorg/apache/logging/log4j/core/layout/AbstractLayout;->eventCount:J

    .line 175
    return-void
.end method
