.class public abstract Lorg/apache/logging/log4j/core/appender/rolling/AbstractRolloverStrategy;
.super Ljava/lang/Object;
.source "AbstractRolloverStrategy.java"

# interfaces
.implements Lorg/apache/logging/log4j/core/appender/rolling/RolloverStrategy;


# static fields
.field protected static final LOGGER:Lorg/apache/logging/log4j/Logger;

.field public static final PATTERN_COUNTER:Ljava/util/regex/Pattern;


# instance fields
.field protected final strSubstitutor:Lorg/apache/logging/log4j/core/lookup/StrSubstitutor;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 48
    invoke-static {}, Lorg/apache/logging/log4j/status/StatusLogger;->getLogger()Lorg/apache/logging/log4j/status/StatusLogger;

    move-result-object v0

    sput-object v0, Lorg/apache/logging/log4j/core/appender/rolling/AbstractRolloverStrategy;->LOGGER:Lorg/apache/logging/log4j/Logger;

    .line 50
    const-string v0, ".*%((?<ZEROPAD>0)?(?<PADDING>\\d+))?i.*"

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lorg/apache/logging/log4j/core/appender/rolling/AbstractRolloverStrategy;->PATTERN_COUNTER:Ljava/util/regex/Pattern;

    return-void
.end method

.method protected constructor <init>(Lorg/apache/logging/log4j/core/lookup/StrSubstitutor;)V
    .locals 0
    .param p1, "strSubstitutor"    # Lorg/apache/logging/log4j/core/lookup/StrSubstitutor;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10
        }
        names = {
            "strSubstitutor"
        }
    .end annotation

    .line 54
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 55
    iput-object p1, p0, Lorg/apache/logging/log4j/core/appender/rolling/AbstractRolloverStrategy;->strSubstitutor:Lorg/apache/logging/log4j/core/lookup/StrSubstitutor;

    .line 56
    return-void
.end method


# virtual methods
.method protected getEligibleFiles(Ljava/lang/String;Ljava/lang/String;)Ljava/util/SortedMap;
    .locals 2
    .param p1, "path"    # Ljava/lang/String;
    .param p2, "pattern"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10,
            0x10
        }
        names = {
            "path",
            "pattern"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/SortedMap<",
            "Ljava/lang/Integer;",
            "Ljava/nio/file/Path;",
            ">;"
        }
    .end annotation

    .line 100
    const-string v0, ""

    const/4 v1, 0x1

    invoke-virtual {p0, v0, p1, p2, v1}, Lorg/apache/logging/log4j/core/appender/rolling/AbstractRolloverStrategy;->getEligibleFiles(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)Ljava/util/SortedMap;

    move-result-object v0

    return-object v0
.end method

