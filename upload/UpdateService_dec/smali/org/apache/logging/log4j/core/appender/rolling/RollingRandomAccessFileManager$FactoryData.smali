.class Lorg/apache/logging/log4j/core/appender/rolling/RollingRandomAccessFileManager$FactoryData;
.super Lorg/apache/logging/log4j/core/appender/ConfigurationFactoryData;
.source "RollingRandomAccessFileManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/apache/logging/log4j/core/appender/rolling/RollingRandomAccessFileManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "FactoryData"
.end annotation


# instance fields
.field private final advertiseURI:Ljava/lang/String;

.field private final append:Z

.field private final bufferSize:I

.field private final fileGroup:Ljava/lang/String;

.field private final fileName:Ljava/lang/String;

.field private final fileOwner:Ljava/lang/String;

.field private final filePermissions:Ljava/lang/String;

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

.field private final pattern:Ljava/lang/String;

.field private final policy:Lorg/apache/logging/log4j/core/appender/rolling/TriggeringPolicy;

.field private final strategy:Lorg/apache/logging/log4j/core/appender/rolling/RolloverStrategy;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;ZZILorg/apache/logging/log4j/core/appender/rolling/TriggeringPolicy;Lorg/apache/logging/log4j/core/appender/rolling/RolloverStrategy;Ljava/lang/String;Lorg/apache/logging/log4j/core/Layout;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lorg/apache/logging/log4j/core/config/Configuration;)V
    .locals 0
    .param p1, "fileName"    # Ljava/lang/String;
    .param p2, "pattern"    # Ljava/lang/String;
    .param p3, "append"    # Z
    .param p4, "immediateFlush"    # Z
    .param p5, "bufferSize"    # I
    .param p6, "policy"    # Lorg/apache/logging/log4j/core/appender/rolling/TriggeringPolicy;
    .param p7, "strategy"    # Lorg/apache/logging/log4j/core/appender/rolling/RolloverStrategy;
    .param p8, "advertiseURI"    # Ljava/lang/String;
    .param p10, "filePermissions"    # Ljava/lang/String;
    .param p11, "fileOwner"    # Ljava/lang/String;
    .param p12, "fileGroup"    # Ljava/lang/String;
    .param p13, "configuration"    # Lorg/apache/logging/log4j/core/config/Configuration;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10,
            0x10,
            0x10,
            0x10,
            0x10,
            0x10,
            0x10,
            0x10,
            0x10,
            0x10,
            0x10,
            0x10,
            0x10
        }
        names = {
            "fileName",
            "pattern",
            "append",
            "immediateFlush",
            "bufferSize",
            "policy",
            "strategy",
            "advertiseURI",
            "layout",
            "filePermissions",
            "fileOwner",
            "fileGroup",
            "configuration"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "ZZI",
            "Lorg/apache/logging/log4j/core/appender/rolling/TriggeringPolicy;",
            "Lorg/apache/logging/log4j/core/appender/rolling/RolloverStrategy;",
            "Ljava/lang/String;",
            "Lorg/apache/logging/log4j/core/Layout<",
            "+",
            "Ljava/io/Serializable;",
            ">;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Lorg/apache/logging/log4j/core/config/Configuration;",
            ")V"
        }
    .end annotation

    .line 304
    .local p9, "layout":Lorg/apache/logging/log4j/core/Layout;, "Lorg/apache/logging/log4j/core/Layout<+Ljava/io/Serializable;>;"
    invoke-direct {p0, p13}, Lorg/apache/logging/log4j/core/appender/ConfigurationFactoryData;-><init>(Lorg/apache/logging/log4j/core/config/Configuration;)V

    .line 305
    iput-object p1, p0, Lorg/apache/logging/log4j/core/appender/rolling/RollingRandomAccessFileManager$FactoryData;->fileName:Ljava/lang/String;

    .line 306
    iput-object p2, p0, Lorg/apache/logging/log4j/core/appender/rolling/RollingRandomAccessFileManager$FactoryData;->pattern:Ljava/lang/String;

    .line 307
    iput-boolean p3, p0, Lorg/apache/logging/log4j/core/appender/rolling/RollingRandomAccessFileManager$FactoryData;->append:Z

    .line 308
    iput-boolean p4, p0, Lorg/apache/logging/log4j/core/appender/rolling/RollingRandomAccessFileManager$FactoryData;->immediateFlush:Z

    .line 309
    iput p5, p0, Lorg/apache/logging/log4j/core/appender/rolling/RollingRandomAccessFileManager$FactoryData;->bufferSize:I

    .line 310
    iput-object p6, p0, Lorg/apache/logging/log4j/core/appender/rolling/RollingRandomAccessFileManager$FactoryData;->policy:Lorg/apache/logging/log4j/core/appender/rolling/TriggeringPolicy;

    .line 311
    iput-object p7, p0, Lorg/apache/logging/log4j/core/appender/rolling/RollingRandomAccessFileManager$FactoryData;->strategy:Lorg/apache/logging/log4j/core/appender/rolling/RolloverStrategy;

    .line 312
    iput-object p8, p0, Lorg/apache/logging/log4j/core/appender/rolling/RollingRandomAccessFileManager$FactoryData;->advertiseURI:Ljava/lang/String;

    .line 313
    iput-object p9, p0, Lorg/apache/logging/log4j/core/appender/rolling/RollingRandomAccessFileManager$FactoryData;->layout:Lorg/apache/logging/log4j/core/Layout;

    .line 314
    iput-object p10, p0, Lorg/apache/logging/log4j/core/appender/rolling/RollingRandomAccessFileManager$FactoryData;->filePermissions:Ljava/lang/String;

    .line 315
    iput-object p11, p0, Lorg/apache/logging/log4j/core/appender/rolling/RollingRandomAccessFileManager$FactoryData;->fileOwner:Ljava/lang/String;

    .line 316
    iput-object p12, p0, Lorg/apache/logging/log4j/core/appender/rolling/RollingRandomAccessFileManager$FactoryData;->fileGroup:Ljava/lang/String;

    .line 317
    return-void
