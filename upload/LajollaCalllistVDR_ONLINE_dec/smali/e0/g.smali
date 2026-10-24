.class public abstract Le0/g;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final a:Ljava/lang/Object;


# direct methods
.method public synthetic constructor <init>(Ljava/lang/Object;)V
    .locals 0

    iput-object p1, p0, Le0/g;->a:Ljava/lang/Object;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public abstract a()Z
.end method

.method public abstract b(Ljava/lang/Object;)F
.end method

.method public final c(Ljava/lang/CharSequence;I)Z
    .locals 1

    if-eqz p1, :cond_3

    if-ltz p2, :cond_3

    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v0

    sub-int/2addr v0, p2

    if-ltz v0, :cond_3

    iget-object v0, p0, Le0/g;->a:Ljava/lang/Object;

    check-cast v0, Le0/f;

    if-nez v0, :cond_0

    invoke-virtual {p0}, Le0/g;->a()Z

    move-result p1

    return p1

    :cond_0
    invoke-interface {v0, p1, p2}, Le0/f;->a(Ljava/lang/CharSequence;I)I

    move-result p1

    const/4 p2, 0x1

    if-eqz p1, :cond_2

    if-eq p1, p2, :cond_1

    invoke-virtual {p0}, Le0/g;->a()Z

    move-result p2

    goto :goto_0

    :cond_1
    const/4 p2, 0x0

    :cond_2
    :goto_0
    return p2

    :cond_3
    new-instance p1, Ljava/lang/IllegalArgumentException;

    invoke-direct {p1}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw p1
.end method

.method public abstract d(Ljava/lang/Object;F)V
.end method
