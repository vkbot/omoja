.class public Lorg/apache/commons/io/DirectoryWalker$CancelException;
.super Ljava/io/IOException;
.source "r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/apache/commons/io/DirectoryWalker;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "CancelException"
.end annotation


# static fields
.field private static final serialVersionUID:J = 0x12b2b63ef9f577f0L


# instance fields
.field private final depth:I

.field private final file:Ljava/io/File;


# direct methods
.method public constructor <init>(Ljava/io/File;I)V
    .registers 4

    .line 9
    const-string v0, "Operation Cancelled"

    invoke-direct {p0, v0, p1, p2}, Lorg/apache/commons/io/DirectoryWalker$CancelException;-><init>(Ljava/lang/String;Ljava/io/File;I)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/io/File;I)V
    .registers 4

    .line 1
    invoke-direct {p0, p1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    .line 2
    .line 3
    .line 4
    iput-object p2, p0, Lorg/apache/commons/io/DirectoryWalker$CancelException;->file:Ljava/io/File;

    .line 5
    .line 6
    iput p3, p0, Lorg/apache/commons/io/DirectoryWalker$CancelException;->depth:I

    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public getDepth()I
    .registers 2

    .line 1
    iget v0, p0, Lorg/apache/commons/io/DirectoryWalker$CancelException;->depth:I

    .line 2
    .line 3
    return v0
.end method

.method public getFile()Ljava/io/File;
    .registers 2

    .line 1
    iget-object v0, p0, Lorg/apache/commons/io/DirectoryWalker$CancelException;->file:Ljava/io/File;

    .line 2
    .line 3
    return-object v0
.end method
