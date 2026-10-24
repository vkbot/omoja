.class public final Lw0/a;
.super Lw0/u;
.source "SourceFile"


# direct methods
.method public constructor <init>()V
    .locals 3

    invoke-direct {p0}, Lw0/u;-><init>()V

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lw0/u;->K(I)V

    new-instance v1, Lw0/h;

    const/4 v2, 0x2

    invoke-direct {v1, v2}, Lw0/h;-><init>(I)V

    invoke-virtual {p0, v1}, Lw0/u;->H(Lw0/p;)V

    new-instance v1, Lw0/f;

    invoke-direct {v1}, Lw0/f;-><init>()V

    invoke-virtual {p0, v1}, Lw0/u;->H(Lw0/p;)V

    new-instance v1, Lw0/h;

    invoke-direct {v1, v0}, Lw0/h;-><init>(I)V

    invoke-virtual {p0, v1}, Lw0/u;->H(Lw0/p;)V

    return-void
.end method
