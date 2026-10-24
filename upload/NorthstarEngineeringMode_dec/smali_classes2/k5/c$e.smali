.class public final Lk5/c$e;
.super Lk5/c;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lk5/c;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "e"
.end annotation


# instance fields
.field public c:Lk5/m;


# virtual methods
.method public final f()Lk5/f;
    .locals 0

    iget-object p0, p0, Lk5/c$e;->c:Lk5/m;

    check-cast p0, Lk5/f;

    return-object p0
.end method
