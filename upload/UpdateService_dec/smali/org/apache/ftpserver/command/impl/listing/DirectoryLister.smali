.class public Lorg/apache/ftpserver/command/impl/listing/DirectoryLister;
.super Ljava/lang/Object;
.source "DirectoryLister.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 37
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private listFiles(Lorg/apache/ftpserver/ftplet/FileSystemView;Ljava/lang/String;)Ljava/util/List;
    .locals 3
    .param p1, "fileSystemView"    # Lorg/apache/ftpserver/ftplet/FileSystemView;
    .param p2, "file"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/apache/ftpserver/ftplet/FileSystemView;",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List<",
            "+",
            "Lorg/apache/ftpserver/ftplet/FtpFile;",
            ">;"
        }
    .end annotation

    .line 95
    const/4 v0, 0x0

    .line 97
    .local v0, "files":Ljava/util/List;, "Ljava/util/List<+Lorg/apache/ftpserver/ftplet/FtpFile;>;"
    :try_start_0
    invoke-interface {p1, p2}, Lorg/apache/ftpserver/ftplet/FileSystemView;->getFile(Ljava/lang/String;)Lorg/apache/ftpserver/ftplet/FtpFile;

    move-result-object v1

    .line 98
    .local v1, "virtualFile":Lorg/apache/ftpserver/ftplet/FtpFile;
    invoke-interface {v1}, Lorg/apache/ftpserver/ftplet/FtpFile;->isFile()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 99
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 100
    .local v2, "auxFiles":Ljava/util/List;, "Ljava/util/List<Lorg/apache/ftpserver/ftplet/FtpFile;>;"
    invoke-interface {v2, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 101
    move-object v0, v2

    .line 102
    .end local v2    # "auxFiles":Ljava/util/List;, "Ljava/util/List<Lorg/apache/ftpserver/ftplet/FtpFile;>;"
    goto :goto_0

    .line 103
    :cond_0
    invoke-interface {v1}, Lorg/apache/ftpserver/ftplet/FtpFile;->listFiles()Ljava/util/List;

    move-result-object v2
    :try_end_0
    .catch Lorg/apache/ftpserver/ftplet/FtpException; {:try_start_0 .. :try_end_0} :catch_0

    move-object v0, v2

    .line 106
    .end local v1    # "virtualFile":Lorg/apache/ftpserver/ftplet/FtpFile;
    :goto_0
    goto :goto_1

    .line 105
    :catch_0
    move-exception v1

    .line 107
    :goto_1
    return-object v0
.end method

.method private traverseFiles(Ljava/util/List;Lorg/apache/ftpserver/command/impl/listing/FileFilter;Lorg/apache/ftpserver/command/impl/listing/FileFormater;)Ljava/lang/String;
    .locals 2
    .param p2, "filter"    # Lorg/apache/ftpserver/command/impl/listing/FileFilter;
    .param p3, "formater"    # Lorg/apache/ftpserver/command/impl/listing/FileFormater;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "+",
            "Lorg/apache/ftpserver/ftplet/FtpFile;",
            ">;",
            "Lorg/apache/ftpserver/command/impl/listing/FileFilter;",
            "Lorg/apache/ftpserver/command/impl/listing/FileFormater;",
            ")",
            "Ljava/lang/String;"
        }
    .end annotation

    .line 41
    .local p1, "files":Ljava/util/List;, "Ljava/util/List<+Lorg/apache/ftpserver/ftplet/FtpFile;>;"
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 43
    .local v0, "sb":Ljava/lang/StringBuilder;
    const/4 v1, 0x1

    invoke-direct {p0, p1, p2, p3, v1}, Lorg/apache/ftpserver/command/impl/listing/DirectoryLister;->traverseFiles(Ljava/util/List;Lorg/apache/ftpserver/command/impl/listing/FileFilter;Lorg/apache/ftpserver/command/impl/listing/FileFormater;Z)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 44
    const/4 v1, 0x0

    invoke-direct {p0, p1, p2, p3, v1}, Lorg/apache/ftpserver/command/impl/listing/DirectoryLister;->traverseFiles(Ljava/util/List;Lorg/apache/ftpserver/command/impl/listing/FileFilter;Lorg/apache/ftpserver/command/impl/listing/FileFormater;Z)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 46
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method private traverseFiles(Ljava/util/List;Lorg/apache/ftpserver/command/impl/listing/FileFilter;Lorg/apache/ftpserver/command/impl/listing/FileFormater;Z)Ljava/lang/String;
    .locals 4
    .param p2, "filter"    # Lorg/apache/ftpserver/command/impl/listing/FileFilter;
    .param p3, "formater"    # Lorg/apache/ftpserver/command/impl/listing/FileFormater;
    .param p4, "matchDirs"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "+",
            "Lorg/apache/ftpserver/ftplet/FtpFile;",
            ">;",
            "Lorg/apache/ftpserver/command/impl/listing/FileFilter;",
            "Lorg/apache/ftpserver/command/impl/listing/FileFormater;",
            "Z)",
            "Ljava/lang/String;"
        }
    .end annotation

    .line 52
    .local p1, "files":Ljava/util/List;, "Ljava/util/List<+Lorg/apache/ftpserver/ftplet/FtpFile;>;"
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 53
    .local v0, "sb":Ljava/lang/StringBuilder;
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/apache/ftpserver/ftplet/FtpFile;

    .line 54
    .local v2, "file":Lorg/apache/ftpserver/ftplet/FtpFile;
    if-nez v2, :cond_0

    .line 55
    goto :goto_0

    .line 58
    :cond_0
    if-eqz p2, :cond_1

    invoke-interface {p2, v2}, Lorg/apache/ftpserver/command/impl/listing/FileFilter;->accept(Lorg/apache/ftpserver/ftplet/FtpFile;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 59
    :cond_1
    invoke-interface {v2}, Lorg/apache/ftpserver/ftplet/FtpFile;->isDirectory()Z

    move-result v3

    if-ne v3, p4, :cond_2

    .line 60
    invoke-interface {p3, v2}, Lorg/apache/ftpserver/command/impl/listing/FileFormater;->format(Lorg/apache/ftpserver/ftplet/FtpFile;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 63
    .end local v2    # "file":Lorg/apache/ftpserver/ftplet/FtpFile;
    :cond_2
    goto :goto_0

    .line 65
    :cond_3
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method


# virtual methods
.method public listFiles(Lorg/apache/ftpserver/command/impl/listing/ListArgument;Lorg/apache/ftpserver/ftplet/FileSystemView;Lorg/apache/ftpserver/command/impl/listing/FileFormater;)Ljava/lang/String;
    .locals 5
    .param p1, "argument"    # Lorg/apache/ftpserver/command/impl/listing/ListArgument;
    .param p2, "fileSystemView"    # Lorg/apache/ftpserver/ftplet/FileSystemView;
    .param p3, "formater"    # Lorg/apache/ftpserver/command/impl/listing/FileFormater;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 72
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 75
    .local v0, "sb":Ljava/lang/StringBuilder;
    invoke-virtual {p1}, Lorg/apache/ftpserver/command/impl/listing/ListArgument;->getFile()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, p2, v1}, Lorg/apache/ftpserver/command/impl/listing/DirectoryLister;->listFiles(Lorg/apache/ftpserver/ftplet/FileSystemView;Ljava/lang/String;)Ljava/util/List;

    move-result-object v1

    .line 76
    .local v1, "files":Ljava/util/List;, "Ljava/util/List<+Lorg/apache/ftpserver/ftplet/FtpFile;>;"
    if-eqz v1, :cond_2

    .line 77
    const/4 v2, 0x0

    .line 78
    .local v2, "filter":Lorg/apache/ftpserver/command/impl/listing/FileFilter;
    const/16 v3, 0x61

    invoke-virtual {p1, v3}, Lorg/apache/ftpserver/command/impl/listing/ListArgument;->hasOption(C)Z

    move-result v3

    if-nez v3, :cond_0

    .line 79
    new-instance v3, Lorg/apache/ftpserver/command/impl/listing/VisibleFileFilter;

    invoke-direct {v3}, Lorg/apache/ftpserver/command/impl/listing/VisibleFileFilter;-><init>()V

    move-object v2, v3

    .line 81
    :cond_0
    invoke-virtual {p1}, Lorg/apache/ftpserver/command/impl/listing/ListArgument;->getPattern()Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_1

    .line 82
    new-instance v3, Lorg/apache/ftpserver/command/impl/listing/RegexFileFilter;

    invoke-virtual {p1}, Lorg/apache/ftpserver/command/impl/listing/ListArgument;->getPattern()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4, v2}, Lorg/apache/ftpserver/command/impl/listing/RegexFileFilter;-><init>(Ljava/lang/String;Lorg/apache/ftpserver/command/impl/listing/FileFilter;)V

    move-object v2, v3

    .line 85
    :cond_1
    invoke-direct {p0, v1, v2, p3}, Lorg/apache/ftpserver/command/impl/listing/DirectoryLister;->traverseFiles(Ljava/util/List;Lorg/apache/ftpserver/command/impl/listing/FileFilter;Lorg/apache/ftpserver/command/impl/listing/FileFormater;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 88
    .end local v2    # "filter":Lorg/apache/ftpserver/command/impl/listing/FileFilter;
    :cond_2
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    return-object v2
.end method
