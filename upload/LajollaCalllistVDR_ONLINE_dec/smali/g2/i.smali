.class public final Lg2/i;
.super Lg2/e;
.source "SourceFile"


# instance fields
.field public final g:Lg2/e;

.field public final h:F


# direct methods
.method public constructor <init>(Lg2/f;F)V
    .locals 2

    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Lg2/e;-><init>(ILjava/lang/Object;)V

    iput-object p1, p0, Lg2/i;->g:Lg2/e;

    iput p2, p0, Lg2/i;->h:F

    return-void
.end method


# virtual methods
.method public final b()Z
    .locals 1

    iget-object v0, p0, Lg2/i;->g:Lg2/e;

    invoke-virtual {v0}, Lg2/e;->b()Z

    move-result v0

    return v0
.end method

.method public final c(FFFLg2/w;)V
    .locals 1

    iget v0, p0, Lg2/i;->h:F

    sub-float/2addr p2, v0

    iget-object v0, p0, Lg2/i;->g:Lg2/e;

    invoke-virtual {v0, p1, p2, p3, p4}, Lg2/e;->c(FFFLg2/w;)V

    return-void
.end method
