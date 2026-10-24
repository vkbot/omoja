.class public final Li/h;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Li/f;


# instance fields
.field public final b:Lcom/bumptech/glide/util/CachedHashCodeArrayMap;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lcom/bumptech/glide/util/CachedHashCodeArrayMap;

    invoke-direct {v0}, Lcom/bumptech/glide/util/CachedHashCodeArrayMap;-><init>()V

    iput-object v0, p0, Li/h;->b:Lcom/bumptech/glide/util/CachedHashCodeArrayMap;

    return-void
.end method


# virtual methods
.method public final a(Ljava/security/MessageDigest;)V
    .locals 6
    .param p1    # Ljava/security/MessageDigest;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    const/4 v0, 0x0

    :goto_0
    iget-object v1, p0, Li/h;->b:Lcom/bumptech/glide/util/CachedHashCodeArrayMap;

    invoke-virtual {v1}, Landroidx/collection/SimpleArrayMap;->size()I

    move-result v1

    if-ge v0, v1, :cond_1

    iget-object v1, p0, Li/h;->b:Lcom/bumptech/glide/util/CachedHashCodeArrayMap;

    invoke-virtual {v1, v0}, Landroidx/collection/SimpleArrayMap;->keyAt(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Li/g;

    iget-object v2, p0, Li/h;->b:Lcom/bumptech/glide/util/CachedHashCodeArrayMap;

    invoke-virtual {v2, v0}, Landroidx/collection/SimpleArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v2

    iget-object v3, v1, Li/g;->b:Li/g$b;

    iget-object v4, v1, Li/g;->d:[B

    if-nez v4, :cond_0

    iget-object v4, v1, Li/g;->c:Ljava/lang/String;

    sget-object v5, Li/f;->a:Ljava/nio/charset/Charset;

    invoke-virtual {v4, v5}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object v4

    iput-object v4, v1, Li/g;->d:[B

    :cond_0
    iget-object v1, v1, Li/g;->d:[B

    invoke-interface {v3, v1, v2, p1}, Li/g$b;->a([BLjava/lang/Object;Ljava/security/MessageDigest;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method public final c(Li/g;)Ljava/lang/Object;
    .locals 1
    .param p1    # Li/g;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Li/g<",
            "TT;>;)TT;"
        }
    .end annotation

    iget-object p0, p0, Li/h;->b:Lcom/bumptech/glide/util/CachedHashCodeArrayMap;

    invoke-virtual {p0, p1}, Landroidx/collection/SimpleArrayMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0, p1}, Landroidx/collection/SimpleArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    goto :goto_0

    :cond_0
    iget-object p0, p1, Li/g;->a:Ljava/lang/Object;

    :goto_0
    return-object p0
.end method

.method public final equals(Ljava/lang/Object;)Z
    .locals 1

    instance-of v0, p1, Li/h;

    if-eqz v0, :cond_0

    check-cast p1, Li/h;

    iget-object p0, p0, Li/h;->b:Lcom/bumptech/glide/util/CachedHashCodeArrayMap;

    iget-object p1, p1, Li/h;->b:Lcom/bumptech/glide/util/CachedHashCodeArrayMap;

    invoke-virtual {p0, p1}, Landroidx/collection/SimpleArrayMap;->equals(Ljava/lang/Object;)Z

    move-result p0

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public final hashCode()I
    .locals 0

    iget-object p0, p0, Li/h;->b:Lcom/bumptech/glide/util/CachedHashCodeArrayMap;

    invoke-virtual {p0}, Lcom/bumptech/glide/util/CachedHashCodeArrayMap;->hashCode()I

    move-result p0

    return p0
.end method

.method public final toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Options{values="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object p0, p0, Li/h;->b:Lcom/bumptech/glide/util/CachedHashCodeArrayMap;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const/16 p0, 0x7d

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
