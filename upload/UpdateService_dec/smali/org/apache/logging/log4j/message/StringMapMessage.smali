.class public Lorg/apache/logging/log4j/message/StringMapMessage;
.super Lorg/apache/logging/log4j/message/MapMessage;
.source "StringMapMessage.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lorg/apache/logging/log4j/message/MapMessage<",
        "Lorg/apache/logging/log4j/message/StringMapMessage;",
        "Ljava/lang/String;",
        ">;"
    }
.end annotation

.annotation runtime Lorg/apache/logging/log4j/message/AsynchronouslyFormattable;
.end annotation


# static fields
.field private static final serialVersionUID:J = 0x1L


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 38
    invoke-direct {p0}, Lorg/apache/logging/log4j/message/MapMessage;-><init>()V

    .line 39
    return-void
.end method

.method public constructor <init>(I)V
    .locals 0
    .param p1, "initialCapacity"    # I
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10
        }
        names = {
            "initialCapacity"
        }
    .end annotation

    .line 48
    invoke-direct {p0, p1}, Lorg/apache/logging/log4j/message/MapMessage;-><init>(I)V

    .line 49
    return-void
.end method

.method public constructor <init>(Ljava/util/Map;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10
        }
        names = {
            "map"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 58
    .local p1, "map":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    invoke-direct {p0, p1}, Lorg/apache/logging/log4j/message/MapMessage;-><init>(Ljava/util/Map;)V

    .line 59
    return-void
.end method


# virtual methods
.method public bridge synthetic newInstance(Ljava/util/Map;)Lorg/apache/logging/log4j/message/MapMessage;
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1010
        }
        names = {
            "map"
        }
    .end annotation

    .line 29
    invoke-virtual {p0, p1}, Lorg/apache/logging/log4j/message/StringMapMessage;->newInstance(Ljava/util/Map;)Lorg/apache/logging/log4j/message/StringMapMessage;

    move-result-object p1

    return-object p1
.end method

.method public newInstance(Ljava/util/Map;)Lorg/apache/logging/log4j/message/StringMapMessage;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10
        }
        names = {
            "map"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)",
            "Lorg/apache/logging/log4j/message/StringMapMessage;"
        }
    .end annotation

    .line 68
    .local p1, "map":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    new-instance v0, Lorg/apache/logging/log4j/message/StringMapMessage;

    invoke-direct {v0, p1}, Lorg/apache/logging/log4j/message/StringMapMessage;-><init>(Ljava/util/Map;)V

    return-object v0
.end method
