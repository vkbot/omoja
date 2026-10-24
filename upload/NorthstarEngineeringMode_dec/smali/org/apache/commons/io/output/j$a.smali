.class public final Lorg/apache/commons/io/output/j$a;
.super Lj4/d;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/apache/commons/io/output/j;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lj4/d<",
        "Lorg/apache/commons/io/output/j;",
        "Lorg/apache/commons/io/output/j$a;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lj4/d;-><init>()V

    return-void
.end method


# virtual methods
.method public final k()Lorg/apache/commons/io/output/j;
    .locals 2

    new-instance v0, Lorg/apache/commons/io/output/j;

    iget p0, p0, Lj4/d;->r:I

    invoke-direct {v0}, Lorg/apache/commons/io/output/a;-><init>()V

    if-ltz p0, :cond_0

    invoke-virtual {v0, p0}, Lorg/apache/commons/io/output/a;->needNewBuffer(I)V

    return-object v0

    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Negative initial size: "

    invoke-static {v1, p0}, La4/a;->c(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
