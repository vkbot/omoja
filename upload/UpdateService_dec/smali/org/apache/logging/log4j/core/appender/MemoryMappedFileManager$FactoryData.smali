.class Lorg/apache/logging/log4j/core/appender/MemoryMappedFileManager$FactoryData;
.super Ljava/lang/Object;
.source "MemoryMappedFileManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/apache/logging/log4j/core/appender/MemoryMappedFileManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "FactoryData"
.end annotation


# instance fields
.field private final advertiseURI:Ljava/lang/String;

.field private final append:Z

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

.field private final regionLength:I


# direct methods
.method public constructor <init>(ZZILjava/lang/String;Lorg/apache/logging/log4j/core/Layout;)V
    .locals 0
    .param p1, "append"    # Z
    .param p2, "immediateFlush"    # Z
    .param p3, "regionLength"    # I
    .param p4, "advertiseURI"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10,
            0x10,
            0x10,
            0x10,
            0x10
        }
        names = {
            "append",
            "immediateFlush",
            "regionLength",
            "advertiseURI",
            "layout"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(ZZI",
            "Ljava/lang/String;",
            "Lorg/apache/logging/log4j/core/Layout<",
            "+",
            "Ljava/io/Serializable;",
            ">;)V"
        }
    .end annotation

    .line 317
    .local p5, "layout":Lorg/apache/logging/log4j/core/Layout;, "Lorg/apache/logging/log4j/core/Layout<+Ljava/io/Serializable;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 318
    iput-boolean p1, p0, Lorg/apache/logging/log4j/core/appender/MemoryMappedFileManager$FactoryData;->append:Z

    .line 319
    iput-boolean p2, p0, Lorg/apache/logging/log4j/core/appender/MemoryMappedFileManager$FactoryData;->immediateFlush:Z

    .line 320
    iput p3, p0, Lorg/apache/logging/log4j/core/appender/MemoryMappedFileManager$FactoryData;->regionLength:I

    .line 321
    iput-object p4, p0, Lorg/apache/logging/log4j/core/appender/MemoryMappedFileManager$FactoryData;->advertiseURI:Ljava/lang/String;

    .line 322
    iput-object p5, p0, Lorg/apache/logging/log4j/core/appender/MemoryMappedFileManager$FactoryData;->layout:Lorg/apache/logging/log4j/core/Layout;

    .line 323
    return-void
.end method

.method static synthetic access$100(Lorg/apache/logging/log4j/core/appender/MemoryMappedFileManager$FactoryData;)Z
    .locals 1
    .param p0, "x0"    # Lorg/apache/logging/log4j/core/appender/MemoryMappedFileManager$FactoryData;

    .line 300
    iget-boolean v0, p0, Lorg/apache/logging/log4j/core/appender/MemoryMappedFileManager$FactoryData;->append:Z

    return v0
.end method

.method static synthetic access$200(Lorg/apache/logging/log4j/core/appender/MemoryMappedFileManager$FactoryData;)I
    .locals 1
    .param p0, "x0"    # Lorg/apache/logging/log4j/core/appender/MemoryMappedFileManager$FactoryData;

    .line 300
    iget v0, p0, Lorg/apache/logging/log4j/core/appender/MemoryMappedFileManager$FactoryData;->regionLength:I

    return v0
.end method

.method static synthetic access$300(Lorg/apache/logging/log4j/core/appender/MemoryMappedFileManager$FactoryData;)Z
    .locals 1
    .param p0, "x0"    # Lorg/apache/logging/log4j/core/appender/MemoryMappedFileManager$FactoryData;

    .line 300
    iget-boolean v0, p0, Lorg/apache/logging/log4j/core/appender/MemoryMappedFileManager$FactoryData;->immediateFlush:Z

    return v0
.end method

.method static synthetic access$400(Lorg/apache/logging/log4j/core/appender/MemoryMappedFileManager$FactoryData;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lorg/apache/logging/log4j/core/appender/MemoryMappedFileManager$FactoryData;

    .line 300
    iget-object v0, p0, Lorg/apache/logging/log4j/core/appender/MemoryMappedFileManager$FactoryData;->advertiseURI:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$500(Lorg/apache/logging/log4j/core/appender/MemoryMappedFileManager$FactoryData;)Lorg/apache/logging/log4j/core/Layout;
    .locals 1
    .param p0, "x0"    # Lorg/apache/logging/log4j/core/appender/MemoryMappedFileManager$FactoryData;

    .line 300
    iget-object v0, p0, Lorg/apache/logging/log4j/core/appender/MemoryMappedFileManager$FactoryData;->layout:Lorg/apache/logging/log4j/core/Layout;

    return-object v0
.end method
