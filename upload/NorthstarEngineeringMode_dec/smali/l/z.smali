.class public final Ll/z;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Li/f;


# static fields
.field public static final j:Lf0/f;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lf0/f<",
            "Ljava/lang/Class<",
            "*>;[B>;"
        }
    .end annotation
.end field


# instance fields
.field public final b:Lm/b;

.field public final c:Li/f;

.field public final d:Li/f;

.field public final e:I

.field public final f:I

.field public final g:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class<",
            "*>;"
        }
    .end annotation
.end field

.field public final h:Li/h;

.field public final i:Li/l;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Li/l<",
            "*>;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 3

    new-instance v0, Lf0/f;

    const-wide/16 v1, 0x32

    invoke-direct {v0, v1, v2}, Lf0/f;-><init>(J)V

    sput-object v0, Ll/z;->j:Lf0/f;

    return-void
.end method

.method public constructor <init>(Lm/b;Li/f;Li/f;IILi/l;Ljava/lang/Class;Li/h;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lm/b;",
            "Li/f;",
            "Li/f;",
            "II",
            "Li/l<",
            "*>;",
            "Ljava/lang/Class<",
            "*>;",
            "Li/h;",
            ")V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Ll/z;->b:Lm/b;

    iput-object p2, p0, Ll/z;->c:Li/f;

    iput-object p3, p0, Ll/z;->d:Li/f;

    iput p4, p0, Ll/z;->e:I

    iput p5, p0, Ll/z;->f:I

    iput-object p6, p0, Ll/z;->i:Li/l;

    iput-object p7, p0, Ll/z;->g:Ljava/lang/Class;

    iput-object p8, p0, Ll/z;->h:Li/h;

    return-void
.end method


# virtual methods
.method public final a(Ljava/security/MessageDigest;)V
    .locals 5
    .param p1    # Ljava/security/MessageDigest;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    iget-object v0, p0, Ll/z;->b:Lm/b;

    invoke-interface {v0}, Lm/b;->e()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [B

    invoke-static {v1}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;

    move-result-object v2

    iget v3, p0, Ll/z;->e:I

    invoke-virtual {v2, v3}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    move-result-object v2

    iget v3, p0, Ll/z;->f:I

    invoke-virtual {v2, v3}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    move-result-object v2

    invoke-virtual {v2}, Ljava/nio/ByteBuffer;->array()[B

    iget-object v2, p0, Ll/z;->d:Li/f;

    invoke-interface {v2, p1}, Li/f;->a(Ljava/security/MessageDigest;)V

    iget-object v2, p0, Ll/z;->c:Li/f;

    invoke-interface {v2, p1}, Li/f;->a(Ljava/security/MessageDigest;)V

    invoke-virtual {p1, v1}, Ljava/security/MessageDigest;->update([B)V

    iget-object v2, p0, Ll/z;->i:Li/l;

    if-eqz v2, :cond_0

    invoke-interface {v2, p1}, Li/f;->a(Ljava/security/MessageDigest;)V

    :cond_0
    iget-object v2, p0, Ll/z;->h:Li/h;

    invoke-virtual {v2, p1}, Li/h;->a(Ljava/security/MessageDigest;)V

    sget-object v2, Ll/z;->j:Lf0/f;

    iget-object p0, p0, Ll/z;->g:Ljava/lang/Class;

    invoke-virtual {v2, p0}, Lf0/f;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, [B

    if-nez v3, :cond_1

    invoke-virtual {p0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v3

    sget-object v4, Li/f;->a:Ljava/nio/charset/Charset;

    invoke-virtual {v3, v4}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object v3

    invoke-virtual {v2, p0, v3}, Lf0/f;->d(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_1
    invoke-virtual {p1, v3}, Ljava/security/MessageDigest;->update([B)V

    invoke-interface {v0, v1}, Lm/b;->d(Ljava/lang/Object;)V

    return-void
.end method

.method public final equals(Ljava/lang/Object;)Z
    .locals 3

    instance-of v0, p1, Ll/z;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    check-cast p1, Ll/z;

    iget v0, p1, Ll/z;->f:I

    iget v2, p0, Ll/z;->f:I

    if-ne v2, v0, :cond_0

    iget v0, p0, Ll/z;->e:I

    iget v2, p1, Ll/z;->e:I

    if-ne v0, v2, :cond_0

    iget-object v0, p0, Ll/z;->i:Li/l;

    iget-object v2, p1, Ll/z;->i:Li/l;

    invoke-static {v0, v2}, Lf0/j;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Ll/z;->g:Ljava/lang/Class;

    iget-object v2, p1, Ll/z;->g:Ljava/lang/Class;

    invoke-virtual {v0, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Ll/z;->c:Li/f;

    iget-object v2, p1, Ll/z;->c:Li/f;

    invoke-interface {v0, v2}, Li/f;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Ll/z;->d:Li/f;

    iget-object v2, p1, Ll/z;->d:Li/f;

    invoke-interface {v0, v2}, Li/f;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object p0, p0, Ll/z;->h:Li/h;

    iget-object p1, p1, Ll/z;->h:Li/h;

    invoke-virtual {p0, p1}, Li/h;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 v1, 0x1

    :cond_0
    return v1
.end method

.method public final hashCode()I
    .locals 2

    iget-object v0, p0, Ll/z;->c:Li/f;

    invoke-interface {v0}, Li/f;->hashCode()I

    move-result v0

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Ll/z;->d:Li/f;

    invoke-interface {v1}, Li/f;->hashCode()I

    move-result v1

    add-int/2addr v1, v0

    mul-int/lit8 v1, v1, 0x1f

    iget v0, p0, Ll/z;->e:I

    add-int/2addr v1, v0

    mul-int/lit8 v1, v1, 0x1f

    iget v0, p0, Ll/z;->f:I

    add-int/2addr v1, v0

    iget-object v0, p0, Ll/z;->i:Li/l;

    if-eqz v0, :cond_0

    mul-int/lit8 v1, v1, 0x1f

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    add-int/2addr v1, v0

    :cond_0
    mul-int/lit8 v1, v1, 0x1f

    iget-object v0, p0, Ll/z;->g:Ljava/lang/Class;

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-object p0, p0, Ll/z;->h:Li/h;

    iget-object p0, p0, Li/h;->b:Lcom/bumptech/glide/util/CachedHashCodeArrayMap;

    invoke-virtual {p0}, Lcom/bumptech/glide/util/CachedHashCodeArrayMap;->hashCode()I

    move-result p0

    add-int/2addr p0, v0

    return p0
.end method

.method public final toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "ResourceCacheKey{sourceKey="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Ll/z;->c:Li/f;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", signature="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Ll/z;->d:Li/f;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", width="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Ll/z;->e:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", height="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Ll/z;->f:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", decodedResourceClass="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Ll/z;->g:Ljava/lang/Class;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", transformation=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Ll/z;->i:Li/l;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, "\', options="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Ll/z;->h:Li/h;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const/16 p0, 0x7d

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
