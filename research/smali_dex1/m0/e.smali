.class public final synthetic Lm0/e;
.super Ljava/lang/Object;
.source "r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic b:Lm0/i;

.field public final synthetic c:I

.field public final synthetic d:Z


# direct methods
.method public synthetic constructor <init>(Lm0/i;IZ)V
    .registers 4

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lm0/e;->b:Lm0/i;

    .line 5
    .line 6
    iput p2, p0, Lm0/e;->c:I

    .line 7
    .line 8
    iput-boolean p3, p0, Lm0/e;->d:Z

    .line 9
    .line 10
    return-void
.end method


# virtual methods
.method public final run()V
    .registers 5

    .line 1
    iget-object v0, p0, Lm0/e;->b:Lm0/i;

    .line 2
    .line 3
    iget v1, p0, Lm0/e;->c:I

    .line 4
    .line 5
    iget-boolean v2, p0, Lm0/e;->d:Z

    .line 6
    .line 7
    iget v3, v0, Lm0/i;->j:I

    .line 8
    .line 9
    if-ne v1, v3, :cond_19

    .line 10
    .line 11
    invoke-virtual {v0}, Landroidx/fragment/app/Fragment;->isAdded()Z

    .line 12
    .line 13
    .line 14
    move-result v1

    .line 15
    if-nez v1, :cond_11

    .line 16
    .line 17
    goto :goto_19

    .line 18
    :cond_11
    iput-boolean v2, v0, Lm0/i;->h:Z

    .line 19
    .line 20
    const/4 v1, 0x0

    .line 21
    iput-boolean v1, v0, Lm0/i;->i:Z

    .line 22
    .line 23
    invoke-virtual {v0}, Lm0/i;->u()V

    .line 24
    .line 25
    .line 26
    :cond_19
    :goto_19
    return-void
.end method
