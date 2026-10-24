.class Lorg/apache/logging/log4j/core/appender/rolling/RollingFileManager$FactoryData;
.super Lorg/apache/logging/log4j/core/appender/ConfigurationFactoryData;
.source "RollingFileManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/apache/logging/log4j/core/appender/rolling/RollingFileManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "FactoryData"
.end annotation


# instance fields
.field private final advertiseURI:Ljava/lang/String;

.field private final append:Z

.field private final bufferSize:I

.field private final bufferedIO:Z

.field private final createOnDemand:Z

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
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;ZZLorg/apache/logging/log4j/core/appender/rolling/TriggeringPolicy;Lorg/apache/logging/log4j/core/appender/rolling/RolloverStrategy;Ljava/lang/String;Lorg/apache/logging/log4j/core/Layout;IZZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Lorg/apache/logging/log4j/core/config/Configuration;)V
    .locals 0
    .param p1, "fileName"    # Ljava/lang/String;
    .param p2, "pattern"    # Ljava/lang/String;
    .param p3, "append"    # Z
    .param p4, "bufferedIO"    # Z
    .param p5, "policy"    # Lorg/apache/logging/log4j/core/appender/rolling/TriggeringPolicy;
    .param p6, "strategy"    # Lorg/apache/logging/log4j/core/appender/rolling/RolloverStrategy;
    .param p7, "advertiseURI"    # Ljava/lang/String;
    .param p9, "bufferSize"    # I
    .param p10, "immediateFlush"    # Z
    .param p11, "createOnDemand"    # Z
    .param p12, "filePermissions"    # Ljava/lang/String;
    .param p13, "fileOwner"    # Ljava/lang/String;
    .param p14, "fileGroup"    # Ljava/lang/String;
    .param p15, "configuration"    # Lorg/apache/logging/log4j/core/config/Configuration;
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
            0x10,
            0x10,
            0x10
        }
        names = {
            "fileName",
            "pattern",
            "append",
            "bufferedIO",
            "policy",
            "strategy",
            "advertiseURI",
            "layout",
            "bufferSize",
            "immediateFlush",
            "createOnDemand",
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
            "ZZ",
            "Lorg/apache/logging/log4j/core/appender/rolling/TriggeringPolicy;",
            "Lorg/apache/logging/log4j/core/appender/rolling/RolloverStrategy;",
            "Ljava/lang/String;",
            "Lorg/apache/logging/log4j/core/Layout<",
            "+",
            "Ljava/io/Serializable;",
            ">;IZZ",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Lorg/apache/logging/log4j/core/config/Configuration;",
            ")V"
        }
    .end annotation

    .line 641
    .local p8, "layout":Lorg/apache/logging/log4j/core/Layout;, "Lorg/apache/logging/log4j/core/Layout<+Ljava/io/Serializable;>;"
    invoke-direct {p0, p15}, Lorg/apache/logging/log4j/core/appender/ConfigurationFactoryData;-><init>(Lorg/apache/logging/log4j/core/config/Configuration;)V

    .line 642
    iput-object p1, p0, Lorg/apache/logging/log4j/core/appender/rolling/RollingFileManager$FactoryData;->fileName:Ljava/lang/String;

    .line 643
    iput-object p2, p0, Lorg/apache/logging/log4j/core/appender/rolling/RollingFileManager$FactoryData;->pattern:Ljava/lang/String;

    .line 644
    iput-boolean p3, p0, Lorg/apache/logging/log4j/core/appender/rolling/RollingFileManager$FactoryData;->append:Z

    .line 645
    iput-boolean p4, p0, Lorg/apache/logging/log4j/core/appender/rolling/RollingFileManager$FactoryData;->bufferedIO:Z

    .line 646
    iput p9, p0, Lorg/apache/logging/log4j/core/appender/rolling/RollingFileManager$FactoryData;->bufferSize:I

    .line 647
    iput-object p5, p0, Lorg/apache/logging/log4j/core/appender/rolling/RollingFileManager$FactoryData;->policy:Lorg/apache/logging/log4j/core/appender/rolling/TriggeringPolicy;

    .line 648
    iput-object p6, p0, Lorg/apache/logging/log4j/core/appender/rolling/RollingFileManager$FactoryData;->strategy:Lorg/apache/logging/log4j/core/appender/rolling/RolloverStrategy;

    .line 649
    iput-object p7, p0, Lorg/apache/logging/log4j/core/appender/rolling/RollingFileManager$FactoryData;->advertiseURI:Ljava/lang/String;

    .line 650
    iput-object p8, p0, Lorg/apache/logging/log4j/core/appender/rolling/RollingFileManager$FactoryData;->layout:Lorg/apache/logging/log4j/core/Layout;

    .line 651
    iput-boolean p10, p0, Lorg/apache/logging/log4j/core/appender/rolling/RollingFileManager$FactoryData;->immediateFlush:Z

    .line 652
    iput-boolean p11, p0, Lorg/apache/logging/log4j/core/appender/rolling/RollingFileManager$FactoryData;->createOnDemand:Z

    .line 653
    iput-object p12, p0, Lorg/apache/logging/log4j/core/appender/rolling/RollingFileManager$FactoryData;->filePermissions:Ljava/lang/String;

    .line 654
    iput-object p13, p0, Lorg/apache/logging/log4j/core/appender/rolling/RollingFileManager$FactoryData;->fileOwner:Ljava/lang/String;

    .line 655
    iput-object p14, p0, Lorg/apache/logging/log4j/core/appender/rolling/RollingFileManager$FactoryData;->fileGroup:Ljava/lang/String;

    .line 656
    return-void
