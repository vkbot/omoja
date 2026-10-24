.class public Lorg/apache/logging/log4j/core/appender/FileManager;
.super Lorg/apache/logging/log4j/core/appender/OutputStreamManager;
.source "FileManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/apache/logging/log4j/core/appender/FileManager$FileManagerFactory;,
        Lorg/apache/logging/log4j/core/appender/FileManager$FactoryData;
    }
.end annotation


# static fields
.field private static final FACTORY:Lorg/apache/logging/log4j/core/appender/FileManager$FileManagerFactory;


# instance fields
.field private final advertiseURI:Ljava/lang/String;

.field private final attributeViewEnabled:Z

.field private final bufferSize:I

.field private final createOnDemand:Z

.field private final fileGroup:Ljava/lang/String;

.field private final fileOwner:Ljava/lang/String;

.field private final filePermissions:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/nio/file/attribute/PosixFilePermission;",
            ">;"
        }
    .end annotation
.end field

.field private final isAppend:Z

.field private final isLocking:Z


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 53
    new-instance v0, Lorg/apache/logging/log4j/core/appender/FileManager$FileManagerFactory;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lorg/apache/logging/log4j/core/appender/FileManager$FileManagerFactory;-><init>(Lorg/apache/logging/log4j/core/appender/FileManager$1;)V

    sput-object v0, Lorg/apache/logging/log4j/core/appender/FileManager;->FACTORY:Lorg/apache/logging/log4j/core/appender/FileManager$FileManagerFactory;

    return-void
.end method

