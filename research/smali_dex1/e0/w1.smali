.class public final synthetic Le0/w1;
.super Ljava/lang/Object;
.source "r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic b:I

.field public final synthetic c:I


# direct methods
.method public synthetic constructor <init>(II)V
    .registers 3

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput p1, p0, Le0/w1;->b:I

    .line 5
    .line 6
    iput p2, p0, Le0/w1;->c:I

    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public final run()V
    .registers 4

    .line 1
    invoke-static {}, Lh0/b;->a()Lh0/b;

    .line 2
    .line 3
    .line 4
    invoke-static {}, Lh0/b;->a()Lh0/b;

    .line 5
    .line 6
    .line 7
    invoke-static {}, Lh0/b;->n()Lcom/example/navistart/cores/ProLanProxy;

    .line 8
    .line 9
    .line 10
    move-result-object v0

    .line 11
    iget v1, p0, Le0/w1;->b:I

    .line 12
    .line 13
    iget v2, p0, Le0/w1;->c:I

    .line 14
    .line 15
    invoke-interface {v0, v1, v2}, Lcom/example/navistart/cores/ProLanProxy;->setMusicPlayTime(II)V

    .line 16
    .line 17
    .line 18
    return-void
.end method