.method protected getEligibleFiles(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)Ljava/util/SortedMap;
    .locals 20
    .param p1, "currentFile"    # Ljava/lang/String;
    .param p2, "path"    # Ljava/lang/String;
    .param p3, "logfilePattern"    # Ljava/lang/String;
    .param p4, "isAscending"    # Z
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10,
            0x10,
            0x10,
            0x10
        }
        names = {
            "currentFile",
            "path",
            "logfilePattern",
            "isAscending"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Z)",
            "Ljava/util/SortedMap<",
            "Ljava/lang/Integer;",
            "Ljava/nio/file/Path;",
            ">;"
        }
    .end annotation

    .line 111
    move-object/from16 v1, p1

    new-instance v0, Ljava/util/TreeMap;

    invoke-direct {v0}, Ljava/util/TreeMap;-><init>()V

    move-object v2, v0

    .line 112
    .local v2, "eligibleFiles":Ljava/util/TreeMap;, "Ljava/util/TreeMap<Ljava/lang/Integer;Ljava/nio/file/Path;>;"
    new-instance v0, Ljava/io/File;

    move-object/from16 v3, p2

    invoke-direct {v0, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    move-object v4, v0

    .line 113
    .local v4, "file":Ljava/io/File;
    invoke-virtual {v4}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object v0

    .line 114
    .local v0, "parent":Ljava/io/File;
    if-nez v0, :cond_0

    .line 115
    new-instance v5, Ljava/io/File;

    const-string v6, "."

    invoke-direct {v5, v6}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    move-object v0, v5

    goto :goto_0

    .line 117
    :cond_0
    invoke-virtual {v0}, Ljava/io/File;->mkdirs()Z

    move-object v5, v0

    .line 119
    .end local v0    # "parent":Ljava/io/File;
    .local v5, "parent":Ljava/io/File;
    :goto_0
    sget-object v0, Lorg/apache/logging/log4j/core/appender/rolling/AbstractRolloverStrategy;->PATTERN_COUNTER:Ljava/util/regex/Pattern;

    move-object/from16 v6, p3

    invoke-virtual {v0, v6}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/regex/Matcher;->matches()Z

    move-result v0

    if-nez v0, :cond_1

    .line 120
    return-object v2

    .line 122
    :cond_1
    invoke-virtual {v5}, Ljava/io/File;->toPath()Ljava/nio/file/Path;

    move-result-object v7

    .line 123
    .local v7, "dir":Ljava/nio/file/Path;
    invoke-virtual {v4}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v0

    .line 124
    .local v0, "fileName":Ljava/lang/String;
    move-object/from16 v8, p0

    invoke-virtual {v8, v0}, Lorg/apache/logging/log4j/core/appender/rolling/AbstractRolloverStrategy;->suffixLength(Ljava/lang/String;)I

    move-result v9

    .line 127
    .local v9, "suffixLength":I
    if-lez v9, :cond_2

    .line 128
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v11, 0x0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v12

    sub-int/2addr v12, v9

    invoke-virtual {v0, v11, v12}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v11

    invoke-static {v11}, Ljava/util/regex/Pattern;->quote(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v11, ".*"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    move-object v10, v0

    goto :goto_1

    .line 130
    :cond_2
    invoke-static {v0}, Ljava/util/regex/Pattern;->quote(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    move-object v10, v0

    .line 134
    .end local v0    # "fileName":Ljava/lang/String;
    .local v10, "fileName":Ljava/lang/String;
    :goto_1
    const-string v0, "0?\\u0000"

    const-string v11, "\\\\E(0?\\\\d+)\\\\Q"

    invoke-virtual {v10, v0, v11}, Ljava/lang/String;->replaceFirst(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    .line 135
    .local v11, "filePattern":Ljava/lang/String;
    invoke-static {v11}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v12

    .line 136
    .local v12, "pattern":Ljava/util/regex/Pattern;
    invoke-virtual/range {p1 .. p1}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_3

    new-instance v0, Ljava/io/File;

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->toPath()Ljava/nio/file/Path;

    move-result-object v0

    goto :goto_2

    :cond_3
    const/4 v0, 0x0

    :goto_2
    move-object v13, v0

    .line 137
    .local v13, "current":Ljava/nio/file/Path;
    sget-object v0, Lorg/apache/logging/log4j/core/appender/rolling/AbstractRolloverStrategy;->LOGGER:Lorg/apache/logging/log4j/Logger;

    const-string v14, "Current file: {}"

    invoke-interface {v0, v14, v1}, Lorg/apache/logging/log4j/Logger;->debug(Ljava/lang/String;Ljava/lang/Object;)V

    .line 139
    :try_start_0
    invoke-static {v7}, Ljava/nio/file/Files;->newDirectoryStream(Ljava/nio/file/Path;)Ljava/nio/file/DirectoryStream;

    move-result-object v0
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1

    move-object v14, v0

    .line 140
    .local v14, "stream":Ljava/nio/file/DirectoryStream;, "Ljava/nio/file/DirectoryStream<Ljava/nio/file/Path;>;"
    :try_start_1
    invoke-interface {v14}, Ljava/nio/file/DirectoryStream;->iterator()Ljava/util/Iterator;

    move-result-object v15

    :goto_3
    invoke-interface {v15}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_6

    invoke-interface {v15}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/nio/file/Path;

    move-object/from16 v16, v0

    .line 141
    .local v16, "entry":Ljava/nio/file/Path;
    invoke-interface/range {v16 .. v16}, Ljava/nio/file/Path;->toFile()Ljava/io/File;

    move-result-object v0

    invoke-virtual {v0}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v12, v0}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v0

    move-object/from16 v17, v0

    .line 142
    .local v17, "matcher":Ljava/util/regex/Matcher;
    invoke-virtual/range {v17 .. v17}, Ljava/util/regex/Matcher;->matches()Z

    move-result v0

    if-eqz v0, :cond_5

    move-object/from16 v1, v16

    .end local v16    # "entry":Ljava/nio/file/Path;
    .local v1, "entry":Ljava/nio/file/Path;
    invoke-interface {v1, v13}, Ljava/nio/file/Path;->equals(Ljava/lang/Object;)Z

    move-result v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-nez v0, :cond_4

    .line 144
    const/4 v0, 0x1

    move-object/from16 v3, v17

    .end local v17    # "matcher":Ljava/util/regex/Matcher;
    .local v3, "matcher":Ljava/util/regex/Matcher;
    :try_start_2
    invoke-virtual {v3, v0}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lorg/apache/logging/log4j/core/util/Integers;->parseInt(Ljava/lang/String;)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    .line 145
    .local v0, "index":Ljava/lang/Integer;
    invoke-virtual {v2, v0, v1}, Ljava/util/TreeMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_2
    .catch Ljava/lang/NumberFormatException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 149
    .end local v0    # "index":Ljava/lang/Integer;
    goto :goto_4

    .line 146
    :catch_0
    move-exception v0

    .line 147
    .local v0, "ex":Ljava/lang/NumberFormatException;
    move-object/from16 v16, v0

    .end local v0    # "ex":Ljava/lang/NumberFormatException;
    .local v16, "ex":Ljava/lang/NumberFormatException;
    :try_start_3
    sget-object v0, Lorg/apache/logging/log4j/core/appender/rolling/AbstractRolloverStrategy;->LOGGER:Lorg/apache/logging/log4j/Logger;

    move-object/from16 v17, v3

    .end local v3    # "matcher":Ljava/util/regex/Matcher;
    .restart local v17    # "matcher":Ljava/util/regex/Matcher;
    const-string v3, "Ignoring file {} which matches pattern but the index is invalid."

    .line 148
    invoke-interface {v1}, Ljava/nio/file/Path;->toFile()Ljava/io/File;

    move-result-object v18

    move-object/from16 v19, v1

    .end local v1    # "entry":Ljava/nio/file/Path;
    .local v19, "entry":Ljava/nio/file/Path;
    invoke-virtual/range {v18 .. v18}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v1

    .line 147
    invoke-interface {v0, v3, v1}, Lorg/apache/logging/log4j/Logger;->debug(Ljava/lang/String;Ljava/lang/Object;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_4

    .line 142
    .end local v16    # "ex":Ljava/lang/NumberFormatException;
    .end local v19    # "entry":Ljava/nio/file/Path;
    .restart local v1    # "entry":Ljava/nio/file/Path;
    :cond_4
    move-object/from16 v19, v1

    .end local v1    # "entry":Ljava/nio/file/Path;
    .restart local v19    # "entry":Ljava/nio/file/Path;
    goto :goto_4

    .end local v19    # "entry":Ljava/nio/file/Path;
    .local v16, "entry":Ljava/nio/file/Path;
    :cond_5
    move-object/from16 v19, v16

    .line 151
    .end local v16    # "entry":Ljava/nio/file/Path;
    .end local v17    # "matcher":Ljava/util/regex/Matcher;
    :goto_4
    move-object/from16 v1, p1

    move-object/from16 v3, p2

    goto :goto_3

    .line 152
    :cond_6
    if-eqz v14, :cond_7

    :try_start_4
    invoke-interface {v14}, Ljava/nio/file/DirectoryStream;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_1

    .line 154
    .end local v14    # "stream":Ljava/nio/file/DirectoryStream;, "Ljava/nio/file/DirectoryStream<Ljava/nio/file/Path;>;"
    :cond_7
    nop

    .line 155
    if-eqz p4, :cond_8

    move-object v0, v2

    goto :goto_5

    :cond_8
    invoke-virtual {v2}, Ljava/util/TreeMap;->descendingMap()Ljava/util/NavigableMap;

    move-result-object v0

    :goto_5
    return-object v0

    .line 139
    .restart local v14    # "stream":Ljava/nio/file/DirectoryStream;, "Ljava/nio/file/DirectoryStream<Ljava/nio/file/Path;>;"
    :catchall_0
    move-exception v0

    move-object v1, v0

    .end local v2    # "eligibleFiles":Ljava/util/TreeMap;, "Ljava/util/TreeMap<Ljava/lang/Integer;Ljava/nio/file/Path;>;"
    .end local v4    # "file":Ljava/io/File;
    .end local v5    # "parent":Ljava/io/File;
    .end local v7    # "dir":Ljava/nio/file/Path;
    .end local v9    # "suffixLength":I
    .end local v10    # "fileName":Ljava/lang/String;
    .end local v11    # "filePattern":Ljava/lang/String;
    .end local v12    # "pattern":Ljava/util/regex/Pattern;
    .end local v13    # "current":Ljava/nio/file/Path;
    .end local v14    # "stream":Ljava/nio/file/DirectoryStream;, "Ljava/nio/file/DirectoryStream<Ljava/nio/file/Path;>;"
    .end local p0    # "this":Lorg/apache/logging/log4j/core/appender/rolling/AbstractRolloverStrategy;
    .end local p1    # "currentFile":Ljava/lang/String;
    .end local p2    # "path":Ljava/lang/String;
    .end local p3    # "logfilePattern":Ljava/lang/String;
    .end local p4    # "isAscending":Z
    :try_start_5
    throw v1
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    .line 152
    .restart local v2    # "eligibleFiles":Ljava/util/TreeMap;, "Ljava/util/TreeMap<Ljava/lang/Integer;Ljava/nio/file/Path;>;"
    .restart local v4    # "file":Ljava/io/File;
    .restart local v5    # "parent":Ljava/io/File;
    .restart local v7    # "dir":Ljava/nio/file/Path;
    .restart local v9    # "suffixLength":I
    .restart local v10    # "fileName":Ljava/lang/String;
    .restart local v11    # "filePattern":Ljava/lang/String;
    .restart local v12    # "pattern":Ljava/util/regex/Pattern;
    .restart local v13    # "current":Ljava/nio/file/Path;
    .restart local v14    # "stream":Ljava/nio/file/DirectoryStream;, "Ljava/nio/file/DirectoryStream<Ljava/nio/file/Path;>;"
    .restart local p0    # "this":Lorg/apache/logging/log4j/core/appender/rolling/AbstractRolloverStrategy;
    .restart local p1    # "currentFile":Ljava/lang/String;
    .restart local p2    # "path":Ljava/lang/String;
    .restart local p3    # "logfilePattern":Ljava/lang/String;
    .restart local p4    # "isAscending":Z
    :catchall_1
    move-exception v0

    move-object v3, v0

    if-eqz v14, :cond_9

    :try_start_6
    invoke-interface {v14}, Ljava/nio/file/DirectoryStream;->close()V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_2

    goto :goto_6

    :catchall_2
    move-exception v0

    move-object v15, v0

    :try_start_7
    invoke-virtual {v1, v15}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    .end local v2    # "eligibleFiles":Ljava/util/TreeMap;, "Ljava/util/TreeMap<Ljava/lang/Integer;Ljava/nio/file/Path;>;"
    .end local v4    # "file":Ljava/io/File;
    .end local v5    # "parent":Ljava/io/File;
    .end local v7    # "dir":Ljava/nio/file/Path;
    .end local v9    # "suffixLength":I
    .end local v10    # "fileName":Ljava/lang/String;
    .end local v11    # "filePattern":Ljava/lang/String;
    .end local v12    # "pattern":Ljava/util/regex/Pattern;
    .end local v13    # "current":Ljava/nio/file/Path;
    .end local p0    # "this":Lorg/apache/logging/log4j/core/appender/rolling/AbstractRolloverStrategy;
    .end local p1    # "currentFile":Ljava/lang/String;
    .end local p2    # "path":Ljava/lang/String;
    .end local p3    # "logfilePattern":Ljava/lang/String;
    .end local p4    # "isAscending":Z
    :cond_9
    :goto_6
    throw v3
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_1

    .end local v14    # "stream":Ljava/nio/file/DirectoryStream;, "Ljava/nio/file/DirectoryStream<Ljava/nio/file/Path;>;"
    .restart local v2    # "eligibleFiles":Ljava/util/TreeMap;, "Ljava/util/TreeMap<Ljava/lang/Integer;Ljava/nio/file/Path;>;"
    .restart local v4    # "file":Ljava/io/File;
    .restart local v5    # "parent":Ljava/io/File;
    .restart local v7    # "dir":Ljava/nio/file/Path;
    .restart local v9    # "suffixLength":I
    .restart local v10    # "fileName":Ljava/lang/String;
    .restart local v11    # "filePattern":Ljava/lang/String;
    .restart local v12    # "pattern":Ljava/util/regex/Pattern;
    .restart local v13    # "current":Ljava/nio/file/Path;
    .restart local p0    # "this":Lorg/apache/logging/log4j/core/appender/rolling/AbstractRolloverStrategy;
    .restart local p1    # "currentFile":Ljava/lang/String;
    .restart local p2    # "path":Ljava/lang/String;
    .restart local p3    # "logfilePattern":Ljava/lang/String;
    .restart local p4    # "isAscending":Z
    :catch_1
    move-exception v0

    .line 153
    .local v0, "ioe":Ljava/io/IOException;
    new-instance v1, Lorg/apache/logging/log4j/LoggingException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "Error reading folder "

    invoke-virtual {v3, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v14, " "

    invoke-virtual {v3, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v3, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v1, v3, v0}, Lorg/apache/logging/log4j/LoggingException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
.end method

.method protected getEligibleFiles(Ljava/lang/String;Ljava/lang/String;Z)Ljava/util/SortedMap;
    .locals 1
    .param p1, "path"    # Ljava/lang/String;
    .param p2, "logfilePattern"    # Ljava/lang/String;
    .param p3, "isAscending"    # Z
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10,
            0x10,
            0x10
        }
        names = {
            "path",
            "logfilePattern",
            "isAscending"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Z)",
            "Ljava/util/SortedMap<",
            "Ljava/lang/Integer;",
            "Ljava/nio/file/Path;",
            ">;"
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 106
    const-string v0, ""

    invoke-virtual {p0, v0, p1, p2, p3}, Lorg/apache/logging/log4j/core/appender/rolling/AbstractRolloverStrategy;->getEligibleFiles(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)Ljava/util/SortedMap;

    move-result-object v0

    return-object v0
.end method

.method protected getEligibleFiles(Lorg/apache/logging/log4j/core/appender/rolling/RollingFileManager;)Ljava/util/SortedMap;
    .locals 1
    .param p1, "manager"    # Lorg/apache/logging/log4j/core/appender/rolling/RollingFileManager;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10
        }
        names = {
            "manager"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/apache/logging/log4j/core/appender/rolling/RollingFileManager;",
            ")",
            "Ljava/util/SortedMap<",
            "Ljava/lang/Integer;",
            "Ljava/nio/file/Path;",
            ">;"
        }
    .end annotation

    .line 87
    const/4 v0, 0x1

    invoke-virtual {p0, p1, v0}, Lorg/apache/logging/log4j/core/appender/rolling/AbstractRolloverStrategy;->getEligibleFiles(Lorg/apache/logging/log4j/core/appender/rolling/RollingFileManager;Z)Ljava/util/SortedMap;

    move-result-object v0

    return-object v0
.end method

.method protected getEligibleFiles(Lorg/apache/logging/log4j/core/appender/rolling/RollingFileManager;Z)Ljava/util/SortedMap;
    .locals 5
    .param p1, "manager"    # Lorg/apache/logging/log4j/core/appender/rolling/RollingFileManager;
    .param p2, "isAscending"    # Z
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10,
            0x10
        }
        names = {
            "manager",
            "isAscending"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/apache/logging/log4j/core/appender/rolling/RollingFileManager;",
            "Z)",
            "Ljava/util/SortedMap<",
            "Ljava/lang/Integer;",
            "Ljava/nio/file/Path;",
            ">;"
        }
    .end annotation

    .line 92
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 93
    .local v0, "buf":Ljava/lang/StringBuilder;
    invoke-virtual {p1}, Lorg/apache/logging/log4j/core/appender/rolling/RollingFileManager;->getPatternProcessor()Lorg/apache/logging/log4j/core/appender/rolling/PatternProcessor;

    move-result-object v1

    invoke-virtual {v1}, Lorg/apache/logging/log4j/core/appender/rolling/PatternProcessor;->getPattern()Ljava/lang/String;

    move-result-object v1

    .line 94
    .local v1, "pattern":Ljava/lang/String;
    invoke-virtual {p1}, Lorg/apache/logging/log4j/core/appender/rolling/RollingFileManager;->getPatternProcessor()Lorg/apache/logging/log4j/core/appender/rolling/PatternProcessor;

    move-result-object v2

    iget-object v3, p0, Lorg/apache/logging/log4j/core/appender/rolling/AbstractRolloverStrategy;->strSubstitutor:Lorg/apache/logging/log4j/core/lookup/StrSubstitutor;

    sget-object v4, Lorg/apache/logging/log4j/core/pattern/NotANumber;->NAN:Lorg/apache/logging/log4j/core/pattern/NotANumber;

    invoke-virtual {v2, v3, v0, v4}, Lorg/apache/logging/log4j/core/appender/rolling/PatternProcessor;->formatFileName(Lorg/apache/logging/log4j/core/lookup/StrSubstitutor;Ljava/lang/StringBuilder;Ljava/lang/Object;)V

    .line 95
    invoke-virtual {p1}, Lorg/apache/logging/log4j/core/appender/rolling/RollingFileManager;->isDirectWrite()Z

    move-result v2

    if-eqz v2, :cond_0

    const-string v2, ""

    goto :goto_0

    :cond_0
    invoke-virtual {p1}, Lorg/apache/logging/log4j/core/appender/rolling/RollingFileManager;->getFileName()Ljava/lang/String;

    move-result-object v2

    .line 96
    .local v2, "fileName":Ljava/lang/String;
    :goto_0
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v2, v3, v1, p2}, Lorg/apache/logging/log4j/core/appender/rolling/AbstractRolloverStrategy;->getEligibleFiles(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)Ljava/util/SortedMap;

    move-result-object v3

    return-object v3
.end method

.method public getStrSubstitutor()Lorg/apache/logging/log4j/core/lookup/StrSubstitutor;
    .locals 1

    .line 60
    iget-object v0, p0, Lorg/apache/logging/log4j/core/appender/rolling/AbstractRolloverStrategy;->strSubstitutor:Lorg/apache/logging/log4j/core/lookup/StrSubstitutor;

    return-object v0
.end method

.method protected merge(Lorg/apache/logging/log4j/core/appender/rolling/action/Action;Ljava/util/List;Z)Lorg/apache/logging/log4j/core/appender/rolling/action/Action;
    .locals 2
    .param p1, "compressAction"    # Lorg/apache/logging/log4j/core/appender/rolling/action/Action;
    .param p3, "stopOnError"    # Z
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10,
            0x10,
            0x10
        }
        names = {
            "compressAction",
            "custom",
            "stopOnError"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/apache/logging/log4j/core/appender/rolling/action/Action;",
            "Ljava/util/List<",
            "Lorg/apache/logging/log4j/core/appender/rolling/action/Action;",
            ">;Z)",
            "Lorg/apache/logging/log4j/core/appender/rolling/action/Action;"
        }
    .end annotation

    .line 64
    .local p2, "custom":Ljava/util/List;, "Ljava/util/List<Lorg/apache/logging/log4j/core/appender/rolling/action/Action;>;"
    invoke-interface {p2}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 65
    return-object p1

    .line 67
    :cond_0
    if-nez p1, :cond_1

    .line 68
    new-instance v0, Lorg/apache/logging/log4j/core/appender/rolling/action/CompositeAction;

    invoke-direct {v0, p2, p3}, Lorg/apache/logging/log4j/core/appender/rolling/action/CompositeAction;-><init>(Ljava/util/List;Z)V

    return-object v0

    .line 70
    :cond_1
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 71
    .local v0, "all":Ljava/util/List;, "Ljava/util/List<Lorg/apache/logging/log4j/core/appender/rolling/action/Action;>;"
    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 72
    invoke-interface {v0, p2}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 73
    new-instance v1, Lorg/apache/logging/log4j/core/appender/rolling/action/CompositeAction;

    invoke-direct {v1, v0, p3}, Lorg/apache/logging/log4j/core/appender/rolling/action/CompositeAction;-><init>(Ljava/util/List;Z)V

    return-object v1
.end method

.method protected suffixLength(Ljava/lang/String;)I
    .locals 6
    .param p1, "lowFilename"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10
        }
        names = {
            "lowFilename"
        }
    .end annotation

    .line 77
    invoke-static {}, Lorg/apache/logging/log4j/core/appender/rolling/FileExtension;->values()[Lorg/apache/logging/log4j/core/appender/rolling/FileExtension;

    move-result-object v0

    array-length v1, v0

    const/4 v2, 0x0

    move v3, v2

    :goto_0
    if-ge v3, v1, :cond_1

    aget-object v4, v0, v3

    .line 78
    .local v4, "extension":Lorg/apache/logging/log4j/core/appender/rolling/FileExtension;
    invoke-virtual {v4, p1}, Lorg/apache/logging/log4j/core/appender/rolling/FileExtension;->isExtensionFor(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 79
    invoke-virtual {v4}, Lorg/apache/logging/log4j/core/appender/rolling/FileExtension;->length()I

    move-result v0

    return v0

    .line 77
    .end local v4    # "extension":Lorg/apache/logging/log4j/core/appender/rolling/FileExtension;
    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 82
    :cond_1
    return v2
.end method
