.class public final Lp/i;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Li/f;


# instance fields
.field public final b:Lp/j;

.field public final c:Ljava/net/URL;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field public final d:Ljava/lang/String;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field public e:Ljava/lang/String;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field public f:Ljava/net/URL;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field public volatile g:[B
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field public h:I


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 2

    .line 5
    sget-object v0, Lp/j;->a:Lp/l;

    .line 6
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v1, 0x0

    iput-object v1, p0, Lp/i;->c:Ljava/net/URL;

    .line 7
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_1

    iput-object p1, p0, Lp/i;->d:Ljava/lang/String;

    if-eqz v0, :cond_0

    iput-object v0, p0, Lp/i;->b:Lp/j;

    return-void

    .line 8
    :cond_0
    new-instance p0, Ljava/lang/NullPointerException;

    const-string p1, "Argument must not be null"

    invoke-direct {p0, p1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 9
    :cond_1
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "Must not be null or empty"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public constructor <init>(Ljava/net/URL;)V
    .locals 2

    .line 1
    sget-object v0, Lp/j;->a:Lp/l;

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v1, "Argument must not be null"

    if-eqz p1, :cond_1

    iput-object p1, p0, Lp/i;->c:Ljava/net/URL;

    const/4 p1, 0x0

    iput-object p1, p0, Lp/i;->d:Ljava/lang/String;

    if-eqz v0, :cond_0

    iput-object v0, p0, Lp/i;->b:Lp/j;

    return-void

    .line 3
    :cond_0
    new-instance p0, Ljava/lang/NullPointerException;

    invoke-direct {p0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 4
    :cond_1
    new-instance p0, Ljava/lang/NullPointerException;

    invoke-direct {p0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p0
.end method


# virtual methods
.method public final a(Ljava/security/MessageDigest;)V
    .locals 2
    .param p1    # Ljava/security/MessageDigest;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    iget-object v0, p0, Lp/i;->g:[B

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lp/i;->c()Ljava/lang/String;

    move-result-object v0

    sget-object v1, Li/f;->a:Ljava/nio/charset/Charset;

    invoke-virtual {v0, v1}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object v0

    iput-object v0, p0, Lp/i;->g:[B

    :cond_0
    iget-object p0, p0, Lp/i;->g:[B

    invoke-virtual {p1, p0}, Ljava/security/MessageDigest;->update([B)V

    return-void
.end method

.method public final c()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lp/i;->d:Ljava/lang/String;

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    iget-object p0, p0, Lp/i;->c:Ljava/net/URL;

    invoke-static {p0}, Lf0/i;->b(Ljava/lang/Object;)V

    invoke-virtual {p0}, Ljava/net/URL;->toString()Ljava/lang/String;

    move-result-object v0

    :goto_0
    return-object v0
.end method

.method public final d()Ljava/net/URL;
    .locals 3

    iget-object v0, p0, Lp/i;->f:Ljava/net/URL;

    if-nez v0, :cond_2

    new-instance v0, Ljava/net/URL;

    iget-object v1, p0, Lp/i;->e:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lp/i;->d:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_0

    iget-object v1, p0, Lp/i;->c:Ljava/net/URL;

    invoke-static {v1}, Lf0/i;->b(Ljava/lang/Object;)V

    invoke-virtual {v1}, Ljava/net/URL;->toString()Ljava/lang/String;

    move-result-object v1

    :cond_0
    const-string v2, "@#&=*+-_.,:!?()/~\'%;$"

    invoke-static {v1, v2}, Landroid/net/Uri;->encode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lp/i;->e:Ljava/lang/String;

    :cond_1
    iget-object v1, p0, Lp/i;->e:Ljava/lang/String;

    invoke-direct {v0, v1}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lp/i;->f:Ljava/net/URL;

    :cond_2
    iget-object p0, p0, Lp/i;->f:Ljava/net/URL;

    return-object p0
.end method

.method public final equals(Ljava/lang/Object;)Z
    .locals 3

    instance-of v0, p1, Lp/i;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    check-cast p1, Lp/i;

    invoke-virtual {p0}, Lp/i;->c()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1}, Lp/i;->c()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object p0, p0, Lp/i;->b:Lp/j;

    iget-object p1, p1, Lp/i;->b:Lp/j;

    invoke-virtual {p0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 v1, 0x1

    :cond_0
    return v1
.end method

.method public final hashCode()I
    .locals 2

    iget v0, p0, Lp/i;->h:I

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lp/i;->c()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    iput v0, p0, Lp/i;->h:I

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lp/i;->b:Lp/j;

    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    move-result v1

    add-int/2addr v1, v0

    iput v1, p0, Lp/i;->h:I

    :cond_0
    iget p0, p0, Lp/i;->h:I

    return p0
.end method

.method public final toString()Ljava/lang/String;
    .locals 0

    invoke-virtual {p0}, Lp/i;->c()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
