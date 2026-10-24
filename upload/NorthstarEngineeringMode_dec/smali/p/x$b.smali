.class public final Lp/x$b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lp/r;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lp/x;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "b"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lp/r<",
        "Ljava/lang/String;",
        "Landroid/os/ParcelFileDescriptor;",
        ">;"
    }
.end annotation


# virtual methods
.method public final a(Lp/u;)Lp/q;
    .locals 2
    .param p1    # Lp/u;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lp/u;",
            ")",
            "Lp/q<",
            "Ljava/lang/String;",
            "Landroid/os/ParcelFileDescriptor;",
            ">;"
        }
    .end annotation

    new-instance p0, Lp/x;

    const-class v0, Landroid/net/Uri;

    const-class v1, Landroid/os/ParcelFileDescriptor;

    invoke-virtual {p1, v0, v1}, Lp/u;->b(Ljava/lang/Class;Ljava/lang/Class;)Lp/q;

    move-result-object p1

    invoke-direct {p0, p1}, Lp/x;-><init>(Lp/q;)V

    return-object p0
.end method
