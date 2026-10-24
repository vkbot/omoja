.class Lorg/apache/logging/log4j/core/appender/RandomAccessFileManager$RandomAccessFileManagerFactory;
.super Ljava/lang/Object;
.source "RandomAccessFileManager.java"

# interfaces
.implements Lorg/apache/logging/log4j/core/appender/ManagerFactory;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/apache/logging/log4j/core/appender/RandomAccessFileManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "RandomAccessFileManagerFactory"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lorg/apache/logging/log4j/core/appender/ManagerFactory<",
        "Lorg/apache/logging/log4j/core/appender/RandomAccessFileManager;",
        "Lorg/apache/logging/log4j/core/appender/RandomAccessFileManager$FactoryData;",
        ">;"
    }
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 186
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lorg/apache/logging/log4j/core/appender/RandomAccessFileManager$1;)V
    .locals 0
    .param p1, "x0"    # Lorg/apache/logging/log4j/core/appender/RandomAccessFileManager$1;

    .line 186
    invoke-direct {p0}, Lorg/apache/logging/log4j/core/appender/RandomAccessFileManager$RandomAccessFileManagerFactory;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic createManager(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1010,
            0x1010
        }
        names = {
            "name",
            "data"
        }
    .end annotation

    .line 186
    check-cast p2, Lorg/apache/logging/log4j/core/appender/RandomAccessFileManager$FactoryData;

    invoke-virtual {p0, p1, p2}, Lorg/apache/logging/log4j/core/appender/RandomAccessFileManager$RandomAccessFileManagerFactory;->createManager(Ljava/lang/String;Lorg/apache/logging/log4j/core/appender/RandomAccessFileManager$FactoryData;)Lorg/apache/logging/log4j/core/appender/RandomAccessFileManager;

    move-result-object p1

    return-object p1
.end method

.method public createManager(Ljava/lang/String;Lorg/apache/logging/log4j/core/appender/RandomAccessFileManager$FactoryData;)Lorg/apache/logging/log4j/core/appender/RandomAccessFileManager;
    .locals 13
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "data"    # Lorg/apache/logging/log4j/core/appender/RandomAccessFileManager$FactoryData;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10,
            0x10
        }
        names = {
            "name",
            "data"
        }
    .end annotation

    .line 198
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 199
    .local v0, "file":Ljava/io/File;
    invoke-static {p2}, Lorg/apache/logging/log4j/core/appender/RandomAccessFileManager$FactoryData;->access$100(Lorg/apache/logging/log4j/core/appender/RandomAccessFileManager$FactoryData;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 200
    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    .line 203
    :cond_0
    invoke-static {p2}, Lorg/apache/logging/log4j/core/appender/RandomAccessFileManager$FactoryData;->access$100(Lorg/apache/logging/log4j/core/appender/RandomAccessFileManager$FactoryData;)Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    if-nez v1, :cond_1

    goto :goto_0

    :cond_1
    const/4 v1, 0x0

    goto :goto_1

    :cond_2
    :goto_0
    const/4 v1, 0x1

    :goto_1
    move v10, v1

    .line 204
    .local v10, "writeHeader":Z
    invoke-static {}, Lorg/apache/logging/log4j/core/util/NullOutputStream;->getInstance()Lorg/apache/logging/log4j/core/util/NullOutputStream;

    move-result-object v1

    .line 207
    .local v1, "os":Ljava/io/OutputStream;
    :try_start_0
    invoke-static {v0}, Lorg/apache/logging/log4j/core/util/FileUtils;->makeParentDirs(Ljava/io/File;)V

    .line 208
    new-instance v2, Ljava/io/RandomAccessFile;

    const-string v3, "rw"

    invoke-direct {v2, p1, v3}, Ljava/io/RandomAccessFile;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    move-object v11, v2

    .line 209
    .local v11, "raf":Ljava/io/RandomAccessFile;
    invoke-static {p2}, Lorg/apache/logging/log4j/core/appender/RandomAccessFileManager$FactoryData;->access$100(Lorg/apache/logging/log4j/core/appender/RandomAccessFileManager$FactoryData;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 210
    invoke-virtual {v11}, Ljava/io/RandomAccessFile;->length()J

    move-result-wide v2

    invoke-virtual {v11, v2, v3}, Ljava/io/RandomAccessFile;->seek(J)V

    goto :goto_2

    .line 212
    :cond_3
    const-wide/16 v2, 0x0

    invoke-virtual {v11, v2, v3}, Ljava/io/RandomAccessFile;->setLength(J)V

    .line 214
    :goto_2
    new-instance v12, Lorg/apache/logging/log4j/core/appender/RandomAccessFileManager;

    invoke-virtual {p2}, Lorg/apache/logging/log4j/core/appender/RandomAccessFileManager$FactoryData;->getLoggerContext()Lorg/apache/logging/log4j/core/LoggerContext;

    move-result-object v3

    .line 215
    invoke-static {p2}, Lorg/apache/logging/log4j/core/appender/RandomAccessFileManager$FactoryData;->access$200(Lorg/apache/logging/log4j/core/appender/RandomAccessFileManager$FactoryData;)I

    move-result v7

    invoke-static {p2}, Lorg/apache/logging/log4j/core/appender/RandomAccessFileManager$FactoryData;->access$300(Lorg/apache/logging/log4j/core/appender/RandomAccessFileManager$FactoryData;)Ljava/lang/String;

    move-result-object v8

    invoke-static {p2}, Lorg/apache/logging/log4j/core/appender/RandomAccessFileManager$FactoryData;->access$400(Lorg/apache/logging/log4j/core/appender/RandomAccessFileManager$FactoryData;)Lorg/apache/logging/log4j/core/Layout;

    move-result-object v9

    move-object v2, v12

    move-object v4, v11

    move-object v5, p1

    move-object v6, v1

    invoke-direct/range {v2 .. v10}, Lorg/apache/logging/log4j/core/appender/RandomAccessFileManager;-><init>(Lorg/apache/logging/log4j/core/LoggerContext;Ljava/io/RandomAccessFile;Ljava/lang/String;Ljava/io/OutputStream;ILjava/lang/String;Lorg/apache/logging/log4j/core/Layout;Z)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 214
    return-object v12

    .line 216
    .end local v11    # "raf":Ljava/io/RandomAccessFile;
    :catch_0
    move-exception v2

    .line 217
    .local v2, "ex":Ljava/lang/Exception;
    sget-object v3, Lorg/apache/logging/log4j/core/appender/AbstractManager;->LOGGER:Lorg/apache/logging/log4j/Logger;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "RandomAccessFileManager ("

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, ") "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v3, v4, v2}, Lorg/apache/logging/log4j/Logger;->error(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 219
    .end local v2    # "ex":Ljava/lang/Exception;
    const/4 v2, 0x0

    return-object v2
.end method
