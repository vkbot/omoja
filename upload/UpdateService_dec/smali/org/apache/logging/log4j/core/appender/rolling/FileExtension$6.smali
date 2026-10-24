.class final enum Lorg/apache/logging/log4j/core/appender/rolling/FileExtension$6;
.super Lorg/apache/logging/log4j/core/appender/rolling/FileExtension;
.source "FileExtension.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/apache/logging/log4j/core/appender/rolling/FileExtension;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4008
    name = null
.end annotation


# direct methods
.method constructor <init>(Ljava/lang/String;ILjava/lang/String;)V
    .locals 1
    .param p3, "extension"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000,
            0x1000,
            0x10
        }
        names = {
            "$enum$name",
            "$enum$ordinal",
            "extension"
        }
    .end annotation

    .line 69
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, p3, v0}, Lorg/apache/logging/log4j/core/appender/rolling/FileExtension;-><init>(Ljava/lang/String;ILjava/lang/String;Lorg/apache/logging/log4j/core/appender/rolling/FileExtension$1;)V

    return-void
.end method


# virtual methods
.method createCompressAction(Ljava/lang/String;Ljava/lang/String;ZI)Lorg/apache/logging/log4j/core/appender/rolling/action/Action;
    .locals 4
    .param p1, "renameTo"    # Ljava/lang/String;
    .param p2, "compressedName"    # Ljava/lang/String;
    .param p3, "deleteSource"    # Z
    .param p4, "compressionLevel"    # I
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10,
            0x10,
            0x10,
            0x10
        }
        names = {
            "renameTo",
            "compressedName",
            "deleteSource",
            "compressionLevel"
        }
    .end annotation

    .line 74
    new-instance v0, Lorg/apache/logging/log4j/core/appender/rolling/action/CommonsCompressAction;

    invoke-virtual {p0, p1}, Lorg/apache/logging/log4j/core/appender/rolling/FileExtension$6;->source(Ljava/lang/String;)Ljava/io/File;

    move-result-object v1

    invoke-virtual {p0, p2}, Lorg/apache/logging/log4j/core/appender/rolling/FileExtension$6;->target(Ljava/lang/String;)Ljava/io/File;

    move-result-object v2

    const-string v3, "xz"

    invoke-direct {v0, v3, v1, v2, p3}, Lorg/apache/logging/log4j/core/appender/rolling/action/CommonsCompressAction;-><init>(Ljava/lang/String;Ljava/io/File;Ljava/io/File;Z)V

    return-object v0
.end method
