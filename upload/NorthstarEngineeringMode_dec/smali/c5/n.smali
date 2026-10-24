.class public final Lc5/n;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lc5/e;
.implements Lg5/w;
.implements Ljava/lang/CharSequence;
.implements Lc5/b;


# instance fields
.field public c:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final B0()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lc5/n;->c:Ljava/lang/String;

    invoke-static {p0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public final E1()Ljava/lang/Throwable;
    .locals 0

    const/4 p0, 0x0

    return-object p0
.end method

.method public final a(Ljava/lang/StringBuilder;)V
    .locals 0

    iget-object p0, p0, Lc5/n;->c:Ljava/lang/String;

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    return-void
.end method

.method public final charAt(I)C
    .locals 0

    iget-object p0, p0, Lc5/n;->c:Ljava/lang/String;

    invoke-virtual {p0, p1}, Ljava/lang/String;->charAt(I)C

    move-result p0

    return p0
.end method

.method public final clear()V
    .locals 1

    const/4 v0, 0x0

    iput-object v0, p0, Lc5/n;->c:Ljava/lang/String;

    return-void
.end method

.method public final getFormat()Ljava/lang/String;
    .locals 1

    iget-object p0, p0, Lc5/n;->c:Ljava/lang/String;

    instance-of v0, p0, Ljava/lang/String;

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return-object p0
.end method

.method public final length()I
    .locals 0

    iget-object p0, p0, Lc5/n;->c:Ljava/lang/String;

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

    sget-object p0, Lg5/a;->d:[Ljava/lang/Object;

    return-object p0
.end method

.method public final subSequence(II)Ljava/lang/CharSequence;
    .locals 0

    iget-object p0, p0, Lc5/n;->c:Ljava/lang/String;

    invoke-virtual {p0, p1, p2}, Ljava/lang/String;->subSequence(II)Ljava/lang/CharSequence;

    move-result-object p0

    return-object p0
.end method
