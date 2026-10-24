.class Lorg/apache/logging/log4j/core/appender/rolling/RollingRandomAccessFileManager$RollingRandomAccessFileManagerFactory;
.super Ljava/lang/Object;
.source "RollingRandomAccessFileManager.java"

# interfaces
.implements Lorg/apache/logging/log4j/core/appender/ManagerFactory;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/apache/logging/log4j/core/appender/rolling/RollingRandomAccessFileManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "RollingRandomAccessFileManagerFactory"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lorg/apache/logging/log4j/core/appender/ManagerFactory<",
        "Lorg/apache/logging/log4j/core/appender/rolling/RollingRandomAccessFileManager;",
        "Lorg/apache/logging/log4j/core/appender/rolling/RollingRandomAccessFileManager$FactoryData;",
        ">;"
    }
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 204
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lorg/apache/logging/log4j/core/appender/rolling/RollingRandomAccessFileManager$1;)V
    .locals 0
    .param p1, "x0"    # Lorg/apache/logging/log4j/core/appender/rolling/RollingRandomAccessFileManager$1;

    .line 204
    invoke-direct {p0}, Lorg/apache/logging/log4j/core/appender/rolling/RollingRandomAccessFileManager$RollingRandomAccessFileManagerFactory;-><init>()V

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

    .line 204
    check-cast p2, Lorg/apache/logging/log4j/core/appender/rolling/RollingRandomAccessFileManager$FactoryData;

    invoke-virtual {p0, p1, p2}, Lorg/apache/logging/log4j/core/appender/rolling/RollingRandomAccessFileManager$RollingRandomAccessFileManagerFactory;->createManager(Ljava/lang/String;Lorg/apache/logging/log4j/core/appender/rolling/RollingRandomAccessFileManager$FactoryData;)Lorg/apache/logging/log4j/core/appender/rolling/RollingRandomAccessFileManager;

    move-result-object p1

    return-object p1
.end method

