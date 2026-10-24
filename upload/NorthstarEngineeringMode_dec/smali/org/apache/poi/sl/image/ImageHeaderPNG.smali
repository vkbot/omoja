.class public final Lorg/apache/poi/sl/image/ImageHeaderPNG;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static final MAGIC_OFFSET:I = 0x10


# instance fields
.field private final data:[B


# direct methods
.method public constructor <init>([B)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/apache/poi/sl/image/ImageHeaderPNG;->data:[B

    return-void
.end method


# virtual methods
.method public extractPNG()[B
    .locals 3

    iget-object v0, p0, Lorg/apache/poi/sl/image/ImageHeaderPNG;->data:[B

    array-length v1, v0

    const/16 v2, 0x10

    if-lt v1, v2, :cond_0

    array-length v1, v0

    invoke-static {v0, v2, v1}, Ljava/util/Arrays;->copyOfRange([BII)[B

    move-result-object v0

    invoke-static {v0}, Lorg/apache/poi/poifs/filesystem/FileMagic;->valueOf([B)Lorg/apache/poi/poifs/filesystem/FileMagic;

    move-result-object v1

    sget-object v2, Lorg/apache/poi/poifs/filesystem/FileMagic;->PNG:Lorg/apache/poi/poifs/filesystem/FileMagic;

    if-ne v1, v2, :cond_0

    return-object v0

    :cond_0
    iget-object p0, p0, Lorg/apache/poi/sl/image/ImageHeaderPNG;->data:[B

    return-object p0
.end method
