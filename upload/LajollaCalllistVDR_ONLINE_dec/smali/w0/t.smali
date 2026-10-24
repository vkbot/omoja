.class public final Lw0/t;
.super Lw0/q;
.source "SourceFile"


# instance fields
.field public final a:Lw0/u;


# direct methods
.method public constructor <init>(Lw0/u;)V
    .locals 0

    invoke-direct {p0}, Lw0/q;-><init>()V

    iput-object p1, p0, Lw0/t;->a:Lw0/u;

    return-void
.end method


# virtual methods
.method public final b()V
    .locals 2

    iget-object v0, p0, Lw0/t;->a:Lw0/u;

    iget-boolean v1, v0, Lw0/u;->B:Z

    if-nez v1, :cond_0

    invoke-virtual {v0}, Lw0/p;->F()V

    const/4 v1, 0x1

    iput-boolean v1, v0, Lw0/u;->B:Z

    :cond_0
    return-void
.end method

.method public final d(Lw0/p;)V
    .locals 2

    iget-object v0, p0, Lw0/t;->a:Lw0/u;

    iget v1, v0, Lw0/u;->A:I

    add-int/lit8 v1, v1, -0x1

    iput v1, v0, Lw0/u;->A:I

    if-nez v1, :cond_0

    const/4 v1, 0x0

    iput-boolean v1, v0, Lw0/u;->B:Z

    invoke-virtual {v0}, Lw0/p;->m()V

    :cond_0
    invoke-virtual {p1, p0}, Lw0/p;->v(Lw0/o;)V

    return-void
.end method
