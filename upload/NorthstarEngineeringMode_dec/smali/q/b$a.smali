.class public final Lq/b$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lp/r;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lq/b;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lp/r<",
        "Landroid/net/Uri;",
        "Ljava/io/InputStream;",
        ">;"
    }
.end annotation


# virtual methods
.method public final a(Lp/u;)Lp/q;
    .locals 2
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lp/u;",
            ")",
            "Lp/q<",
            "Landroid/net/Uri;",
            "Ljava/io/InputStream;",
            ">;"
        }
    .end annotation

    new-instance p0, Lq/b;

    const-class v0, Lp/i;

    const-class v1, Ljava/io/InputStream;

    invoke-virtual {p1, v0, v1}, Lp/u;->b(Ljava/lang/Class;Ljava/lang/Class;)Lp/q;

    move-result-object p1

    invoke-direct {p0, p1}, Lq/b;-><init>(Lp/q;)V

    return-object p0
.end method
