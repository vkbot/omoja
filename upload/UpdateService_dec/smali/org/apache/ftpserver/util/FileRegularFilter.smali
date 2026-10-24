.class public Lorg/apache/ftpserver/util/FileRegularFilter;
.super Ljava/lang/Object;
.source "FileRegularFilter.java"

# interfaces
.implements Ljava/io/FilenameFilter;


# instance fields
.field private regularExpr:Lorg/apache/ftpserver/util/RegularExpr;


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 2
    .param p1, "pattern"    # Ljava/lang/String;

    .line 42
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 34
    const/4 v0, 0x0

    iput-object v0, p0, Lorg/apache/ftpserver/util/FileRegularFilter;->regularExpr:Lorg/apache/ftpserver/util/RegularExpr;

    .line 43
    if-eqz p1, :cond_1

    const-string v1, ""

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    const-string v1, "*"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_0

    .line 46
    :cond_0
    new-instance v0, Lorg/apache/ftpserver/util/RegularExpr;

    invoke-direct {v0, p1}, Lorg/apache/ftpserver/util/RegularExpr;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lorg/apache/ftpserver/util/FileRegularFilter;->regularExpr:Lorg/apache/ftpserver/util/RegularExpr;

    goto :goto_1

    .line 44
    :cond_1
    :goto_0
    iput-object v0, p0, Lorg/apache/ftpserver/util/FileRegularFilter;->regularExpr:Lorg/apache/ftpserver/util/RegularExpr;

    .line 48
    :goto_1
    return-void
.end method


# virtual methods
.method public accept(Ljava/io/File;Ljava/lang/String;)Z
    .locals 1
    .param p1, "dir"    # Ljava/io/File;
    .param p2, "name"    # Ljava/lang/String;

    .line 59
    iget-object v0, p0, Lorg/apache/ftpserver/util/FileRegularFilter;->regularExpr:Lorg/apache/ftpserver/util/RegularExpr;

    if-nez v0, :cond_0

    .line 60
    const/4 v0, 0x1

    return v0

    .line 62
    :cond_0
    invoke-virtual {v0, p2}, Lorg/apache/ftpserver/util/RegularExpr;->isMatch(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method