.method public createManager(Ljava/lang/String;Lorg/apache/logging/log4j/core/appender/rolling/RollingRandomAccessFileManager$FactoryData;)Lorg/apache/logging/log4j/core/appender/rolling/RollingRandomAccessFileManager;
    .locals 28
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "data"    # Lorg/apache/logging/log4j/core/appender/rolling/RollingRandomAccessFileManager$FactoryData;
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

    .line 216
    move-object/from16 v12, p1

    const/4 v0, 0x0

    .line 217
    .local v0, "file":Ljava/io/File;
    const-wide/16 v1, 0x0

    .line 218
    .local v1, "size":J
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    .line 219
    .local v3, "time":J
    const/4 v5, 0x0

    .line 220
    .local v5, "raf":Ljava/io/RandomAccessFile;
    invoke-static/range {p2 .. p2}, Lorg/apache/logging/log4j/core/appender/rolling/RollingRandomAccessFileManager$FactoryData;->access$100(Lorg/apache/logging/log4j/core/appender/rolling/RollingRandomAccessFileManager$FactoryData;)Ljava/lang/String;

    move-result-object v6

    if-eqz v6, :cond_5

    .line 221
    new-instance v6, Ljava/io/File;

    invoke-direct {v6, v12}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 223
    .end local v0    # "file":Ljava/io/File;
    .local v6, "file":Ljava/io/File;
    invoke-static/range {p2 .. p2}, Lorg/apache/logging/log4j/core/appender/rolling/RollingRandomAccessFileManager$FactoryData;->access$200(Lorg/apache/logging/log4j/core/appender/rolling/RollingRandomAccessFileManager$FactoryData;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 224
    invoke-virtual {v6}, Ljava/io/File;->delete()Z

    .line 226
    :cond_0
    invoke-static/range {p2 .. p2}, Lorg/apache/logging/log4j/core/appender/rolling/RollingRandomAccessFileManager$FactoryData;->access$200(Lorg/apache/logging/log4j/core/appender/rolling/RollingRandomAccessFileManager$FactoryData;)Z

    move-result v0

    const-wide/16 v7, 0x0

    if-eqz v0, :cond_1

    invoke-virtual {v6}, Ljava/io/File;->length()J

    move-result-wide v9

    goto :goto_0

    :cond_1
    move-wide v9, v7

    :goto_0
    move-wide v1, v9

    .line 227
    invoke-virtual {v6}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 228
    invoke-virtual {v6}, Ljava/io/File;->lastModified()J

    move-result-wide v3

    .line 231
    :cond_2
    :try_start_0
    invoke-static {v6}, Lorg/apache/logging/log4j/core/util/FileUtils;->makeParentDirs(Ljava/io/File;)V

    .line 232
    new-instance v0, Ljava/io/RandomAccessFile;

    const-string v9, "rw"

    invoke-direct {v0, v12, v9}, Ljava/io/RandomAccessFile;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    move-object v5, v0

    .line 233
    invoke-static/range {p2 .. p2}, Lorg/apache/logging/log4j/core/appender/rolling/RollingRandomAccessFileManager$FactoryData;->access$200(Lorg/apache/logging/log4j/core/appender/rolling/RollingRandomAccessFileManager$FactoryData;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 234
    invoke-virtual {v5}, Ljava/io/RandomAccessFile;->length()J

    move-result-wide v7

    .line 235
    .local v7, "length":J
    invoke-static {}, Lorg/apache/logging/log4j/core/appender/rolling/RollingRandomAccessFileManager;->access$300()Lorg/apache/logging/log4j/Logger;

    move-result-object v0

    const-string v9, "RandomAccessFile {} seek to {}"

    invoke-static {v7, v8}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v10

    invoke-interface {v0, v9, v12, v10}, Lorg/apache/logging/log4j/Logger;->trace(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 236
    invoke-virtual {v5, v7, v8}, Ljava/io/RandomAccessFile;->seek(J)V

    .line 237
    .end local v7    # "length":J
    goto :goto_1

    .line 238
    :cond_3
    invoke-static {}, Lorg/apache/logging/log4j/core/appender/rolling/RollingRandomAccessFileManager;->access$400()Lorg/apache/logging/log4j/Logger;

    move-result-object v0

    const-string v9, "RandomAccessFile {} set length to 0"

    invoke-interface {v0, v9, v12}, Lorg/apache/logging/log4j/Logger;->trace(Ljava/lang/String;Ljava/lang/Object;)V

    .line 239
    invoke-virtual {v5, v7, v8}, Ljava/io/RandomAccessFile;->setLength(J)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 251
    :goto_1
    move-wide/from16 v22, v1

    move-wide/from16 v24, v3

    move-object/from16 v26, v5

    move-object v0, v6

    goto :goto_3

    .line 241
    :catch_0
    move-exception v0

    move-object v7, v0

    .line 242
    .local v7, "ex":Ljava/io/IOException;
    invoke-static {}, Lorg/apache/logging/log4j/core/appender/rolling/RollingRandomAccessFileManager;->access$500()Lorg/apache/logging/log4j/Logger;

    move-result-object v0

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Cannot access RandomAccessFile "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-interface {v0, v8, v7}, Lorg/apache/logging/log4j/Logger;->error(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 243
    if-eqz v5, :cond_4

    .line 245
    :try_start_1
    invoke-virtual {v5}, Ljava/io/RandomAccessFile;->close()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1

    .line 248
    goto :goto_2

    .line 246
    :catch_1
    move-exception v0

    move-object v8, v0

    move-object v0, v8

    .line 247
    .local v0, "e":Ljava/io/IOException;
    invoke-static {}, Lorg/apache/logging/log4j/core/appender/rolling/RollingRandomAccessFileManager;->access$600()Lorg/apache/logging/log4j/Logger;

    move-result-object v8

    const-string v9, "Cannot close RandomAccessFile {}"

    invoke-interface {v8, v9, v12, v0}, Lorg/apache/logging/log4j/Logger;->error(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 250
    .end local v0    # "e":Ljava/io/IOException;
    :cond_4
    :goto_2
    const/4 v0, 0x0

    return-object v0

    .line 220
    .end local v6    # "file":Ljava/io/File;
    .end local v7    # "ex":Ljava/io/IOException;
    .local v0, "file":Ljava/io/File;
    :cond_5
    move-wide/from16 v22, v1

    move-wide/from16 v24, v3

    move-object/from16 v26, v5

    .line 253
    .end local v1    # "size":J
    .end local v3    # "time":J
    .end local v5    # "raf":Ljava/io/RandomAccessFile;
    .local v22, "size":J
    .local v24, "time":J
    .local v26, "raf":Ljava/io/RandomAccessFile;
    :goto_3
    invoke-static/range {p2 .. p2}, Lorg/apache/logging/log4j/core/appender/rolling/RollingRandomAccessFileManager$FactoryData;->access$200(Lorg/apache/logging/log4j/core/appender/rolling/RollingRandomAccessFileManager$FactoryData;)Z

    move-result v1

    if-eqz v1, :cond_7

    if-eqz v0, :cond_7

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    if-nez v1, :cond_6

    goto :goto_4

    :cond_6
    const/4 v1, 0x0

    goto :goto_5

    :cond_7
    :goto_4
    const/4 v1, 0x1

    :goto_5
    move/from16 v21, v1

    .line 255
    .local v21, "writeHeader":Z
    new-instance v27, Lorg/apache/logging/log4j/core/appender/rolling/RollingRandomAccessFileManager;

    move-object/from16 v1, v27

    invoke-virtual/range {p2 .. p2}, Lorg/apache/logging/log4j/core/appender/rolling/RollingRandomAccessFileManager$FactoryData;->getLoggerContext()Lorg/apache/logging/log4j/core/LoggerContext;

    move-result-object v2

    invoke-static/range {p2 .. p2}, Lorg/apache/logging/log4j/core/appender/rolling/RollingRandomAccessFileManager$FactoryData;->access$700(Lorg/apache/logging/log4j/core/appender/rolling/RollingRandomAccessFileManager$FactoryData;)Ljava/lang/String;

    move-result-object v5

    .line 256
    invoke-static {}, Lorg/apache/logging/log4j/core/util/NullOutputStream;->getInstance()Lorg/apache/logging/log4j/core/util/NullOutputStream;

    move-result-object v6

    invoke-static/range {p2 .. p2}, Lorg/apache/logging/log4j/core/appender/rolling/RollingRandomAccessFileManager$FactoryData;->access$200(Lorg/apache/logging/log4j/core/appender/rolling/RollingRandomAccessFileManager$FactoryData;)Z

    move-result v7

    invoke-static/range {p2 .. p2}, Lorg/apache/logging/log4j/core/appender/rolling/RollingRandomAccessFileManager$FactoryData;->access$800(Lorg/apache/logging/log4j/core/appender/rolling/RollingRandomAccessFileManager$FactoryData;)Z

    move-result v8

    invoke-static/range {p2 .. p2}, Lorg/apache/logging/log4j/core/appender/rolling/RollingRandomAccessFileManager$FactoryData;->access$900(Lorg/apache/logging/log4j/core/appender/rolling/RollingRandomAccessFileManager$FactoryData;)I

    move-result v9

    invoke-static/range {p2 .. p2}, Lorg/apache/logging/log4j/core/appender/rolling/RollingRandomAccessFileManager$FactoryData;->access$1000(Lorg/apache/logging/log4j/core/appender/rolling/RollingRandomAccessFileManager$FactoryData;)Lorg/apache/logging/log4j/core/appender/rolling/TriggeringPolicy;

    move-result-object v14

    .line 257
    invoke-static/range {p2 .. p2}, Lorg/apache/logging/log4j/core/appender/rolling/RollingRandomAccessFileManager$FactoryData;->access$1100(Lorg/apache/logging/log4j/core/appender/rolling/RollingRandomAccessFileManager$FactoryData;)Lorg/apache/logging/log4j/core/appender/rolling/RolloverStrategy;

    move-result-object v15

    invoke-static/range {p2 .. p2}, Lorg/apache/logging/log4j/core/appender/rolling/RollingRandomAccessFileManager$FactoryData;->access$1200(Lorg/apache/logging/log4j/core/appender/rolling/RollingRandomAccessFileManager$FactoryData;)Ljava/lang/String;

    move-result-object v16

    invoke-static/range {p2 .. p2}, Lorg/apache/logging/log4j/core/appender/rolling/RollingRandomAccessFileManager$FactoryData;->access$1300(Lorg/apache/logging/log4j/core/appender/rolling/RollingRandomAccessFileManager$FactoryData;)Lorg/apache/logging/log4j/core/Layout;

    move-result-object v17

    invoke-static/range {p2 .. p2}, Lorg/apache/logging/log4j/core/appender/rolling/RollingRandomAccessFileManager$FactoryData;->access$1400(Lorg/apache/logging/log4j/core/appender/rolling/RollingRandomAccessFileManager$FactoryData;)Ljava/lang/String;

    move-result-object v18

    invoke-static/range {p2 .. p2}, Lorg/apache/logging/log4j/core/appender/rolling/RollingRandomAccessFileManager$FactoryData;->access$1500(Lorg/apache/logging/log4j/core/appender/rolling/RollingRandomAccessFileManager$FactoryData;)Ljava/lang/String;

    move-result-object v19

    invoke-static/range {p2 .. p2}, Lorg/apache/logging/log4j/core/appender/rolling/RollingRandomAccessFileManager$FactoryData;->access$1600(Lorg/apache/logging/log4j/core/appender/rolling/RollingRandomAccessFileManager$FactoryData;)Ljava/lang/String;

    move-result-object v20

    move-object/from16 v3, v26

    move-object/from16 v4, p1

    move-wide/from16 v10, v22

    move-wide/from16 v12, v24

    invoke-direct/range {v1 .. v21}, Lorg/apache/logging/log4j/core/appender/rolling/RollingRandomAccessFileManager;-><init>(Lorg/apache/logging/log4j/core/LoggerContext;Ljava/io/RandomAccessFile;Ljava/lang/String;Ljava/lang/String;Ljava/io/OutputStream;ZZIJJLorg/apache/logging/log4j/core/appender/rolling/TriggeringPolicy;Lorg/apache/logging/log4j/core/appender/rolling/RolloverStrategy;Ljava/lang/String;Lorg/apache/logging/log4j/core/Layout;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    .line 258
    .local v1, "rrm":Lorg/apache/logging/log4j/core/appender/rolling/RollingRandomAccessFileManager;
    invoke-virtual {v1}, Lorg/apache/logging/log4j/core/appender/rolling/RollingRandomAccessFileManager;->isAttributeViewEnabled()Z

    move-result v2

    if-eqz v2, :cond_8

    .line 259
    invoke-virtual {v0}, Ljava/io/File;->toPath()Ljava/nio/file/Path;

    move-result-object v2

    invoke-static {v1, v2}, Lorg/apache/logging/log4j/core/appender/rolling/RollingRandomAccessFileManager;->access$1700(Lorg/apache/logging/log4j/core/appender/rolling/RollingRandomAccessFileManager;Ljava/nio/file/Path;)V

    .line 261
    :cond_8
    return-object v1
.end method