.end method

.method static synthetic access$1000(Lorg/apache/logging/log4j/core/appender/rolling/RollingFileManager$FactoryData;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lorg/apache/logging/log4j/core/appender/rolling/RollingFileManager$FactoryData;

    .line 605
    iget-object v0, p0, Lorg/apache/logging/log4j/core/appender/rolling/RollingFileManager$FactoryData;->pattern:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$1100(Lorg/apache/logging/log4j/core/appender/rolling/RollingFileManager$FactoryData;)Lorg/apache/logging/log4j/core/appender/rolling/TriggeringPolicy;
    .locals 1
    .param p0, "x0"    # Lorg/apache/logging/log4j/core/appender/rolling/RollingFileManager$FactoryData;

    .line 605
    iget-object v0, p0, Lorg/apache/logging/log4j/core/appender/rolling/RollingFileManager$FactoryData;->policy:Lorg/apache/logging/log4j/core/appender/rolling/TriggeringPolicy;

    return-object v0
.end method

.method static synthetic access$1200(Lorg/apache/logging/log4j/core/appender/rolling/RollingFileManager$FactoryData;)Lorg/apache/logging/log4j/core/appender/rolling/RolloverStrategy;
    .locals 1
    .param p0, "x0"    # Lorg/apache/logging/log4j/core/appender/rolling/RollingFileManager$FactoryData;

    .line 605
    iget-object v0, p0, Lorg/apache/logging/log4j/core/appender/rolling/RollingFileManager$FactoryData;->strategy:Lorg/apache/logging/log4j/core/appender/rolling/RolloverStrategy;

    return-object v0
.end method

.method static synthetic access$1300(Lorg/apache/logging/log4j/core/appender/rolling/RollingFileManager$FactoryData;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lorg/apache/logging/log4j/core/appender/rolling/RollingFileManager$FactoryData;

    .line 605
    iget-object v0, p0, Lorg/apache/logging/log4j/core/appender/rolling/RollingFileManager$FactoryData;->advertiseURI:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$1400(Lorg/apache/logging/log4j/core/appender/rolling/RollingFileManager$FactoryData;)Lorg/apache/logging/log4j/core/Layout;
    .locals 1
    .param p0, "x0"    # Lorg/apache/logging/log4j/core/appender/rolling/RollingFileManager$FactoryData;

    .line 605
    iget-object v0, p0, Lorg/apache/logging/log4j/core/appender/rolling/RollingFileManager$FactoryData;->layout:Lorg/apache/logging/log4j/core/Layout;

    return-object v0
.end method

.method static synthetic access$1500(Lorg/apache/logging/log4j/core/appender/rolling/RollingFileManager$FactoryData;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lorg/apache/logging/log4j/core/appender/rolling/RollingFileManager$FactoryData;

    .line 605
    iget-object v0, p0, Lorg/apache/logging/log4j/core/appender/rolling/RollingFileManager$FactoryData;->filePermissions:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$1600(Lorg/apache/logging/log4j/core/appender/rolling/RollingFileManager$FactoryData;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lorg/apache/logging/log4j/core/appender/rolling/RollingFileManager$FactoryData;

    .line 605
    iget-object v0, p0, Lorg/apache/logging/log4j/core/appender/rolling/RollingFileManager$FactoryData;->fileOwner:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$1700(Lorg/apache/logging/log4j/core/appender/rolling/RollingFileManager$FactoryData;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lorg/apache/logging/log4j/core/appender/rolling/RollingFileManager$FactoryData;

    .line 605
    iget-object v0, p0, Lorg/apache/logging/log4j/core/appender/rolling/RollingFileManager$FactoryData;->fileGroup:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$200(Lorg/apache/logging/log4j/core/appender/rolling/RollingFileManager$FactoryData;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lorg/apache/logging/log4j/core/appender/rolling/RollingFileManager$FactoryData;

    .line 605
    iget-object v0, p0, Lorg/apache/logging/log4j/core/appender/rolling/RollingFileManager$FactoryData;->fileName:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$300(Lorg/apache/logging/log4j/core/appender/rolling/RollingFileManager$FactoryData;)Z
    .locals 1
    .param p0, "x0"    # Lorg/apache/logging/log4j/core/appender/rolling/RollingFileManager$FactoryData;

    .line 605
    iget-boolean v0, p0, Lorg/apache/logging/log4j/core/appender/rolling/RollingFileManager$FactoryData;->createOnDemand:Z

    return v0
.end method

.method static synthetic access$600(Lorg/apache/logging/log4j/core/appender/rolling/RollingFileManager$FactoryData;)Z
    .locals 1
    .param p0, "x0"    # Lorg/apache/logging/log4j/core/appender/rolling/RollingFileManager$FactoryData;

    .line 605
    iget-boolean v0, p0, Lorg/apache/logging/log4j/core/appender/rolling/RollingFileManager$FactoryData;->append:Z

    return v0
.end method

.method static synthetic access$700(Lorg/apache/logging/log4j/core/appender/rolling/RollingFileManager$FactoryData;)Z
    .locals 1
    .param p0, "x0"    # Lorg/apache/logging/log4j/core/appender/rolling/RollingFileManager$FactoryData;

    .line 605
    iget-boolean v0, p0, Lorg/apache/logging/log4j/core/appender/rolling/RollingFileManager$FactoryData;->bufferedIO:Z

    return v0
.end method

.method static synthetic access$800(Lorg/apache/logging/log4j/core/appender/rolling/RollingFileManager$FactoryData;)I
    .locals 1
    .param p0, "x0"    # Lorg/apache/logging/log4j/core/appender/rolling/RollingFileManager$FactoryData;

    .line 605
    iget v0, p0, Lorg/apache/logging/log4j/core/appender/rolling/RollingFileManager$FactoryData;->bufferSize:I

    return v0
.end method


# virtual methods
.method public getPattern()Ljava/lang/String;
    .locals 1

    .line 667
    iget-object v0, p0, Lorg/apache/logging/log4j/core/appender/rolling/RollingFileManager$FactoryData;->pattern:Ljava/lang/String;

    return-object v0
.end method

.method public getRolloverStrategy()Lorg/apache/logging/log4j/core/appender/rolling/RolloverStrategy;
    .locals 1

    .line 663
    iget-object v0, p0, Lorg/apache/logging/log4j/core/appender/rolling/RollingFileManager$FactoryData;->strategy:Lorg/apache/logging/log4j/core/appender/rolling/RolloverStrategy;

    return-object v0
.end method

.method public getTriggeringPolicy()Lorg/apache/logging/log4j/core/appender/rolling/TriggeringPolicy;
    .locals 1

    .line 659
    iget-object v0, p0, Lorg/apache/logging/log4j/core/appender/rolling/RollingFileManager$FactoryData;->policy:Lorg/apache/logging/log4j/core/appender/rolling/TriggeringPolicy;

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 672
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 673
    .local v0, "builder":Ljava/lang/StringBuilder;
    invoke-super {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 674
    const-string v1, "[pattern="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 675
    iget-object v1, p0, Lorg/apache/logging/log4j/core/appender/rolling/RollingFileManager$FactoryData;->pattern:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 676
    const-string v1, ", append="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 677
    iget-boolean v1, p0, Lorg/apache/logging/log4j/core/appender/rolling/RollingFileManager$FactoryData;->append:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 678
    const-string v1, ", bufferedIO="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 679
    iget-boolean v1, p0, Lorg/apache/logging/log4j/core/appender/rolling/RollingFileManager$FactoryData;->bufferedIO:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 680
    const-string v1, ", bufferSize="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 681
    iget v1, p0, Lorg/apache/logging/log4j/core/appender/rolling/RollingFileManager$FactoryData;->bufferSize:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 682
    const-string v1, ", policy="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 683
    iget-object v1, p0, Lorg/apache/logging/log4j/core/appender/rolling/RollingFileManager$FactoryData;->policy:Lorg/apache/logging/log4j/core/appender/rolling/TriggeringPolicy;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 684
    const-string v1, ", strategy="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 685
    iget-object v1, p0, Lorg/apache/logging/log4j/core/appender/rolling/RollingFileManager$FactoryData;->strategy:Lorg/apache/logging/log4j/core/appender/rolling/RolloverStrategy;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 686
    const-string v1, ", advertiseURI="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 687
    iget-object v1, p0, Lorg/apache/logging/log4j/core/appender/rolling/RollingFileManager$FactoryData;->advertiseURI:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 688
    const-string v1, ", layout="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 689
    iget-object v1, p0, Lorg/apache/logging/log4j/core/appender/rolling/RollingFileManager$FactoryData;->layout:Lorg/apache/logging/log4j/core/Layout;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 690
    const-string v1, ", filePermissions="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 691
    iget-object v1, p0, Lorg/apache/logging/log4j/core/appender/rolling/RollingFileManager$FactoryData;->filePermissions:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 692
    const-string v1, ", fileOwner="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 693
    iget-object v1, p0, Lorg/apache/logging/log4j/core/appender/rolling/RollingFileManager$FactoryData;->fileOwner:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 694
    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 695
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method
