.class Lorg/apache/logging/log4j/core/appender/RandomAccessFileManager$FactoryData;
.super Lorg/apache/logging/log4j/core/appender/ConfigurationFactoryData;
.source "RandomAccessFileManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/apache/logging/log4j/core/appender/RandomAccessFileManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "FactoryData"
.end annotation


# instance fields
.field private final advertiseURI:Ljava/lang/String;

.field private final append:Z

.field private final bufferSize:I

.field private final immediateFlush:Z

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


# direct methods
.method public constructor <init>(ZZILjava/lang/String;Lorg/apache/logging/log4j/core/Layout;Lorg/apache/logging/log4j/core/config/Configuration;)V
    .locals 0
    .param p1, "append"    # Z
    .param p2, "immediateFlush"    # Z
    .param p3, "bufferSize"    # I
    .param p4, "advertiseURI"    # Ljava/lang/String;
    .param p6, "configuration"    # Lorg/apache/logging/log4j/core/config/Configuration;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10,
            0x10,
            0x10,
            0x10,
            0x10,
            0x10
        }
        names = {
            "append",
            "immediateFlush",
            "bufferSize",
            "advertiseURI",
            "layout",
            "configuration"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(ZZI",
            "Ljava/lang/String;",
            "Lorg/apache/logging/log4j/core/Layout<",
            "+",
            "Ljava/io/Serializable;",
            ">;",
            "Lorg/apache/logging/log4j/core/config/Configuration;",
            ")V"
        }
    .end annotation

    .line 174
    .local p5, "layout":Lorg/apache/logging/log4j/core/Layout;, "Lorg/apache/logging/log4j/core/Layout<+Ljava/io/Serializable;>;"
    invoke-direct {p0, p6}, Lorg/apache/logging/log4j/core/appender/ConfigurationFactoryData;-><init>(Lorg/apache/logging/log4j/core/config/Configuration;)V

    .line 175
    iput-boolean p1, p0, Lorg/apache/logging/log4j/core/appender/RandomAccessFileManager$FactoryData;->append:Z

    .line 176
    iput-boolean p2, p0, Lorg/apache/logging/log4j/core/appender/RandomAccessFileManager$FactoryData;->immediateFlush:Z

    .line 177
    iput p3, p0, Lorg/apache/logging/log4j/core/appender/RandomAccessFileManager$FactoryData;->bufferSize:I

    .line 178
    iput-object p4, p0, Lorg/apache/logging/log4j/core/appender/RandomAccessFileManager$FactoryData;->advertiseURI:Ljava/lang/String;

    .line 179
    iput-object p5, p0, Lorg/apache/logging/log4j/core/appender/RandomAccessFileManager$FactoryData;->layout:Lorg/apache/logging/log4j/core/Layout;

    .line 180
    return-void
.end method

.method static synthetic access$100(Lorg/apache/logging/log4j/core/appender/RandomAccessFileManager$FactoryData;)Z
    .locals 1
    .param p0, "x0"    # Lorg/apache/logging/log4j/core/appender/RandomAccessFileManager$FactoryData;

    .line 158
    iget-boolean v0, p0, Lorg/apache/logging/log4j/core/appender/RandomAccessFileManager$FactoryData;->append:Z

    return v0
.end method

.method static synthetic access$200(Lorg/apache/logging/log4j/core/appender/RandomAccessFileManager$FactoryData;)I
    .locals 1
    .param p0, "x0"    # Lorg/apache/logging/log4j/core/appender/RandomAccessFileManager$FactoryData;

    .line 158
    iget v0, p0, Lorg/apache/logging/log4j/core/appender/RandomAccessFileManager$FactoryData;->bufferSize:I

    return v0
.end method

.method static synthetic access$300(Lorg/apache/logging/log4j/core/appender/RandomAccessFileManager$FactoryData;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lorg/apache/logging/log4j/core/appender/RandomAccessFileManager$FactoryData;

    .line 158
    iget-object v0, p0, Lorg/apache/logging/log4j/core/appender/RandomAccessFileManager$FactoryData;->advertiseURI:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$400(Lorg/apache/logging/log4j/core/appender/RandomAccessFileManager$FactoryData;)Lorg/apache/logging/log4j/core/Layout;
    .locals 1
    .param p0, "x0"    # Lorg/apache/logging/log4j/core/appender/RandomAccessFileManager$FactoryData;

    .line 158
    iget-object v0, p0, Lorg/apache/logging/log4j/core/appender/RandomAccessFileManager$FactoryData;->layout:Lorg/apache/logging/log4j/core/Layout;

    return-object v0
.end method