.method protected constructor <init>(Ljava/lang/String;Ljava/io/OutputStream;ZZLjava/lang/String;Lorg/apache/logging/log4j/core/Layout;IZ)V
    .locals 11
    .param p1, "fileName"    # Ljava/lang/String;
    .param p2, "os"    # Ljava/io/OutputStream;
    .param p3, "append"    # Z
    .param p4, "locking"    # Z
    .param p5, "advertiseURI"    # Ljava/lang/String;
    .param p7, "bufferSize"    # I
    .param p8, "writeHeader"    # Z
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
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
            "os",
            "append",
            "locking",
            "advertiseURI",
            "layout",
            "bufferSize",
            "writeHeader"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/io/OutputStream;",
            "ZZ",
            "Ljava/lang/String;",
            "Lorg/apache/logging/log4j/core/Layout<",
            "+",
            "Ljava/io/Serializable;",
            ">;IZ)V"
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 72
    .local p6, "layout":Lorg/apache/logging/log4j/core/Layout;, "Lorg/apache/logging/log4j/core/Layout<+Ljava/io/Serializable;>;"
    move/from16 v0, p7

    new-array v1, v0, [B

    invoke-static {v1}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;

    move-result-object v10

    move-object v2, p0

    move-object v3, p1

    move-object v4, p2

    move v5, p3

    move v6, p4

    move-object/from16 v7, p5

    move-object/from16 v8, p6

    move/from16 v9, p8

    invoke-direct/range {v2 .. v10}, Lorg/apache/logging/log4j/core/appender/FileManager;-><init>(Ljava/lang/String;Ljava/io/OutputStream;ZZLjava/lang/String;Lorg/apache/logging/log4j/core/Layout;ZLjava/nio/ByteBuffer;)V

    .line 73
    return-void
.end method

.method protected constructor <init>(Ljava/lang/String;Ljava/io/OutputStream;ZZLjava/lang/String;Lorg/apache/logging/log4j/core/Layout;ZLjava/nio/ByteBuffer;)V
    .locals 6
    .param p1, "fileName"    # Ljava/lang/String;
    .param p2, "os"    # Ljava/io/OutputStream;
    .param p3, "append"    # Z
    .param p4, "locking"    # Z
    .param p5, "advertiseURI"    # Ljava/lang/String;
    .param p7, "writeHeader"    # Z
    .param p8, "buffer"    # Ljava/nio/ByteBuffer;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
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
            "os",
            "append",
            "locking",
            "advertiseURI",
            "layout",
            "writeHeader",
            "buffer"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/io/OutputStream;",
            "ZZ",
            "Ljava/lang/String;",
            "Lorg/apache/logging/log4j/core/Layout<",
            "+",
            "Ljava/io/Serializable;",
            ">;Z",
            "Ljava/nio/ByteBuffer;",
            ")V"
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 83
    .local p6, "layout":Lorg/apache/logging/log4j/core/Layout;, "Lorg/apache/logging/log4j/core/Layout<+Ljava/io/Serializable;>;"
    move-object v0, p0

    move-object v1, p2

    move-object v2, p1

    move-object v3, p6

    move v4, p7

    move-object v5, p8

    invoke-direct/range {v0 .. v5}, Lorg/apache/logging/log4j/core/appender/OutputStreamManager;-><init>(Ljava/io/OutputStream;Ljava/lang/String;Lorg/apache/logging/log4j/core/Layout;ZLjava/nio/ByteBuffer;)V

    .line 84
    iput-boolean p3, p0, Lorg/apache/logging/log4j/core/appender/FileManager;->isAppend:Z

    .line 85
    const/4 v0, 0x0

    iput-boolean v0, p0, Lorg/apache/logging/log4j/core/appender/FileManager;->createOnDemand:Z

    .line 86
    iput-boolean p4, p0, Lorg/apache/logging/log4j/core/appender/FileManager;->isLocking:Z

    .line 87
    iput-object p5, p0, Lorg/apache/logging/log4j/core/appender/FileManager;->advertiseURI:Ljava/lang/String;

    .line 88
    invoke-virtual {p8}, Ljava/nio/ByteBuffer;->capacity()I

    move-result v1

    iput v1, p0, Lorg/apache/logging/log4j/core/appender/FileManager;->bufferSize:I

    .line 89
    const/4 v1, 0x0

    iput-object v1, p0, Lorg/apache/logging/log4j/core/appender/FileManager;->filePermissions:Ljava/util/Set;

    .line 90
    iput-object v1, p0, Lorg/apache/logging/log4j/core/appender/FileManager;->fileOwner:Ljava/lang/String;

    .line 91
    iput-object v1, p0, Lorg/apache/logging/log4j/core/appender/FileManager;->fileGroup:Ljava/lang/String;

    .line 92
    iput-boolean v0, p0, Lorg/apache/logging/log4j/core/appender/FileManager;->attributeViewEnabled:Z

    .line 93
    return-void
.end method

.method protected constructor <init>(Lorg/apache/logging/log4j/core/LoggerContext;Ljava/lang/String;Ljava/io/OutputStream;ZZZLjava/lang/String;Lorg/apache/logging/log4j/core/Layout;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZLjava/nio/ByteBuffer;)V
    .locals 11
    .param p1, "loggerContext"    # Lorg/apache/logging/log4j/core/LoggerContext;
    .param p2, "fileName"    # Ljava/lang/String;
    .param p3, "os"    # Ljava/io/OutputStream;
    .param p4, "append"    # Z
    .param p5, "locking"    # Z
    .param p6, "createOnDemand"    # Z
    .param p7, "advertiseURI"    # Ljava/lang/String;
    .param p9, "filePermissions"    # Ljava/lang/String;
    .param p10, "fileOwner"    # Ljava/lang/String;
    .param p11, "fileGroup"    # Ljava/lang/String;
    .param p12, "writeHeader"    # Z
    .param p13, "buffer"    # Ljava/nio/ByteBuffer;
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
            "loggerContext",
            "fileName",
            "os",
            "append",
            "locking",
            "createOnDemand",
            "advertiseURI",
            "layout",
            "filePermissions",
            "fileOwner",
            "fileGroup",
            "writeHeader",
            "buffer"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/apache/logging/log4j/core/LoggerContext;",
            "Ljava/lang/String;",
            "Ljava/io/OutputStream;",
            "ZZZ",
            "Ljava/lang/String;",
            "Lorg/apache/logging/log4j/core/Layout<",
            "+",
            "Ljava/io/Serializable;",
            ">;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Z",
            "Ljava/nio/ByteBuffer;",
            ")V"
        }
    .end annotation

    .line 122
    .local p8, "layout":Lorg/apache/logging/log4j/core/Layout;, "Lorg/apache/logging/log4j/core/Layout<+Ljava/io/Serializable;>;"
    move-object v8, p0

    move-object/from16 v9, p10

    move-object/from16 v10, p11

    move-object v0, p0

    move-object v1, p1

    move-object v2, p3

    move-object v3, p2

    move/from16 v4, p6

    move-object/from16 v5, p8

    move/from16 v6, p12

    move-object/from16 v7, p13

    invoke-direct/range {v0 .. v7}, Lorg/apache/logging/log4j/core/appender/OutputStreamManager;-><init>(Lorg/apache/logging/log4j/core/LoggerContext;Ljava/io/OutputStream;Ljava/lang/String;ZLorg/apache/logging/log4j/core/Layout;ZLjava/nio/ByteBuffer;)V

    .line 123
    move v0, p4

    iput-boolean v0, v8, Lorg/apache/logging/log4j/core/appender/FileManager;->isAppend:Z

    .line 124
    move/from16 v1, p6

    iput-boolean v1, v8, Lorg/apache/logging/log4j/core/appender/FileManager;->createOnDemand:Z

    .line 125
    move/from16 v2, p5

    iput-boolean v2, v8, Lorg/apache/logging/log4j/core/appender/FileManager;->isLocking:Z

    .line 126
    move-object/from16 v3, p7

    iput-object v3, v8, Lorg/apache/logging/log4j/core/appender/FileManager;->advertiseURI:Ljava/lang/String;

    .line 127
    invoke-virtual/range {p13 .. p13}, Ljava/nio/ByteBuffer;->capacity()I

    move-result v4

    iput v4, v8, Lorg/apache/logging/log4j/core/appender/FileManager;->bufferSize:I

    .line 129
    invoke-static {}, Ljava/nio/file/FileSystems;->getDefault()Ljava/nio/file/FileSystem;

    move-result-object v4

    invoke-virtual {v4}, Ljava/nio/file/FileSystem;->supportedFileAttributeViews()Ljava/util/Set;

    move-result-object v4

    .line 130
    .local v4, "views":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    const-string v5, "posix"

    invoke-interface {v4, v5}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v5

    const/4 v6, 0x0

    if-eqz v5, :cond_1

    .line 131
    if-eqz p9, :cond_0

    invoke-static/range {p9 .. p9}, Ljava/nio/file/attribute/PosixFilePermissions;->fromString(Ljava/lang/String;)Ljava/util/Set;

    move-result-object v5

    goto :goto_0

    :cond_0
    move-object v5, v6

    :goto_0
    iput-object v5, v8, Lorg/apache/logging/log4j/core/appender/FileManager;->filePermissions:Ljava/util/Set;

    .line 132
    iput-object v10, v8, Lorg/apache/logging/log4j/core/appender/FileManager;->fileGroup:Ljava/lang/String;

    goto :goto_1

    .line 134
    :cond_1
    iput-object v6, v8, Lorg/apache/logging/log4j/core/appender/FileManager;->filePermissions:Ljava/util/Set;

    .line 135
    iput-object v6, v8, Lorg/apache/logging/log4j/core/appender/FileManager;->fileGroup:Ljava/lang/String;

    .line 136
    if-eqz p9, :cond_2

    .line 137
    sget-object v5, Lorg/apache/logging/log4j/core/appender/FileManager;->LOGGER:Lorg/apache/logging/log4j/Logger;

    const-string v7, "Posix file attribute permissions defined but it is not supported by this files system."

    invoke-interface {v5, v7}, Lorg/apache/logging/log4j/Logger;->warn(Ljava/lang/String;)V

    .line 139
    :cond_2
    if-eqz v10, :cond_3

    .line 140
    sget-object v5, Lorg/apache/logging/log4j/core/appender/FileManager;->LOGGER:Lorg/apache/logging/log4j/Logger;

    const-string v7, "Posix file attribute group defined but it is not supported by this files system."

    invoke-interface {v5, v7}, Lorg/apache/logging/log4j/Logger;->warn(Ljava/lang/String;)V

    .line 144
    :cond_3
    :goto_1
    const-string v5, "owner"

    invoke-interface {v4, v5}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_4

    .line 145
    iput-object v9, v8, Lorg/apache/logging/log4j/core/appender/FileManager;->fileOwner:Ljava/lang/String;

    goto :goto_2

    .line 147
    :cond_4
    iput-object v6, v8, Lorg/apache/logging/log4j/core/appender/FileManager;->fileOwner:Ljava/lang/String;

    .line 148
    if-eqz v9, :cond_5

    .line 149
    sget-object v5, Lorg/apache/logging/log4j/core/appender/FileManager;->LOGGER:Lorg/apache/logging/log4j/Logger;

    const-string v6, "Owner file attribute defined but it is not supported by this files system."

    invoke-interface {v5, v6}, Lorg/apache/logging/log4j/Logger;->warn(Ljava/lang/String;)V

    .line 154
    :cond_5
    :goto_2
    iget-object v5, v8, Lorg/apache/logging/log4j/core/appender/FileManager;->filePermissions:Ljava/util/Set;

    if-nez v5, :cond_7

    iget-object v5, v8, Lorg/apache/logging/log4j/core/appender/FileManager;->fileOwner:Ljava/lang/String;

    if-nez v5, :cond_7

    iget-object v5, v8, Lorg/apache/logging/log4j/core/appender/FileManager;->fileGroup:Ljava/lang/String;

    if-eqz v5, :cond_6

    goto :goto_3

    :cond_6
    const/4 v5, 0x0

    goto :goto_4

    :cond_7
    :goto_3
    const/4 v5, 0x1

    :goto_4
    iput-boolean v5, v8, Lorg/apache/logging/log4j/core/appender/FileManager;->attributeViewEnabled:Z

    .line 155
    return-void
