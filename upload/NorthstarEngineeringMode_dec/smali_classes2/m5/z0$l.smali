.class public final Lm5/z0$l;
.super Lm5/z0$g;
.source "SourceFile"

# interfaces
.implements Li5/d2;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lm5/z0;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "l"
.end annotation


# instance fields
.field public final h1:Li5/c0;


# direct methods
.method public constructor <init>(Li5/c0;Li5/z1;Lm5/z0;)V
    .locals 1

    invoke-direct {p0}, Lm5/z0$g;-><init>()V

    iput-object p1, p0, Lm5/z0$l;->h1:Li5/c0;

    new-instance p1, Li5/z1;

    invoke-direct {p1, p2}, Li5/z1;-><init>(Li5/z1;)V

    sget-object p2, Li5/z1$a;->V1:Li5/z1$a;

    const/4 v0, 0x1

    invoke-virtual {p1, p2, v0}, Li5/z1;->a(Li5/z1$a;Z)V

    invoke-virtual {p0, p3, p1}, Lm5/z0$g;->a(Lm5/z0;Li5/z1;)V

    return-void
.end method
