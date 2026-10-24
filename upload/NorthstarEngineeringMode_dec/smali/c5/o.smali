.class public final Lc5/o;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lc5/e;
.implements Lg5/w;
.implements Ljava/lang/CharSequence;


# instance fields
.field public c:Ljava/lang/String;

.field public final transient r:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    const/4 v0, 0x0

    .line 1
    invoke-direct {p0, v0}, Lc5/o;-><init>(Ljava/lang/String;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 0

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lc5/o;->c:Ljava/lang/String;

    iput-object p1, p0, Lc5/o;->r:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final B0()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lc5/o;->c:Ljava/lang/String;

    if-nez v0, :cond_0

    iget-object v0, p0, Lc5/o;->r:Ljava/lang/String;

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    :cond_0
    iput-object v0, p0, Lc5/o;->c:Ljava/lang/String;

    return-object v0
.end method

.method public final E1()Ljava/lang/Throwable;
    .locals 0

    const/4 p0, 0x0

    return-object p0
.end method

.method public final a(Ljava/lang/StringBuilder;)V
    .locals 1

    iget-object v0, p0, Lc5/o;->c:Ljava/lang/String;

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lc5/o;->r:Ljava/lang/String;

    :goto_0
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    return-void
.end method

.method public final charAt(I)C
    .locals 0

    iget-object p0, p0, Lc5/o;->r:Ljava/lang/String;

    invoke-virtual {p0, p1}, Ljava/lang/String;->charAt(I)C

    move-result p0

    return p0
.end method

.method public final equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    instance-of v1, p1, Lc5/o;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    :cond_1
    check-cast p1, Lc5/o;

    iget-object v1, p0, Lc5/o;->r:Ljava/lang/String;

    iget-object v3, p1, Lc5/o;->r:Ljava/lang/String;

    invoke-static {v1, v3}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_3

    invoke-virtual {p0}, Lc5/o;->B0()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1}, Lc5/o;->B0()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_2

    goto :goto_0

    :cond_2
    move v0, v2

    :cond_3
    :goto_0
    return v0
.end method

.method public final getFormat()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lc5/o;->c:Ljava/lang/String;

    return-object p0
.end method

.method public final hashCode()I
    .locals 0

    iget-object p0, p0, Lc5/o;->r:Ljava/lang/String;

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Ljava/lang/Object;->hashCode()I

    move-result p0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public final length()I
    .locals 0

    iget-object p0, p0, Lc5/o;->r:Ljava/lang/String;

    if-nez p0, :cond_0

    const/4 p0, 0x0

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result p0

    :goto_0
    return p0
.end method

.method public final o()[Ljava/lang/Object;
    .locals 0

    const/4 p0, 0x0

    return-object p0
.end method

.method public final subSequence(II)Ljava/lang/CharSequence;
    .locals 0

    iget-object p0, p0, Lc5/o;->r:Ljava/lang/String;

    invoke-virtual {p0, p1, p2}, Ljava/lang/String;->subSequence(II)Ljava/lang/CharSequence;

    move-result-object p0

    return-object p0
.end method

.method public final toString()Ljava/lang/String;
    .locals 0

    invoke-virtual {p0}, Lc5/o;->B0()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