.end method

.method protected constructor <init>(Lorg/apache/logging/log4j/core/LoggerContext;Ljava/lang/String;Ljava/io/OutputStream;ZZZLjava/lang/String;Lorg/apache/logging/log4j/core/Layout;ZLjava/nio/ByteBuffer;)V
    .locals 9
    .param p1, "loggerContext"    # Lorg/apache/logging/log4j/core/LoggerContext;
    .param p2, "fileName"    # Ljava/lang/String;
    .param p3, "os"    # Ljava/io/OutputStream;
    .param p4, "append"    # Z
    .param p5, "locking"    # Z
    .param p6, "createOnDemand"    # Z
    .param p7, "advertiseURI"    # Ljava/lang/String;
    .param p9, "writeHeader"    # Z
    .param p10, "buffer"    # Ljava/nio/ByteBuffer;
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
            0x10
        }
        names = {
            "loggerContext",
            "fileName",
            "os",
            "append",
            "locking",
            "createOnDemand",
            "advertiseURI",
            "layout",
            "writeHeader",
            "buffer"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/apache/logging/log4j/core/LoggerContext;",
            "Ljava/lang/String;",
            "Ljava/io/OutputStream;",
            "ZZZ",
            "Ljava/lang/String;",
            "Lorg/apache/logging/log4j/core/Layout<",
            "+",
            "Ljava/io/Serializable;",
            ">;Z",
            "Ljava/nio/ByteBuffer;",
            ")V"
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 103
    .local p8, "layout":Lorg/apache/logging/log4j/core/Layout;, "Lorg/apache/logging/log4j/core/Layout<+Ljava/io/Serializable;>;"
    move-object v8, p0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p3

    move-object v3, p2

    move v4, p6

    move-object/from16 v5, p8

    move/from16 v6, p9

    move-object/from16 v7, p10

    invoke-direct/range {v0 .. v7}, Lorg/apache/logging/log4j/core/appender/OutputStreamManager;-><init>(Lorg/apache/logging/log4j/core/LoggerContext;Ljava/io/OutputStream;Ljava/lang/String;ZLorg/apache/logging/log4j/core/Layout;ZLjava/nio/ByteBuffer;)V

    .line 104
    move v0, p4

    iput-boolean v0, v8, Lorg/apache/logging/log4j/core/appender/FileManager;->isAppend:Z

    .line 105
    move v1, p6

    iput-boolean v1, v8, Lorg/apache/logging/log4j/core/appender/FileManager;->createOnDemand:Z

    .line 106
    move v2, p5

    iput-boolean v2, v8, Lorg/apache/logging/log4j/core/appender/FileManager;->isLocking:Z

    .line 107
    move-object/from16 v3, p7

    iput-object v3, v8, Lorg/apache/logging/log4j/core/appender/FileManager;->advertiseURI:Ljava/lang/String;

    .line 108
    invoke-virtual/range {p10 .. p10}, Ljava/nio/ByteBuffer;->capacity()I

    move-result v4

    iput v4, v8, Lorg/apache/logging/log4j/core/appender/FileManager;->bufferSize:I

    .line 109
    const/4 v4, 0x0

    iput-object v4, v8, Lorg/apache/logging/log4j/core/appender/FileManager;->filePermissions:Ljava/util/Set;

    .line 110
    iput-object v4, v8, Lorg/apache/logging/log4j/core/appender/FileManager;->fileOwner:Ljava/lang/String;

    .line 111
    iput-object v4, v8, Lorg/apache/logging/log4j/core/appender/FileManager;->fileGroup:Ljava/lang/String;

    .line 112
    const/4 v4, 0x0

    iput-boolean v4, v8, Lorg/apache/logging/log4j/core/appender/FileManager;->attributeViewEnabled:Z

    .line 113
    return-void
.end method

.method static synthetic access$1100(Lorg/apache/logging/log4j/core/appender/FileManager;)Z
    .locals 1
    .param p0, "x0"    # Lorg/apache/logging/log4j/core/appender/FileManager;

    .line 51
    iget-boolean v0, p0, Lorg/apache/logging/log4j/core/appender/FileManager;->attributeViewEnabled:Z

    return v0
.end method

.method public static getFileManager(Ljava/lang/String;ZZZZLjava/lang/String;Lorg/apache/logging/log4j/core/Layout;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Lorg/apache/logging/log4j/core/config/Configuration;)Lorg/apache/logging/log4j/core/appender/FileManager;
    .locals 15
    .param p0, "fileName"    # Ljava/lang/String;
    .param p1, "append"    # Z
    .param p2, "locking"    # Z
    .param p3, "bufferedIo"    # Z
    .param p4, "createOnDemand"    # Z
    .param p5, "advertiseUri"    # Ljava/lang/String;
    .param p7, "bufferSize"    # I
    .param p8, "filePermissions"    # Ljava/lang/String;
    .param p9, "fileOwner"    # Ljava/lang/String;
    .param p10, "fileGroup"    # Ljava/lang/String;
    .param p11, "configuration"    # Lorg/apache/logging/log4j/core/config/Configuration;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10,
            0x10,
            0x0,
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
            "append",
            "locking",
            "bufferedIo",
            "createOnDemand",
            "advertiseUri",
            "layout",
            "bufferSize",
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
            "ZZZZ",
            "Ljava/lang/String;",
            "Lorg/apache/logging/log4j/core/Layout<",
            "+",
            "Ljava/io/Serializable;",
            ">;I",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Lorg/apache/logging/log4j/core/config/Configuration;",
            ")",
            "Lorg/apache/logging/log4j/core/appender/FileManager;"
        }
    .end annotation

    .line 179
    .local p6, "layout":Lorg/apache/logging/log4j/core/Layout;, "Lorg/apache/logging/log4j/core/Layout<+Ljava/io/Serializable;>;"
    if-eqz p2, :cond_0

    if-eqz p3, :cond_0

    .line 180
    const/4 v0, 0x0

    move v12, v0

    .end local p2    # "locking":Z
    .local v0, "locking":Z
    goto :goto_0

    .line 182
    .end local v0    # "locking":Z
    .restart local p2    # "locking":Z
    :cond_0
    move/from16 v12, p2

    .end local p2    # "locking":Z
    .local v12, "locking":Z
    :goto_0
    const-class v13, Lorg/apache/logging/log4j/core/appender/FileManager;

    new-instance v14, Lorg/apache/logging/log4j/core/appender/FileManager$FactoryData;

    move-object v0, v14

    move/from16 v1, p1

    move v2, v12

    move/from16 v3, p3

    move/from16 v4, p7

    move/from16 v5, p4

    move-object/from16 v6, p5

    move-object/from16 v7, p6

    move-object/from16 v8, p8

    move-object/from16 v9, p9

    move-object/from16 v10, p10

    move-object/from16 v11, p11

    invoke-direct/range {v0 .. v11}, Lorg/apache/logging/log4j/core/appender/FileManager$FactoryData;-><init>(ZZZIZLjava/lang/String;Lorg/apache/logging/log4j/core/Layout;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lorg/apache/logging/log4j/core/config/Configuration;)V

    sget-object v0, Lorg/apache/logging/log4j/core/appender/FileManager;->FACTORY:Lorg/apache/logging/log4j/core/appender/FileManager$FileManagerFactory;

    move-object v1, p0

    invoke-static {p0, v14, v0}, Lorg/apache/logging/log4j/core/appender/FileManager;->getManager(Ljava/lang/String;Ljava/lang/Object;Lorg/apache/logging/log4j/core/appender/ManagerFactory;)Lorg/apache/logging/log4j/core/appender/OutputStreamManager;

    move-result-object v0

    invoke-static {v13, v0}, Lorg/apache/logging/log4j/core/appender/FileManager;->narrow(Ljava/lang/Class;Lorg/apache/logging/log4j/core/appender/AbstractManager;)Lorg/apache/logging/log4j/core/appender/AbstractManager;

    move-result-object v0

    check-cast v0, Lorg/apache/logging/log4j/core/appender/FileManager;

    return-object v0
