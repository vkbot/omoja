.class public final La5/g$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements La5/f;
.implements Lg5/w;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = La5/g;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "a"
.end annotation


# instance fields
.field public final c:Ljava/lang/String;

.field public volatile r:[La5/f;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, La5/g$a;->c:Ljava/lang/String;

    iput-object v0, p0, La5/g$a;->r:[La5/f;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 1

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 3
    sget-object v0, La5/g;->a:Ljava/util/concurrent/ConcurrentHashMap;

    iput-object p1, p0, La5/g$a;->c:Ljava/lang/String;

    const/4 p1, 0x0

    iput-object p1, p0, La5/g$a;->r:[La5/f;

    return-void
.end method

.method public static varargs b(Ljava/lang/StringBuilder;[La5/f;)V
    .locals 5

    const-string v0, "[ "

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    array-length v0, p1

    const/4 v1, 0x1

    const/4 v2, 0x0

    move v3, v2

    :goto_0
    if-ge v3, v0, :cond_3

    aget-object v4, p1, v3

    if-nez v1, :cond_0

    const-string v1, ", "

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_0
    invoke-interface {v4}, La5/f;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    instance-of v1, v4, La5/g$a;

    if-eqz v1, :cond_1

    check-cast v4, La5/g$a;

    iget-object v1, v4, La5/g$a;->r:[La5/f;

    goto :goto_1

    :cond_1
    invoke-interface {v4}, La5/f;->l()[La5/f;

    move-result-object v1

    :goto_1
    if-eqz v1, :cond_2

    invoke-static {p0, v1}, La5/g$a;->b(Ljava/lang/StringBuilder;[La5/f;)V

    :cond_2
    add-int/lit8 v3, v3, 0x1

    move v1, v2

    goto :goto_0

    :cond_3
    const-string p1, " ]"

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    return-void
.end method


# virtual methods
.method public final a(Ljava/lang/StringBuilder;)V
    .locals 1

    iget-object v0, p0, La5/g$a;->c:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, La5/g$a;->r:[La5/f;

    if-eqz p0, :cond_0

    invoke-static {p1, p0}, La5/g$a;->b(Ljava/lang/StringBuilder;[La5/f;)V

    :cond_0
    return-void
.end method

.method public final equals(Ljava/lang/Object;)Z
    .locals 1

    if-ne p0, p1, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    if-eqz p1, :cond_2

    instance-of v0, p1, La5/f;

    if-nez v0, :cond_1

    goto :goto_0

    :cond_1
    check-cast p1, La5/f;

    iget-object p0, p0, La5/g$a;->c:Ljava/lang/String;

    invoke-interface {p1}, La5/f;->getName()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    return p0

    :cond_2
    :goto_0
    const/4 p0, 0x0

    return p0
.end method

.method public final getName()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, La5/g$a;->c:Ljava/lang/String;

    return-object p0
.end method

.method public final hashCode()I
    .locals 0

    iget-object p0, p0, La5/g$a;->c:Ljava/lang/String;

    invoke-virtual {p0}, Ljava/lang/String;->hashCode()I

    move-result p0

    return p0
.end method

.method public final l()[La5/f;
    .locals 1

    iget-object p0, p0, La5/g$a;->r:[La5/f;

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return-object p0

    :cond_0
    array-length v0, p0

    invoke-static {p0, v0}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object p0

    check-cast p0, [La5/f;

    return-object p0
.end method

.method public final toString()Ljava/lang/String;
    .locals 1

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0, v0}, La5/g$a;->a(Ljava/lang/StringBuilder;)V

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public final varargs y0([La5/f;)La5/g$a;
    .locals 3

    array-length v0, p1

    if-nez v0, :cond_0

    const/4 p1, 0x0

    iput-object p1, p0, La5/g$a;->r:[La5/f;

    goto :goto_0

    :cond_0
    array-length v0, p1

    new-array v0, v0, [La5/f;

    array-length v1, p1

    const/4 v2, 0x0

    invoke-static {p1, v2, v0, v2, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iput-object v0, p0, La5/g$a;->r:[La5/f;

    :goto_0
    return-object p0
.end method
