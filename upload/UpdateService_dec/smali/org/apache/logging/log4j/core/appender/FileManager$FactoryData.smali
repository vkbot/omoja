.class Lorg/apache/logging/log4j/core/appender/FileManager$FactoryData;
.super Lorg/apache/logging/log4j/core/appender/ConfigurationFactoryData;
.source "FileManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/apache/logging/log4j/core/appender/FileManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "FactoryData"
.end annotation


# instance fields
.field private final advertiseURI:Ljava/lang/String;

.field private final append:Z

.field private final bufferSize:I

.field private final bufferedIo:Z

.field private final createOnDemand:Z

.field private final fileGroup:Ljava/lang/String;

.field private final fileOwner:Ljava/lang/String;

.field private final filePermissions:Ljava/lang/String;

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

.field private final locking:Z


# direct methods
.method public constructor <init>(ZZZIZLjava/lang/String;Lorg/apache/logging/log4j/core/Layout;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lorg/apache/logging/log4j/core/config/Configuration;)V
    .locals 0
    .param p1, "append"    # Z
    .param p2, "locking"    # Z
    .param p3, "bufferedIo"    # Z
    .param p4, "bufferSize"    # I
    .param p5, "createOnDemand"    # Z
    .param p6, "advertiseURI"    # Ljava/lang/String;
    .param p8, "filePermissions"    # Ljava/lang/String;
    .param p9, "fileOwner"    # Ljava/lang/String;
    .param p10, "fileGroup"    # Ljava/lang/String;
    .param p11, "configuration"    # Lorg/apache/logging/log4j/core/config/Configuration;
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
            0x10
        }
        names = {
            "append",
            "locking",
            "bufferedIo",
            "bufferSize",
            "createOnDemand",
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
            "(ZZZIZ",
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

    .line 405
    .local p7, "layout":Lorg/apache/logging/log4j/core/Layout;, "Lorg/apache/logging/log4j/core/Layout<+Ljava/io/Serializable;>;"
    invoke-direct {p0, p11}, Lorg/apache/logging/log4j/core/appender/ConfigurationFactoryData;-><init>(Lorg/apache/logging/log4j/core/config/Configuration;)V

    .line 406
    iput-boolean p1, p0, Lorg/apache/logging/log4j/core/appender/FileManager$FactoryData;->append:Z

    .line 407
    iput-boolean p2, p0, Lorg/apache/logging/log4j/core/appender/FileManager$FactoryData;->locking:Z

    .line 408
    iput-boolean p3, p0, Lorg/apache/logging/log4j/core/appender/FileManager$FactoryData;->bufferedIo:Z

    .line 409
    iput p4, p0, Lorg/apache/logging/log4j/core/appender/FileManager$FactoryData;->bufferSize:I

    .line 410
    iput-boolean p5, p0, Lorg/apache/logging/log4j/core/appender/FileManager$FactoryData;->createOnDemand:Z

    .line 411
    iput-object p6, p0, Lorg/apache/logging/log4j/core/appender/FileManager$FactoryData;->advertiseURI:Ljava/lang/String;

    .line 412
    iput-object p7, p0, Lorg/apache/logging/log4j/core/appender/FileManager$FactoryData;->layout:Lorg/apache/logging/log4j/core/Layout;

    .line 413
    iput-object p8, p0, Lorg/apache/logging/log4j/core/appender/FileManager$FactoryData;->filePermissions:Ljava/lang/String;

    .line 414
    iput-object p9, p0, Lorg/apache/logging/log4j/core/appender/FileManager$FactoryData;->fileOwner:Ljava/lang/String;

    .line 415
    iput-object p10, p0, Lorg/apache/logging/log4j/core/appender/FileManager$FactoryData;->fileGroup:Ljava/lang/String;

    .line 416
    return-void
.end method

.method static synthetic access$100(Lorg/apache/logging/log4j/core/appender/FileManager$FactoryData;)Z
    .locals 1
    .param p0, "x0"    # Lorg/apache/logging/log4j/core/appender/FileManager$FactoryData;

    .line 375
    iget-boolean v0, p0, Lorg/apache/logging/log4j/core/appender/FileManager$FactoryData;->append:Z

    return v0
.end method

.method static synthetic access$1000(Lorg/apache/logging/log4j/core/appender/FileManager$FactoryData;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lorg/apache/logging/log4j/core/appender/FileManager$FactoryData;

    .line 375
    iget-object v0, p0, Lorg/apache/logging/log4j/core/appender/FileManager$FactoryData;->fileGroup:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$200(Lorg/apache/logging/log4j/core/appender/FileManager$FactoryData;)Z
    .locals 1
    .param p0, "x0"    # Lorg/apache/logging/log4j/core/appender/FileManager$FactoryData;

    .line 375
    iget-boolean v0, p0, Lorg/apache/logging/log4j/core/appender/FileManager$FactoryData;->bufferedIo:Z

    return v0
.end method

.method static synthetic access$300(Lorg/apache/logging/log4j/core/appender/FileManager$FactoryData;)I
    .locals 1
    .param p0, "x0"    # Lorg/apache/logging/log4j/core/appender/FileManager$FactoryData;

    .line 375
    iget v0, p0, Lorg/apache/logging/log4j/core/appender/FileManager$FactoryData;->bufferSize:I

    return v0
.end method

.method static synthetic access$400(Lorg/apache/logging/log4j/core/appender/FileManager$FactoryData;)Z
    .locals 1
    .param p0, "x0"    # Lorg/apache/logging/log4j/core/appender/FileManager$FactoryData;

    .line 375
    iget-boolean v0, p0, Lorg/apache/logging/log4j/core/appender/FileManager$FactoryData;->createOnDemand:Z

    return v0
.end method

.method static synthetic access$500(Lorg/apache/logging/log4j/core/appender/FileManager$FactoryData;)Z
    .locals 1
    .param p0, "x0"    # Lorg/apache/logging/log4j/core/appender/FileManager$FactoryData;

    .line 375
    iget-boolean v0, p0, Lorg/apache/logging/log4j/core/appender/FileManager$FactoryData;->locking:Z

    return v0
.end method

.method static synthetic access$600(Lorg/apache/logging/log4j/core/appender/FileManager$FactoryData;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lorg/apache/logging/log4j/core/appender/FileManager$FactoryData;

    .line 375
    iget-object v0, p0, Lorg/apache/logging/log4j/core/appender/FileManager$FactoryData;->advertiseURI:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$700(Lorg/apache/logging/log4j/core/appender/FileManager$FactoryData;)Lorg/apache/logging/log4j/core/Layout;
    .locals 1
    .param p0, "x0"    # Lorg/apache/logging/log4j/core/appender/FileManager$FactoryData;

    .line 375
    iget-object v0, p0, Lorg/apache/logging/log4j/core/appender/FileManager$FactoryData;->layout:Lorg/apache/logging/log4j/core/Layout;

    return-object v0
.end method

.method static synthetic access$800(Lorg/apache/logging/log4j/core/appender/FileManager$FactoryData;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lorg/apache/logging/log4j/core/appender/FileManager$FactoryData;

    .line 375
    iget-object v0, p0, Lorg/apache/logging/log4j/core/appender/FileManager$FactoryData;->filePermissions:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$900(Lorg/apache/logging/log4j/core/appender/FileManager$FactoryData;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lorg/apache/logging/log4j/core/appender/FileManager$FactoryData;

    .line 375
    iget-object v0, p0, Lorg/apache/logging/log4j/core/appender/FileManager$FactoryData;->fileOwner:Ljava/lang/String;

    return-object v0
.end method