.end method


# virtual methods
.method protected createOutputStream()Ljava/io/OutputStream;
    .locals 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 188
    invoke-virtual {p0}, Lorg/apache/logging/log4j/core/appender/FileManager;->getFileName()Ljava/lang/String;

    move-result-object v0

    .line 189
    .local v0, "filename":Ljava/lang/String;
    sget-object v1, Lorg/apache/logging/log4j/core/appender/FileManager;->LOGGER:Lorg/apache/logging/log4j/Logger;

    new-instance v2, Ljava/util/Date;

    invoke-direct {v2}, Ljava/util/Date;-><init>()V

    const-string v3, "Now writing to {} at {}"

    invoke-interface {v1, v3, v0, v2}, Lorg/apache/logging/log4j/Logger;->debug(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 190
    new-instance v1, Ljava/io/File;

    invoke-direct {v1, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 191
    .local v1, "file":Ljava/io/File;
    invoke-virtual {p0, v1}, Lorg/apache/logging/log4j/core/appender/FileManager;->createParentDir(Ljava/io/File;)V

    .line 192
    new-instance v2, Ljava/io/FileOutputStream;

    iget-boolean v3, p0, Lorg/apache/logging/log4j/core/appender/FileManager;->isAppend:Z

    invoke-direct {v2, v1, v3}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;Z)V

    .line 193
    .local v2, "fos":Ljava/io/FileOutputStream;
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v3

    const/4 v4, 0x0

    if-eqz v3, :cond_0

    invoke-virtual {v1}, Ljava/io/File;->length()J

    move-result-wide v5

    const-wide/16 v7, 0x0

    cmp-long v3, v5, v7

    if-nez v3, :cond_0

    .line 195
    :try_start_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v5

    invoke-static {v5, v6}, Ljava/nio/file/attribute/FileTime;->fromMillis(J)Ljava/nio/file/attribute/FileTime;

    move-result-object v3

    .line 196
    .local v3, "now":Ljava/nio/file/attribute/FileTime;
    invoke-virtual {v1}, Ljava/io/File;->toPath()Ljava/nio/file/Path;

    move-result-object v5

    const-string v6, "creationTime"

    new-array v7, v4, [Ljava/nio/file/LinkOption;

    invoke-static {v5, v6, v3, v7}, Ljava/nio/file/Files;->setAttribute(Ljava/nio/file/Path;Ljava/lang/String;Ljava/lang/Object;[Ljava/nio/file/LinkOption;)Ljava/nio/file/Path;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 199
    nop

    .end local v3    # "now":Ljava/nio/file/attribute/FileTime;
    goto :goto_0

    .line 197
    :catch_0
    move-exception v3

    .line 198
    .local v3, "ex":Ljava/lang/Exception;
    sget-object v5, Lorg/apache/logging/log4j/core/appender/FileManager;->LOGGER:Lorg/apache/logging/log4j/Logger;

    const-string v6, "Unable to set current file time for {}"

    invoke-interface {v5, v6, v0}, Lorg/apache/logging/log4j/Logger;->warn(Ljava/lang/String;Ljava/lang/Object;)V

    .line 200
    .end local v3    # "ex":Ljava/lang/Exception;
    :goto_0
    invoke-virtual {p0, v2}, Lorg/apache/logging/log4j/core/appender/FileManager;->writeHeader(Ljava/io/OutputStream;)V

    .line 202
    :cond_0
    new-array v3, v4, [Ljava/lang/String;

    invoke-static {v0, v3}, Ljava/nio/file/Paths;->get(Ljava/lang/String;[Ljava/lang/String;)Ljava/nio/file/Path;

    move-result-object v3

    invoke-virtual {p0, v3}, Lorg/apache/logging/log4j/core/appender/FileManager;->defineAttributeView(Ljava/nio/file/Path;)V

    .line 203
    return-object v2
.end method

.method protected createParentDir(Ljava/io/File;)V
    .locals 0
    .param p1, "file"    # Ljava/io/File;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "file"
        }
    .end annotation

    .line 207
    return-void
.end method

.method protected defineAttributeView(Ljava/nio/file/Path;)V
    .locals 4
    .param p1, "path"    # Ljava/nio/file/Path;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10
        }
        names = {
            "path"
        }
    .end annotation

    .line 210
    iget-boolean v0, p0, Lorg/apache/logging/log4j/core/appender/FileManager;->attributeViewEnabled:Z

    if-eqz v0, :cond_0

    .line 213
    :try_start_0
    invoke-interface {p1}, Ljava/nio/file/Path;->toFile()Ljava/io/File;

    move-result-object v0

    invoke-virtual {v0}, Ljava/io/File;->createNewFile()Z

    .line 215
    iget-object v0, p0, Lorg/apache/logging/log4j/core/appender/FileManager;->filePermissions:Ljava/util/Set;

    iget-object v1, p0, Lorg/apache/logging/log4j/core/appender/FileManager;->fileOwner:Ljava/lang/String;

    iget-object v2, p0, Lorg/apache/logging/log4j/core/appender/FileManager;->fileGroup:Ljava/lang/String;

    invoke-static {p1, v0, v1, v2}, Lorg/apache/logging/log4j/core/util/FileUtils;->defineFilePosixAttributeView(Ljava/nio/file/Path;Ljava/util/Set;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 218
    goto :goto_0

    .line 216
    :catch_0
    move-exception v0

    .line 217
    .local v0, "e":Ljava/lang/Exception;
    sget-object v1, Lorg/apache/logging/log4j/core/appender/FileManager;->LOGGER:Lorg/apache/logging/log4j/Logger;

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v2

    const-string v3, "Could not define attribute view on path \"{}\" got {}"

    invoke-interface {v1, v3, p1, v2, v0}, Lorg/apache/logging/log4j/Logger;->error(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 220
    .end local v0    # "e":Ljava/lang/Exception;
    :cond_0
    :goto_0
    return-void
.end method

.method public getBufferSize()I
    .locals 1

    .line 318
    iget v0, p0, Lorg/apache/logging/log4j/core/appender/FileManager;->bufferSize:I

    return v0
.end method

.method public getContentFormat()Ljava/util/Map;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 367
    new-instance v0, Ljava/util/HashMap;

    invoke-super {p0}, Lorg/apache/logging/log4j/core/appender/OutputStreamManager;->getContentFormat()Ljava/util/Map;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/HashMap;-><init>(Ljava/util/Map;)V

    .line 368
    .local v0, "result":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    iget-object v1, p0, Lorg/apache/logging/log4j/core/appender/FileManager;->advertiseURI:Ljava/lang/String;

    const-string v2, "fileURI"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 369
    return-object v0
.end method

.method public getFileGroup()Ljava/lang/String;
    .locals 1

    .line 348
    iget-object v0, p0, Lorg/apache/logging/log4j/core/appender/FileManager;->fileGroup:Ljava/lang/String;

    return-object v0
.end method

.method public getFileName()Ljava/lang/String;
    .locals 1

    .line 286
    invoke-virtual {p0}, Lorg/apache/logging/log4j/core/appender/FileManager;->getName()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getFileOwner()Ljava/lang/String;
    .locals 1

    .line 338
    iget-object v0, p0, Lorg/apache/logging/log4j/core/appender/FileManager;->fileOwner:Ljava/lang/String;

    return-object v0
.end method

.method public getFilePermissions()Ljava/util/Set;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "Ljava/nio/file/attribute/PosixFilePermission;",
            ">;"
        }
    .end annotation

    .line 328
    iget-object v0, p0, Lorg/apache/logging/log4j/core/appender/FileManager;->filePermissions:Ljava/util/Set;

    return-object v0
.end method

.method public isAppend()Z
    .locals 1

    .line 293
    iget-boolean v0, p0, Lorg/apache/logging/log4j/core/appender/FileManager;->isAppend:Z

    return v0
.end method

.method public isAttributeViewEnabled()Z
    .locals 1

    .line 357
    iget-boolean v0, p0, Lorg/apache/logging/log4j/core/appender/FileManager;->attributeViewEnabled:Z

    return v0
.end method

.method public isCreateOnDemand()Z
    .locals 1

    .line 301
    iget-boolean v0, p0, Lorg/apache/logging/log4j/core/appender/FileManager;->createOnDemand:Z

    return v0
.end method

.method public isLocking()Z
    .locals 1

    .line 309
    iget-boolean v0, p0, Lorg/apache/logging/log4j/core/appender/FileManager;->isLocking:Z

    return v0
.end method

.method protected declared-synchronized write([BIIZ)V
    .locals 7
    .param p1, "bytes"    # [B
    .param p2, "offset"    # I
    .param p3, "length"    # I
    .param p4, "immediateFlush"    # Z
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10,
            0x10,
            0x10,
            0x10
        }
        names = {
            "bytes",
            "offset",
            "length",
            "immediateFlush"
        }
    .end annotation

    monitor-enter p0

    .line 225
    :try_start_0
    iget-boolean v0, p0, Lorg/apache/logging/log4j/core/appender/FileManager;->isLocking:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_3

    if-eqz v0, :cond_2

    .line 228
    :try_start_1
    invoke-virtual {p0}, Lorg/apache/logging/log4j/core/appender/FileManager;->getOutputStream()Ljava/io/OutputStream;

    move-result-object v0

    check-cast v0, Ljava/io/FileOutputStream;

    invoke-virtual {v0}, Ljava/io/FileOutputStream;->getChannel()Ljava/nio/channels/FileChannel;

    move-result-object v1

    .line 237
    .local v1, "channel":Ljava/nio/channels/FileChannel;
    const-wide/16 v2, 0x0

    const-wide v4, 0x7fffffffffffffffL

    const/4 v6, 0x0

    invoke-virtual/range {v1 .. v6}, Ljava/nio/channels/FileChannel;->lock(JJZ)Ljava/nio/channels/FileLock;

    move-result-object v0
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_3

    .line 238
    .local v0, "lock":Ljava/nio/channels/FileLock;
    :try_start_2
    invoke-super {p0, p1, p2, p3, p4}, Lorg/apache/logging/log4j/core/appender/OutputStreamManager;->write([BIIZ)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 239
    if-eqz v0, :cond_0

    :try_start_3
    invoke-virtual {v0}, Ljava/nio/channels/FileLock;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_3

    .line 242
    .end local v0    # "lock":Ljava/nio/channels/FileLock;
    .end local v1    # "channel":Ljava/nio/channels/FileChannel;
    .end local p0    # "this":Lorg/apache/logging/log4j/core/appender/FileManager;
    :cond_0
    goto :goto_1

    .line 237
    .restart local v0    # "lock":Ljava/nio/channels/FileLock;
    .restart local v1    # "channel":Ljava/nio/channels/FileChannel;
    :catchall_0
    move-exception v2

    .end local v0    # "lock":Ljava/nio/channels/FileLock;
    .end local v1    # "channel":Ljava/nio/channels/FileChannel;
    .end local p1    # "bytes":[B
    .end local p2    # "offset":I
    .end local p3    # "length":I
    .end local p4    # "immediateFlush":Z
    :try_start_4
    throw v2
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .line 239
    .restart local v0    # "lock":Ljava/nio/channels/FileLock;
    .restart local v1    # "channel":Ljava/nio/channels/FileChannel;
    .restart local p0    # "this":Lorg/apache/logging/log4j/core/appender/FileManager;
    .restart local p1    # "bytes":[B
    .restart local p2    # "offset":I
    .restart local p3    # "length":I
    .restart local p4    # "immediateFlush":Z
    :catchall_1
    move-exception v3

    if-eqz v0, :cond_1

    :try_start_5
    invoke-virtual {v0}, Ljava/nio/channels/FileLock;->close()V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_2

    goto :goto_0

    :catchall_2
    move-exception v4

    :try_start_6
    invoke-virtual {v2, v4}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    .end local p0    # "this":Lorg/apache/logging/log4j/core/appender/FileManager;
    .end local p1    # "bytes":[B
    .end local p2    # "offset":I
    .end local p3    # "length":I
    .end local p4    # "immediateFlush":Z
    :cond_1
    :goto_0
    throw v3
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_0
    .catchall {:try_start_6 .. :try_end_6} :catchall_3

    .line 240
    .end local v0    # "lock":Ljava/nio/channels/FileLock;
    .end local v1    # "channel":Ljava/nio/channels/FileChannel;
    .restart local p1    # "bytes":[B
    .restart local p2    # "offset":I
    .restart local p3    # "length":I
    .restart local p4    # "immediateFlush":Z
    :catch_0
    move-exception v0

    .line 241
    .local v0, "ex":Ljava/io/IOException;
    :try_start_7
    new-instance v1, Lorg/apache/logging/log4j/core/appender/AppenderLoggingException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Unable to obtain lock on "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lorg/apache/logging/log4j/core/appender/FileManager;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2, v0}, Lorg/apache/logging/log4j/core/appender/AppenderLoggingException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1

    .line 244
    .end local v0    # "ex":Ljava/io/IOException;
    :cond_2
    invoke-super {p0, p1, p2, p3, p4}, Lorg/apache/logging/log4j/core/appender/OutputStreamManager;->write([BIIZ)V
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_3

    .line 246
    :goto_1
    monitor-exit p0

    return-void

    .line 224
    .end local p1    # "bytes":[B
    .end local p2    # "offset":I
    .end local p3    # "length":I
    .end local p4    # "immediateFlush":Z
    :catchall_3
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method protected declared-synchronized writeToDestination([BII)V
    .locals 7
    .param p1, "bytes"    # [B
    .param p2, "offset"    # I
    .param p3, "length"    # I
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10,
            0x10,
            0x10
        }
        names = {
            "bytes",
            "offset",
            "length"
        }
    .end annotation

    monitor-enter p0

    .line 258
    :try_start_0
    iget-boolean v0, p0, Lorg/apache/logging/log4j/core/appender/FileManager;->isLocking:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_3

    if-eqz v0, :cond_2

    .line 261
    :try_start_1
    invoke-virtual {p0}, Lorg/apache/logging/log4j/core/appender/FileManager;->getOutputStream()Ljava/io/OutputStream;

    move-result-object v0

    check-cast v0, Ljava/io/FileOutputStream;

    invoke-virtual {v0}, Ljava/io/FileOutputStream;->getChannel()Ljava/nio/channels/FileChannel;

    move-result-object v1

    .line 270
    .local v1, "channel":Ljava/nio/channels/FileChannel;
    const-wide/16 v2, 0x0

    const-wide v4, 0x7fffffffffffffffL

    const/4 v6, 0x0

    invoke-virtual/range {v1 .. v6}, Ljava/nio/channels/FileChannel;->lock(JJZ)Ljava/nio/channels/FileLock;

    move-result-object v0
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_3

    .line 271
    .local v0, "lock":Ljava/nio/channels/FileLock;
    :try_start_2
    invoke-super {p0, p1, p2, p3}, Lorg/apache/logging/log4j/core/appender/OutputStreamManager;->writeToDestination([BII)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 272
    if-eqz v0, :cond_0

    :try_start_3
    invoke-virtual {v0}, Ljava/nio/channels/FileLock;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_3

    .line 275
    .end local v0    # "lock":Ljava/nio/channels/FileLock;
    .end local v1    # "channel":Ljava/nio/channels/FileChannel;
    .end local p0    # "this":Lorg/apache/logging/log4j/core/appender/FileManager;
    :cond_0
    goto :goto_1

    .line 270
    .restart local v0    # "lock":Ljava/nio/channels/FileLock;
    .restart local v1    # "channel":Ljava/nio/channels/FileChannel;
    :catchall_0
    move-exception v2

    .end local v0    # "lock":Ljava/nio/channels/FileLock;
    .end local v1    # "channel":Ljava/nio/channels/FileChannel;
    .end local p1    # "bytes":[B
    .end local p2    # "offset":I
    .end local p3    # "length":I
    :try_start_4
    throw v2
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .line 272
    .restart local v0    # "lock":Ljava/nio/channels/FileLock;
    .restart local v1    # "channel":Ljava/nio/channels/FileChannel;
    .restart local p0    # "this":Lorg/apache/logging/log4j/core/appender/FileManager;
    .restart local p1    # "bytes":[B
    .restart local p2    # "offset":I
    .restart local p3    # "length":I
    :catchall_1
    move-exception v3

    if-eqz v0, :cond_1

    :try_start_5
    invoke-virtual {v0}, Ljava/nio/channels/FileLock;->close()V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_2

    goto :goto_0

    :catchall_2
    move-exception v4

    :try_start_6
    invoke-virtual {v2, v4}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    .end local p0    # "this":Lorg/apache/logging/log4j/core/appender/FileManager;
    .end local p1    # "bytes":[B
    .end local p2    # "offset":I
    .end local p3    # "length":I
    :cond_1
    :goto_0
    throw v3
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_0
    .catchall {:try_start_6 .. :try_end_6} :catchall_3

    .line 273
    .end local v0    # "lock":Ljava/nio/channels/FileLock;
    .end local v1    # "channel":Ljava/nio/channels/FileChannel;
    .restart local p1    # "bytes":[B
    .restart local p2    # "offset":I
    .restart local p3    # "length":I
    :catch_0
    move-exception v0

    .line 274
    .local v0, "ex":Ljava/io/IOException;
    :try_start_7
    new-instance v1, Lorg/apache/logging/log4j/core/appender/AppenderLoggingException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Unable to obtain lock on "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lorg/apache/logging/log4j/core/appender/FileManager;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2, v0}, Lorg/apache/logging/log4j/core/appender/AppenderLoggingException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1

    .line 277
    .end local v0    # "ex":Ljava/io/IOException;
    :cond_2
    invoke-super {p0, p1, p2, p3}, Lorg/apache/logging/log4j/core/appender/OutputStreamManager;->writeToDestination([BII)V
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_3

    .line 279
    :goto_1
    monitor-exit p0

    return-void

    .line 257
    .end local p1    # "bytes":[B
    .end local p2    # "offset":I
    .end local p3    # "length":I
    :catchall_3
    move-exception p1

    monitor-exit p0

    throw p1
.end method
