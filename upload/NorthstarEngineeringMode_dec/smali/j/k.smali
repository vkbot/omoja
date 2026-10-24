.class public final Lj/k;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lj/e;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lj/k$a;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lj/e<",
        "Ljava/io/InputStream;",
        ">;"
    }
.end annotation


# instance fields
.field public final a:Ls/p;


# direct methods
.method public constructor <init>(Ljava/io/InputStream;Lm/b;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ls/p;

    invoke-direct {v0, p1, p2}, Ls/p;-><init>(Ljava/io/InputStream;Lm/b;)V

    iput-object v0, p0, Lj/k;->a:Ls/p;

    const/high16 p0, 0x500000

    invoke-virtual {v0, p0}, Ls/p;->mark(I)V

    return-void
.end method


# virtual methods
.method public final a()Ljava/lang/Object;
    .locals 0
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    iget-object p0, p0, Lj/k;->a:Ls/p;

    invoke-virtual {p0}, Ls/p;->reset()V

    return-object p0
.end method

.method public final b()V
    .locals 0

    iget-object p0, p0, Lj/k;->a:Ls/p;

    invoke-virtual {p0}, Ls/p;->b()V

    return-void
.end method
