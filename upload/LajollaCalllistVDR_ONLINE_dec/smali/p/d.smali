.class public final Lp/d;
.super Lp/g;
.source "SourceFile"


# instance fields
.field public final d:[F


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lp/g;-><init>()V

    const/4 v0, 0x1

    new-array v0, v0, [F

    iput-object v0, p0, Lp/d;->d:[F

    return-void
.end method


# virtual methods
.method public final c(Landroid/view/View;F)V
    .locals 2

    invoke-virtual {p0, p2}, Lp/g;->a(F)F

    move-result p2

    iget-object v0, p0, Lp/d;->d:[F

    const/4 v1, 0x0

    aput p2, v0, v1

    const/4 p2, 0x0

    invoke-static {p2, p1, v0}, Lcom/google/android/material/slider/h;->k1(Ls/b;Landroid/view/View;[F)V

    return-void
.end method
