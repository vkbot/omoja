.class public final Lorg/apache/commons/compress/archivers/zip/t$a;
.super Lorg/apache/commons/compress/archivers/zip/t;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/apache/commons/compress/archivers/zip/t;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "a"
.end annotation


# instance fields
.field public final c1:Ljava/io/OutputStream;


# direct methods
.method public constructor <init>(Ljava/io/OutputStream;Ljava/util/zip/Deflater;)V
    .locals 0

    invoke-direct {p0, p2}, Lorg/apache/commons/compress/archivers/zip/t;-><init>(Ljava/util/zip/Deflater;)V

    iput-object p1, p0, Lorg/apache/commons/compress/archivers/zip/t$a;->c1:Ljava/io/OutputStream;

    return-void
.end method
