.class public final Lp/d;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lp/q;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lp/d$a;,
        Lp/d$b;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lp/q<",
        "Ljava/io/File;",
        "Ljava/nio/ByteBuffer;",
        ">;"
    }
.end annotation


# virtual methods
.method public final bridge synthetic a(Ljava/lang/Object;)Z
    .locals 0
    .param p1    # Ljava/lang/Object;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    check-cast p1, Ljava/io/File;

    const/4 p0, 0x1

    return p0
.end method

.method public final b(Ljava/lang/Object;IILi/h;)Lp/q$a;
    .locals 0
    .param p1    # Ljava/lang/Object;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p4    # Li/h;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    check-cast p1, Ljava/io/File;

    new-instance p0, Lp/q$a;

    new-instance p2, Le0/b;

    invoke-direct {p2, p1}, Le0/b;-><init>(Ljava/lang/Object;)V

    new-instance p3, Lp/d$a;

    invoke-direct {p3, p1}, Lp/d$a;-><init>(Ljava/io/File;)V

    invoke-direct {p0, p2, p3}, Lp/q$a;-><init>(Li/f;Lj/d;)V

    return-object p0
.end method
