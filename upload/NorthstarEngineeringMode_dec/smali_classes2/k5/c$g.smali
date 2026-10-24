.class public final Lk5/c$g;
.super Lk5/c;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lk5/c;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "g"
.end annotation


# instance fields
.field public c:Ljava/util/Vector;


# virtual methods
.method public final a(I)Lk5/c;
    .locals 0

    iget-object p0, p0, Lk5/c$g;->c:Ljava/util/Vector;

    invoke-virtual {p0, p1}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lk5/c;

    return-object p0
.end method

.method public final g()I
    .locals 0

    iget-object p0, p0, Lk5/c$g;->c:Ljava/util/Vector;

    invoke-virtual {p0}, Ljava/util/Vector;->size()I

    move-result p0

    return p0
.end method
