.class Lorg/apache/logging/log4j/core/net/DatagramSocketManager$FactoryData;
.super Ljava/lang/Object;
.source "DatagramSocketManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/apache/logging/log4j/core/net/DatagramSocketManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "FactoryData"
.end annotation


# instance fields
.field private final bufferSize:I

.field private final host:Ljava/lang/String;

.field private final layout:Lorg/apache/logging/log4j/core/Layout;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/apache/logging/log4j/core/Layout<",
            "+",
            "Ljava/io/Serializable;",
            ">;"
        }
    .end annotation
.end field

.field private final port:I


# direct methods
.method public constructor <init>(Ljava/lang/String;ILorg/apache/logging/log4j/core/Layout;I)V
    .locals 0
    .param p1, "host"    # Ljava/lang/String;
    .param p2, "port"    # I
    .param p4, "bufferSize"    # I
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10,
            0x10,
            0x10,
            0x10
        }
        names = {
            "host",
            "port",
            "layout",
            "bufferSize"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "I",
            "Lorg/apache/logging/log4j/core/Layout<",
            "+",
            "Ljava/io/Serializable;",
            ">;I)V"
        }
    .end annotation

    .line 98
    .local p3, "layout":Lorg/apache/logging/log4j/core/Layout;, "Lorg/apache/logging/log4j/core/Layout<+Ljava/io/Serializable;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 99
    iput-object p1, p0, Lorg/apache/logging/log4j/core/net/DatagramSocketManager$FactoryData;->host:Ljava/lang/String;

    .line 100
    iput p2, p0, Lorg/apache/logging/log4j/core/net/DatagramSocketManager$FactoryData;->port:I

    .line 101
    iput-object p3, p0, Lorg/apache/logging/log4j/core/net/DatagramSocketManager$FactoryData;->layout:Lorg/apache/logging/log4j/core/Layout;

    .line 102
    iput p4, p0, Lorg/apache/logging/log4j/core/net/DatagramSocketManager$FactoryData;->bufferSize:I

    .line 103
    return-void
.end method

.method static synthetic access$100(Lorg/apache/logging/log4j/core/net/DatagramSocketManager$FactoryData;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lorg/apache/logging/log4j/core/net/DatagramSocketManager$FactoryData;

    .line 92
    iget-object v0, p0, Lorg/apache/logging/log4j/core/net/DatagramSocketManager$FactoryData;->host:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$300(Lorg/apache/logging/log4j/core/net/DatagramSocketManager$FactoryData;)I
    .locals 1
    .param p0, "x0"    # Lorg/apache/logging/log4j/core/net/DatagramSocketManager$FactoryData;

    .line 92
    iget v0, p0, Lorg/apache/logging/log4j/core/net/DatagramSocketManager$FactoryData;->port:I

    return v0
.end method

.method static synthetic access$400(Lorg/apache/logging/log4j/core/net/DatagramSocketManager$FactoryData;)Lorg/apache/logging/log4j/core/Layout;
    .locals 1
    .param p0, "x0"    # Lorg/apache/logging/log4j/core/net/DatagramSocketManager$FactoryData;

    .line 92
    iget-object v0, p0, Lorg/apache/logging/log4j/core/net/DatagramSocketManager$FactoryData;->layout:Lorg/apache/logging/log4j/core/Layout;

    return-object v0
.end method

.method static synthetic access$500(Lorg/apache/logging/log4j/core/net/DatagramSocketManager$FactoryData;)I
    .locals 1
    .param p0, "x0"    # Lorg/apache/logging/log4j/core/net/DatagramSocketManager$FactoryData;

    .line 92
    iget v0, p0, Lorg/apache/logging/log4j/core/net/DatagramSocketManager$FactoryData;->bufferSize:I

    return v0
.end method
