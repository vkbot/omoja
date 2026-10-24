.class public Lorg/apache/ftpserver/filesystem/nativefs/impl/NameEqualsFileFilter;
.super Ljava/lang/Object;
.source "NameEqualsFileFilter.java"

# interfaces
.implements Ljava/io/FileFilter;


# instance fields
.field private final caseInsensitive:Z

.field private final nameToMatch:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Z)V
    .locals 0
    .param p1, "nameToMatch"    # Ljava/lang/String;
    .param p2, "caseInsensitive"    # Z

    .line 47
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 48
    iput-object p1, p0, Lorg/apache/ftpserver/filesystem/nativefs/impl/NameEqualsFileFilter;->nameToMatch:Ljava/lang/String;

    .line 49
    iput-boolean p2, p0, Lorg/apache/ftpserver/filesystem/nativefs/impl/NameEqualsFileFilter;->caseInsensitive:Z

    .line 50
    return-void
.end method


# virtual methods
.method public accept(Ljava/io/File;)Z
    .locals 2
    .param p1, "file"    # Ljava/io/File;

    .line 54
    iget-boolean v0, p0, Lorg/apache/ftpserver/filesystem/nativefs/impl/NameEqualsFileFilter;->caseInsensitive:Z

    if-eqz v0, :cond_0

    .line 55
    invoke-virtual {p1}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lorg/apache/ftpserver/filesystem/nativefs/impl/NameEqualsFileFilter;->nameToMatch:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    return v0

    .line 57
    :cond_0
    invoke-virtual {p1}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lorg/apache/ftpserver/filesystem/nativefs/impl/NameEqualsFileFilter;->nameToMatch:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method
