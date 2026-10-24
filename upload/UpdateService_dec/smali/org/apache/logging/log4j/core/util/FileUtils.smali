.class public final Lorg/apache/logging/log4j/core/util/FileUtils;
.super Ljava/lang/Object;
.source "FileUtils.java"


# static fields
.field private static final JBOSS_FILE:Ljava/lang/String; = "vfsfile"

.field private static final LOGGER:Lorg/apache/logging/log4j/Logger;

.field private static final PROTOCOL_FILE:Ljava/lang/String; = "file"


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 48
    invoke-static {}, Lorg/apache/logging/log4j/status/StatusLogger;->getLogger()Lorg/apache/logging/log4j/status/StatusLogger;

    move-result-object v0

    sput-object v0, Lorg/apache/logging/log4j/core/util/FileUtils;->LOGGER:Lorg/apache/logging/log4j/Logger;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 50
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 51
    return-void
.end method

.method public static defineFilePosixAttributeView(Ljava/nio/file/Path;Ljava/util/Set;Ljava/lang/String;Ljava/lang/String;)V
    .locals 3
    .param p0, "path"    # Ljava/nio/file/Path;
    .param p2, "fileOwner"    # Ljava/lang/String;
    .param p3, "fileGroup"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10,
            0x10,
            0x10,
            0x10
        }
        names = {
            "path",
            "filePermissions",
            "fileOwner",
            "fileGroup"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/nio/file/Path;",
            "Ljava/util/Set<",
            "Ljava/nio/file/attribute/PosixFilePermission;",
            ">;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 154
    .local p1, "filePermissions":Ljava/util/Set;, "Ljava/util/Set<Ljava/nio/file/attribute/PosixFilePermission;>;"
    const-class v0, Ljava/nio/file/attribute/PosixFileAttributeView;

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/nio/file/LinkOption;

    invoke-static {p0, v0, v1}, Ljava/nio/file/Files;->getFileAttributeView(Ljava/nio/file/Path;Ljava/lang/Class;[Ljava/nio/file/LinkOption;)Ljava/nio/file/attribute/FileAttributeView;

    move-result-object v0

    check-cast v0, Ljava/nio/file/attribute/PosixFileAttributeView;

    .line 155
    .local v0, "view":Ljava/nio/file/attribute/PosixFileAttributeView;
    if-eqz v0, :cond_2

    .line 156
    invoke-static {}, Ljava/nio/file/FileSystems;->getDefault()Ljava/nio/file/FileSystem;

    move-result-object v1

    .line 157
    invoke-virtual {v1}, Ljava/nio/file/FileSystem;->getUserPrincipalLookupService()Ljava/nio/file/attribute/UserPrincipalLookupService;

    move-result-object v1

    .line 158
    .local v1, "lookupService":Ljava/nio/file/attribute/UserPrincipalLookupService;
    if-eqz p2, :cond_0

    .line 159
    invoke-virtual {v1, p2}, Ljava/nio/file/attribute/UserPrincipalLookupService;->lookupPrincipalByName(Ljava/lang/String;)Ljava/nio/file/attribute/UserPrincipal;

    move-result-object v2

    .line 160
    .local v2, "userPrincipal":Ljava/nio/file/attribute/UserPrincipal;
    if-eqz v2, :cond_0

    .line 165
    invoke-interface {v0, v2}, Ljava/nio/file/attribute/PosixFileAttributeView;->setOwner(Ljava/nio/file/attribute/UserPrincipal;)V

    .line 168
    .end local v2    # "userPrincipal":Ljava/nio/file/attribute/UserPrincipal;
    :cond_0
    if-eqz p3, :cond_1

    .line 169
    invoke-virtual {v1, p3}, Ljava/nio/file/attribute/UserPrincipalLookupService;->lookupPrincipalByGroupName(Ljava/lang/String;)Ljava/nio/file/attribute/GroupPrincipal;

    move-result-object v2

    .line 170
    .local v2, "groupPrincipal":Ljava/nio/file/attribute/GroupPrincipal;
    if-eqz v2, :cond_1

    .line 173
    invoke-interface {v0, v2}, Ljava/nio/file/attribute/PosixFileAttributeView;->setGroup(Ljava/nio/file/attribute/GroupPrincipal;)V

    .line 176
    .end local v2    # "groupPrincipal":Ljava/nio/file/attribute/GroupPrincipal;
    :cond_1
    if-eqz p1, :cond_2

    .line 177
    invoke-interface {v0, p1}, Ljava/nio/file/attribute/PosixFileAttributeView;->setPermissions(Ljava/util/Set;)V

    .line 180
    .end local v1    # "lookupService":Ljava/nio/file/attribute/UserPrincipalLookupService;
    :cond_2
    return-void
.end method

.method public static fileFromUri(Ljava/net/URI;)Ljava/io/File;
    .locals 6
    .param p0, "uri"    # Ljava/net/URI;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "uri"
        }
    .end annotation

    .line 60
    const/4 v0, 0x0

    if-nez p0, :cond_0

    .line 61
    return-object v0

    .line 63
    :cond_0
    invoke-virtual {p0}, Ljava/net/URI;->isAbsolute()Z

    move-result v1

    const-string v2, "Invalid URI {}"

    if-eqz v1, :cond_3

    .line 64
    invoke-virtual {p0}, Ljava/net/URI;->getScheme()Ljava/lang/String;

    move-result-object v1

    const-string v3, "vfsfile"

    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    const-string v3, "file"

    if-eqz v1, :cond_1

    .line 67
    :try_start_0
    new-instance v1, Ljava/net/URI;

    invoke-virtual {p0}, Ljava/net/URI;->getSchemeSpecificPart()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p0}, Ljava/net/URI;->getFragment()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v1, v3, v4, v5}, Ljava/net/URI;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/net/URISyntaxException; {:try_start_0 .. :try_end_0} :catch_0

    move-object p0, v1

    .line 70
    goto :goto_0

    .line 68
    :catch_0
    move-exception v1

    .line 73
    :cond_1
    :goto_0
    :try_start_1
    invoke-virtual {p0}, Ljava/net/URI;->getScheme()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 74
    new-instance v1, Ljava/io/File;

    invoke-direct {v1, p0}, Ljava/io/File;-><init>(Ljava/net/URI;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    return-object v1

    .line 76
    :catch_1
    move-exception v1

    .line 77
    .local v1, "ex":Ljava/lang/Exception;
    sget-object v3, Lorg/apache/logging/log4j/core/util/FileUtils;->LOGGER:Lorg/apache/logging/log4j/Logger;

    invoke-interface {v3, v2, p0}, Lorg/apache/logging/log4j/Logger;->warn(Ljava/lang/String;Ljava/lang/Object;)V

    .line 78
    .end local v1    # "ex":Ljava/lang/Exception;
    :cond_2
    goto :goto_1

    .line 80
    :cond_3
    new-instance v1, Ljava/io/File;

    invoke-virtual {p0}, Ljava/net/URI;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v1, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 82
    .local v1, "file":Ljava/io/File;
    :try_start_2
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v3

    if-eqz v3, :cond_4

    .line 83
    return-object v1

    .line 85
    :cond_4
    invoke-virtual {p0}, Ljava/net/URI;->getPath()Ljava/lang/String;

    move-result-object v3

    .line 86
    .local v3, "path":Ljava/lang/String;
    new-instance v4, Ljava/io/File;

    invoke-direct {v4, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2

    return-object v4

    .line 87
    .end local v3    # "path":Ljava/lang/String;
    :catch_2
    move-exception v3

    .line 88
    .local v3, "ex":Ljava/lang/Exception;
    sget-object v4, Lorg/apache/logging/log4j/core/util/FileUtils;->LOGGER:Lorg/apache/logging/log4j/Logger;

    invoke-interface {v4, v2, p0}, Lorg/apache/logging/log4j/Logger;->warn(Ljava/lang/String;Ljava/lang/Object;)V

    .line 91
    .end local v1    # "file":Ljava/io/File;
    .end local v3    # "ex":Ljava/lang/Exception;
    :goto_1
    return-object v0
.end method

.method public static getFileExtension(Ljava/io/File;)Ljava/lang/String;
    .locals 4
    .param p0, "file"    # Ljava/io/File;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10
        }
        names = {
            "file"
        }
    .end annotation

    .line 99
    invoke-virtual {p0}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v0

    .line 100
    .local v0, "fileName":Ljava/lang/String;
    const-string v1, "."

    invoke-virtual {v0, v1}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v2

    const/4 v3, -0x1

    if-eq v2, v3, :cond_0

    invoke-virtual {v0, v1}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v2

    if-eqz v2, :cond_0

    .line 101
    invoke-virtual {v0, v1}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v1

    add-int/lit8 v1, v1, 0x1

    invoke-virtual {v0, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v1

    return-object v1

    .line 103
    :cond_0
    const/4 v1, 0x0

    return-object v1
.end method

.method public static isFile(Ljava/net/URL;)Z
    .locals 2
    .param p0, "url"    # Ljava/net/URL;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10
        }
        names = {
            "url"
        }
    .end annotation

    .line 95
    if-eqz p0, :cond_1

    invoke-virtual {p0}, Ljava/net/URL;->getProtocol()Ljava/lang/String;

    move-result-object v0

    const-string v1, "file"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0}, Ljava/net/URL;->getProtocol()Ljava/lang/String;

    move-result-object v0

    const-string v1, "vfsfile"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public static isFilePosixAttributeViewSupported()Z
    .locals 2

    .line 188
    invoke-static {}, Ljava/nio/file/FileSystems;->getDefault()Ljava/nio/file/FileSystem;

    move-result-object v0

    invoke-virtual {v0}, Ljava/nio/file/FileSystem;->supportedFileAttributeViews()Ljava/util/Set;

    move-result-object v0

    const-string v1, "posix"

    invoke-interface {v0, v1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public static makeParentDirs(Ljava/io/File;)V
    .locals 2
    .param p0, "file"    # Ljava/io/File;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10
        }
        names = {
            "file"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 135
    const-string v0, "file"

    invoke-static {p0, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-object v0, p0

    check-cast v0, Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->getCanonicalFile()Ljava/io/File;

    move-result-object v0

    invoke-virtual {v0}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object v0

    .line 136
    .local v0, "parent":Ljava/io/File;
    if-eqz v0, :cond_0

    .line 137
    const/4 v1, 0x1

    invoke-static {v0, v1}, Lorg/apache/logging/log4j/core/util/FileUtils;->mkdir(Ljava/io/File;Z)V

    .line 139
    :cond_0
    return-void
.end method

.method public static mkdir(Ljava/io/File;Z)V
    .locals 3
    .param p0, "dir"    # Ljava/io/File;
    .param p1, "createDirectoryIfNotExisting"    # Z
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10,
            0x10
        }
        names = {
            "dir",
            "createDirectoryIfNotExisting"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 115
    invoke-virtual {p0}, Ljava/io/File;->exists()Z

    move-result v0

    if-nez v0, :cond_2

    .line 116
    if-eqz p1, :cond_1

    .line 119
    invoke-virtual {p0}, Ljava/io/File;->mkdirs()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 120
    :cond_0
    new-instance v0, Ljava/io/IOException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Could not create directory "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 117
    :cond_1
    new-instance v0, Ljava/io/IOException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "The directory "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " does not exist."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 123
    :cond_2
    :goto_0
    invoke-virtual {p0}, Ljava/io/File;->isDirectory()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 126
    return-void

    .line 124
    :cond_3
    new-instance v0, Ljava/io/IOException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "File "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, " exists and is not a directory. Unable to create directory."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