.end method

.method static synthetic access$100(Lorg/apache/logging/log4j/core/appender/rolling/RollingRandomAccessFileManager$FactoryData;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lorg/apache/logging/log4j/core/appender/rolling/RollingRandomAccessFileManager$FactoryData;

    .line 268
    iget-object v0, p0, Lorg/apache/logging/log4j/core/appender/rolling/RollingRandomAccessFileManager$FactoryData;->fileName:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$1000(Lorg/apache/logging/log4j/core/appender/rolling/RollingRandomAccessFileManager$FactoryData;)Lorg/apache/logging/log4j/core/appender/rolling/TriggeringPolicy;
    .locals 1
    .param p0, "x0"    # Lorg/apache/logging/log4j/core/appender/rolling/RollingRandomAccessFileManager$FactoryData;

    .line 268
    iget-object v0, p0, Lorg/apache/logging/log4j/core/appender/rolling/RollingRandomAccessFileManager$FactoryData;->policy:Lorg/apache/logging/log4j/core/appender/rolling/TriggeringPolicy;

    return-object v0
.end method

.method static synthetic access$1100(Lorg/apache/logging/log4j/core/appender/rolling/RollingRandomAccessFileManager$FactoryData;)Lorg/apache/logging/log4j/core/appender/rolling/RolloverStrategy;
    .locals 1
    .param p0, "x0"    # Lorg/apache/logging/log4j/core/appender/rolling/RollingRandomAccessFileManager$FactoryData;

    .line 268
    iget-object v0, p0, Lorg/apache/logging/log4j/core/appender/rolling/RollingRandomAccessFileManager$FactoryData;->strategy:Lorg/apache/logging/log4j/core/appender/rolling/RolloverStrategy;

    return-object v0
.end method

.method static synthetic access$1200(Lorg/apache/logging/log4j/core/appender/rolling/RollingRandomAccessFileManager$FactoryData;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lorg/apache/logging/log4j/core/appender/rolling/RollingRandomAccessFileManager$FactoryData;

    .line 268
    iget-object v0, p0, Lorg/apache/logging/log4j/core/appender/rolling/RollingRandomAccessFileManager$FactoryData;->advertiseURI:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$1300(Lorg/apache/logging/log4j/core/appender/rolling/RollingRandomAccessFileManager$FactoryData;)Lorg/apache/logging/log4j/core/Layout;
    .locals 1
    .param p0, "x0"    # Lorg/apache/logging/log4j/core/appender/rolling/RollingRandomAccessFileManager$FactoryData;

    .line 268
    iget-object v0, p0, Lorg/apache/logging/log4j/core/appender/rolling/RollingRandomAccessFileManager$FactoryData;->layout:Lorg/apache/logging/log4j/core/Layout;

    return-object v0
.end method

.method static synthetic access$1400(Lorg/apache/logging/log4j/core/appender/rolling/RollingRandomAccessFileManager$FactoryData;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lorg/apache/logging/log4j/core/appender/rolling/RollingRandomAccessFileManager$FactoryData;

    .line 268
    iget-object v0, p0, Lorg/apache/logging/log4j/core/appender/rolling/RollingRandomAccessFileManager$FactoryData;->filePermissions:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$1500(Lorg/apache/logging/log4j/core/appender/rolling/RollingRandomAccessFileManager$FactoryData;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lorg/apache/logging/log4j/core/appender/rolling/RollingRandomAccessFileManager$FactoryData;

    .line 268
    iget-object v0, p0, Lorg/apache/logging/log4j/core/appender/rolling/RollingRandomAccessFileManager$FactoryData;->fileOwner:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$1600(Lorg/apache/logging/log4j/core/appender/rolling/RollingRandomAccessFileManager$FactoryData;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lorg/apache/logging/log4j/core/appender/rolling/RollingRandomAccessFileManager$FactoryData;

    .line 268
    iget-object v0, p0, Lorg/apache/logging/log4j/core/appender/rolling/RollingRandomAccessFileManager$FactoryData;->fileGroup:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$200(Lorg/apache/logging/log4j/core/appender/rolling/RollingRandomAccessFileManager$FactoryData;)Z
    .locals 1
    .param p0, "x0"    # Lorg/apache/logging/log4j/core/appender/rolling/RollingRandomAccessFileManager$FactoryData;

    .line 268
    iget-boolean v0, p0, Lorg/apache/logging/log4j/core/appender/rolling/RollingRandomAccessFileManager$FactoryData;->append:Z

    return v0
.end method

.method static synthetic access$700(Lorg/apache/logging/log4j/core/appender/rolling/RollingRandomAccessFileManager$FactoryData;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lorg/apache/logging/log4j/core/appender/rolling/RollingRandomAccessFileManager$FactoryData;

    .line 268
    iget-object v0, p0, Lorg/apache/logging/log4j/core/appender/rolling/RollingRandomAccessFileManager$FactoryData;->pattern:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$800(Lorg/apache/logging/log4j/core/appender/rolling/RollingRandomAccessFileManager$FactoryData;)Z
    .locals 1
    .param p0, "x0"    # Lorg/apache/logging/log4j/core/appender/rolling/RollingRandomAccessFileManager$FactoryData;

    .line 268
    iget-boolean v0, p0, Lorg/apache/logging/log4j/core/appender/rolling/RollingRandomAccessFileManager$FactoryData;->immediateFlush:Z

    return v0
.end method

.method static synthetic access$900(Lorg/apache/logging/log4j/core/appender/rolling/RollingRandomAccessFileManager$FactoryData;)I
    .locals 1
    .param p0, "x0"    # Lorg/apache/logging/log4j/core/appender/rolling/RollingRandomAccessFileManager$FactoryData;

    .line 268
    iget v0, p0, Lorg/apache/logging/log4j/core/appender/rolling/RollingRandomAccessFileManager$FactoryData;->bufferSize:I

    return v0
.end method


# virtual methods
.method public getPattern()Ljava/lang/String;
    .locals 1

    .line 320
    iget-object v0, p0, Lorg/apache/logging/log4j/core/appender/rolling/RollingRandomAccessFileManager$FactoryData;->pattern:Ljava/lang/String;

    return-object v0
.end method

.method public getRolloverStrategy()Lorg/apache/logging/log4j/core/appender/rolling/RolloverStrategy;
    .locals 1

    .line 328
    iget-object v0, p0, Lorg/apache/logging/log4j/core/appender/rolling/RollingRandomAccessFileManager$FactoryData;->strategy:Lorg/apache/logging/log4j/core/appender/rolling/RolloverStrategy;

    return-object v0
.end method

.method public getTriggeringPolicy()Lorg/apache/logging/log4j/core/appender/rolling/TriggeringPolicy;
    .locals 1

    .line 324
    iget-object v0, p0, Lorg/apache/logging/log4j/core/appender/rolling/RollingRandomAccessFileManager$FactoryData;->policy:Lorg/apache/logging/log4j/core/appender/rolling/TriggeringPolicy;

    return-object v0
.end method
