.class public final Lorg/apache/commons/io/IORandomAccessFile;
.super Ljava/io/RandomAccessFile;
.source "r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75"


# instance fields
.field private final file:Ljava/io/File;

.field private final mode:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/io/File;Ljava/lang/String;)V
    .registers 3

    .line 18
    invoke-direct {p0, p1, p2}, Ljava/io/RandomAccessFile;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 19
    iput-object p1, p0, Lorg/apache/commons/io/IORandomAccessFile;->file:Ljava/io/File;

    .line 20
    iput-object p2, p0, Lorg/apache/commons/io/IORandomAccessFile;->mode:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .registers 4

    .line 1
    invoke-direct {p0, p1, p2}, Ljava/io/RandomAccessFile;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 2
    .line 3
    .line 4
    if-eqz p1, :cond_b

    .line 5
    .line 6
    new-instance v0, Ljava/io/File;

    .line 7
    .line 8
    invoke-direct {v0, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 9
    .line 10
    .line 11
    goto :goto_c

    .line 12
    :cond_b
    const/4 v0, 0x0

    .line 13
    :goto_c
    iput-object v0, p0, Lorg/apache/commons/io/IORandomAccessFile;->file:Ljava/io/File;

    .line 14
    .line 15
    iput-object p2, p0, Lorg/apache/commons/io/IORandomAccessFile;->mode:Ljava/lang/String;

    .line 16
    .line 17
    return-void
.end method


# virtual methods
.method public getFile()Ljava/io/File;
    .registers 2

    .line 1
    iget-object v0, p0, Lorg/apache/commons/io/IORandomAccessFile;->file:Ljava/io/File;

    .line 2
    .line 3
    return-object v0
.end method

.method public getMode()Ljava/lang/String;
    .registers 2

    .line 1
    iget-object v0, p0, Lorg/apache/commons/io/IORandomAccessFile;->mode:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .registers 2

    .line 1
    iget-object v0, p0, Lorg/apache/commons/io/IORandomAccessFile;->file:Ljava/io/File;

    .line 2
    .line 3
    invoke-static {v0}, Ljava/util/Objects;->toString(Ljava/lang/Object;)Ljava/lang/String;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    return-object v0
.end method
