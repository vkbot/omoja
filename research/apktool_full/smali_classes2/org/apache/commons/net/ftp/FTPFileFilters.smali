.class public Lorg/apache/commons/net/ftp/FTPFileFilters;
.super Ljava/lang/Object;
.source "r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75"


# static fields
.field public static final ALL:Lorg/apache/commons/net/ftp/FTPFileFilter;

.field public static final DIRECTORIES:Lorg/apache/commons/net/ftp/FTPFileFilter;

.field public static final NON_NULL:Lorg/apache/commons/net/ftp/FTPFileFilter;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 1
    new-instance v0, Ln0/b;

    .line 2
    .line 3
    const/16 v1, 0x1d

    .line 4
    .line 5
    invoke-direct {v0, v1}, Ln0/b;-><init>(I)V

    .line 6
    .line 7
    .line 8
    sput-object v0, Lorg/apache/commons/net/ftp/FTPFileFilters;->ALL:Lorg/apache/commons/net/ftp/FTPFileFilter;

    .line 9
    .line 10
    new-instance v0, Lorg/apache/commons/net/ftp/a;

    .line 11
    .line 12
    const/4 v1, 0x0

    .line 13
    invoke-direct {v0, v1}, Lorg/apache/commons/net/ftp/a;-><init>(I)V

    .line 14
    .line 15
    .line 16
    sput-object v0, Lorg/apache/commons/net/ftp/FTPFileFilters;->NON_NULL:Lorg/apache/commons/net/ftp/FTPFileFilter;

    .line 17
    .line 18
    new-instance v0, Lorg/apache/commons/net/ftp/a;

    .line 19
    .line 20
    const/4 v1, 0x1

    .line 21
    invoke-direct {v0, v1}, Lorg/apache/commons/net/ftp/a;-><init>(I)V

    .line 22
    .line 23
    .line 24
    sput-object v0, Lorg/apache/commons/net/ftp/FTPFileFilters;->DIRECTORIES:Lorg/apache/commons/net/ftp/FTPFileFilter;

    .line 25
    .line 26
    return-void
.end method

.method public constructor <init>()V
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static synthetic a(Lorg/apache/commons/net/ftp/FTPFile;)Z
    .locals 0

    .line 1
    invoke-static {p0}, Lorg/apache/commons/net/ftp/FTPFileFilters;->lambda$static$0(Lorg/apache/commons/net/ftp/FTPFile;)Z

    .line 2
    .line 3
    .line 4
    move-result p0

    .line 5
    return p0
.end method

.method public static synthetic b(Lorg/apache/commons/net/ftp/FTPFile;)Z
    .locals 0

    .line 1
    invoke-static {p0}, Lorg/apache/commons/net/ftp/FTPFileFilters;->lambda$static$1(Lorg/apache/commons/net/ftp/FTPFile;)Z

    .line 2
    .line 3
    .line 4
    move-result p0

    .line 5
    return p0
.end method

.method private static synthetic lambda$static$0(Lorg/apache/commons/net/ftp/FTPFile;)Z
    .locals 0

    .line 1
    const/4 p0, 0x1

    .line 2
    return p0
.end method

.method private static synthetic lambda$static$1(Lorg/apache/commons/net/ftp/FTPFile;)Z
    .locals 0

    .line 1
    if-eqz p0, :cond_0

    .line 2
    .line 3
    invoke-virtual {p0}, Lorg/apache/commons/net/ftp/FTPFile;->isDirectory()Z

    .line 4
    .line 5
    .line 6
    move-result p0

    .line 7
    if-eqz p0, :cond_0

    .line 8
    .line 9
    const/4 p0, 0x1

    .line 10
    return p0

    .line 11
    :cond_0
    const/4 p0, 0x0

    .line 12
    return p0
.end method
