.class public abstract enum Lorg/apache/logging/log4j/core/appender/rolling/FileExtension;
.super Ljava/lang/Enum;
.source "FileExtension.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lorg/apache/logging/log4j/core/appender/rolling/FileExtension;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lorg/apache/logging/log4j/core/appender/rolling/FileExtension;

.field public static final enum BZIP2:Lorg/apache/logging/log4j/core/appender/rolling/FileExtension;

.field public static final enum DEFLATE:Lorg/apache/logging/log4j/core/appender/rolling/FileExtension;

.field public static final enum GZ:Lorg/apache/logging/log4j/core/appender/rolling/FileExtension;

.field public static final enum PACK200:Lorg/apache/logging/log4j/core/appender/rolling/FileExtension;

.field public static final enum XZ:Lorg/apache/logging/log4j/core/appender/rolling/FileExtension;

.field public static final enum ZIP:Lorg/apache/logging/log4j/core/appender/rolling/FileExtension;


# instance fields
.field private final extension:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 9

    .line 31
    new-instance v0, Lorg/apache/logging/log4j/core/appender/rolling/FileExtension$1;

    const-string v1, "ZIP"

    const/4 v2, 0x0

    const-string v3, ".zip"

    invoke-direct {v0, v1, v2, v3}, Lorg/apache/logging/log4j/core/appender/rolling/FileExtension$1;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lorg/apache/logging/log4j/core/appender/rolling/FileExtension;->ZIP:Lorg/apache/logging/log4j/core/appender/rolling/FileExtension;

    .line 38
    new-instance v0, Lorg/apache/logging/log4j/core/appender/rolling/FileExtension$2;

    const-string v1, "GZ"

    const/4 v3, 0x1

    const-string v4, ".gz"

    invoke-direct {v0, v1, v3, v4}, Lorg/apache/logging/log4j/core/appender/rolling/FileExtension$2;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lorg/apache/logging/log4j/core/appender/rolling/FileExtension;->GZ:Lorg/apache/logging/log4j/core/appender/rolling/FileExtension;

    .line 45
    new-instance v0, Lorg/apache/logging/log4j/core/appender/rolling/FileExtension$3;

    const-string v1, "BZIP2"

    const/4 v4, 0x2

    const-string v5, ".bz2"

    invoke-direct {v0, v1, v4, v5}, Lorg/apache/logging/log4j/core/appender/rolling/FileExtension$3;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lorg/apache/logging/log4j/core/appender/rolling/FileExtension;->BZIP2:Lorg/apache/logging/log4j/core/appender/rolling/FileExtension;

    .line 53
    new-instance v0, Lorg/apache/logging/log4j/core/appender/rolling/FileExtension$4;

    const-string v1, "DEFLATE"

    const/4 v5, 0x3

    const-string v6, ".deflate"

    invoke-direct {v0, v1, v5, v6}, Lorg/apache/logging/log4j/core/appender/rolling/FileExtension$4;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lorg/apache/logging/log4j/core/appender/rolling/FileExtension;->DEFLATE:Lorg/apache/logging/log4j/core/appender/rolling/FileExtension;

    .line 61
    new-instance v0, Lorg/apache/logging/log4j/core/appender/rolling/FileExtension$5;

    const-string v1, "PACK200"

    const/4 v6, 0x4

    const-string v7, ".pack200"

    invoke-direct {v0, v1, v6, v7}, Lorg/apache/logging/log4j/core/appender/rolling/FileExtension$5;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lorg/apache/logging/log4j/core/appender/rolling/FileExtension;->PACK200:Lorg/apache/logging/log4j/core/appender/rolling/FileExtension;

    .line 69
    new-instance v0, Lorg/apache/logging/log4j/core/appender/rolling/FileExtension$6;

    const-string v1, "XZ"

    const/4 v7, 0x5

    const-string v8, ".xz"

    invoke-direct {v0, v1, v7, v8}, Lorg/apache/logging/log4j/core/appender/rolling/FileExtension$6;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lorg/apache/logging/log4j/core/appender/rolling/FileExtension;->XZ:Lorg/apache/logging/log4j/core/appender/rolling/FileExtension;

    .line 30
    const/4 v1, 0x6

    new-array v1, v1, [Lorg/apache/logging/log4j/core/appender/rolling/FileExtension;

    sget-object v8, Lorg/apache/logging/log4j/core/appender/rolling/FileExtension;->ZIP:Lorg/apache/logging/log4j/core/appender/rolling/FileExtension;

    aput-object v8, v1, v2

    sget-object v2, Lorg/apache/logging/log4j/core/appender/rolling/FileExtension;->GZ:Lorg/apache/logging/log4j/core/appender/rolling/FileExtension;

    aput-object v2, v1, v3

    sget-object v2, Lorg/apache/logging/log4j/core/appender/rolling/FileExtension;->BZIP2:Lorg/apache/logging/log4j/core/appender/rolling/FileExtension;

    aput-object v2, v1, v4

    sget-object v2, Lorg/apache/logging/log4j/core/appender/rolling/FileExtension;->DEFLATE:Lorg/apache/logging/log4j/core/appender/rolling/FileExtension;

    aput-object v2, v1, v5

    sget-object v2, Lorg/apache/logging/log4j/core/appender/rolling/FileExtension;->PACK200:Lorg/apache/logging/log4j/core/appender/rolling/FileExtension;

    aput-object v2, v1, v6

    aput-object v0, v1, v7

    sput-object v1, Lorg/apache/logging/log4j/core/appender/rolling/FileExtension;->$VALUES:[Lorg/apache/logging/log4j/core/appender/rolling/FileExtension;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;ILjava/lang/String;)V
    .locals 0
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

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .line 98
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 99
    const-string p1, "extension"

    invoke-static {p3, p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 100
    iput-object p3, p0, Lorg/apache/logging/log4j/core/appender/rolling/FileExtension;->extension:Ljava/lang/String;

    .line 101
    return-void
.end method

.method synthetic constructor <init>(Ljava/lang/String;ILjava/lang/String;Lorg/apache/logging/log4j/core/appender/rolling/FileExtension$1;)V
    .locals 0
    .param p1, "x0"    # Ljava/lang/String;
    .param p2, "x1"    # I
    .param p3, "x2"    # Ljava/lang/String;
    .param p4, "x3"    # Lorg/apache/logging/log4j/core/appender/rolling/FileExtension$1;

    .line 30
    invoke-direct {p0, p1, p2, p3}, Lorg/apache/logging/log4j/core/appender/rolling/FileExtension;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    return-void
.end method

.method public static lookup(Ljava/lang/String;)Lorg/apache/logging/log4j/core/appender/rolling/FileExtension;
    .locals 5
    .param p0, "fileExtension"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10
        }
        names = {
            "fileExtension"
        }
    .end annotation

    .line 79
    invoke-static {}, Lorg/apache/logging/log4j/core/appender/rolling/FileExtension;->values()[Lorg/apache/logging/log4j/core/appender/rolling/FileExtension;

    move-result-object v0

    array-length v1, v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_1

    aget-object v3, v0, v2

    .line 80
    .local v3, "ext":Lorg/apache/logging/log4j/core/appender/rolling/FileExtension;
    invoke-virtual {v3, p0}, Lorg/apache/logging/log4j/core/appender/rolling/FileExtension;->isExtensionFor(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 81
    return-object v3

    .line 79
    .end local v3    # "ext":Lorg/apache/logging/log4j/core/appender/rolling/FileExtension;
    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 84
    :cond_1
    const/4 v0, 0x0

    return-object v0
.end method

.method public static lookupForFile(Ljava/lang/String;)Lorg/apache/logging/log4j/core/appender/rolling/FileExtension;
    .locals 5
    .param p0, "fileName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10
        }
        names = {
            "fileName"
        }
    .end annotation

    .line 88
    invoke-static {}, Lorg/apache/logging/log4j/core/appender/rolling/FileExtension;->values()[Lorg/apache/logging/log4j/core/appender/rolling/FileExtension;

    move-result-object v0

    array-length v1, v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_1

    aget-object v3, v0, v2

    .line 89
    .local v3, "ext":Lorg/apache/logging/log4j/core/appender/rolling/FileExtension;
    iget-object v4, v3, Lorg/apache/logging/log4j/core/appender/rolling/FileExtension;->extension:Ljava/lang/String;

    invoke-virtual {p0, v4}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 90
    return-object v3

    .line 88
    .end local v3    # "ext":Lorg/apache/logging/log4j/core/appender/rolling/FileExtension;
    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 93
    :cond_1
    const/4 v0, 0x0

    return-object v0
.end method

.method public static valueOf(Ljava/lang/String;)Lorg/apache/logging/log4j/core/appender/rolling/FileExtension;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8000
        }
        names = {
            "name"
        }
    .end annotation

    .line 30
    const-class v0, Lorg/apache/logging/log4j/core/appender/rolling/FileExtension;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lorg/apache/logging/log4j/core/appender/rolling/FileExtension;

    return-object v0
.end method

.method public static values()[Lorg/apache/logging/log4j/core/appender/rolling/FileExtension;
    .locals 1

    .line 30
    sget-object v0, Lorg/apache/logging/log4j/core/appender/rolling/FileExtension;->$VALUES:[Lorg/apache/logging/log4j/core/appender/rolling/FileExtension;

    invoke-virtual {v0}, [Lorg/apache/logging/log4j/core/appender/rolling/FileExtension;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lorg/apache/logging/log4j/core/appender/rolling/FileExtension;

    return-object v0
.end method


# virtual methods
.method abstract createCompressAction(Ljava/lang/String;Ljava/lang/String;ZI)Lorg/apache/logging/log4j/core/appender/rolling/action/Action;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "renameTo",
            "compressedName",
            "deleteSource",
            "compressionLevel"
        }
    .end annotation
.end method

.method getExtension()Ljava/lang/String;
    .locals 1

    .line 107
    iget-object v0, p0, Lorg/apache/logging/log4j/core/appender/rolling/FileExtension;->extension:Ljava/lang/String;

    return-object v0
.end method

.method isExtensionFor(Ljava/lang/String;)Z
    .locals 1
    .param p1, "s"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10
        }
        names = {
            "s"
        }
    .end annotation

    .line 111
    iget-object v0, p0, Lorg/apache/logging/log4j/core/appender/rolling/FileExtension;->extension:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method length()I
    .locals 1

    .line 115
    iget-object v0, p0, Lorg/apache/logging/log4j/core/appender/rolling/FileExtension;->extension:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    return v0
.end method

.method source(Ljava/lang/String;)Ljava/io/File;
    .locals 1
    .param p1, "fileName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10
        }
        names = {
            "fileName"
        }
    .end annotation

    .line 119
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    return-object v0
.end method

.method target(Ljava/lang/String;)Ljava/io/File;
    .locals 1
    .param p1, "fileName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10
        }
        names = {
            "fileName"
        }
    .end annotation

    .line 123
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    return-object v0
.end method
