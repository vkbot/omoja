.class public final synthetic Lw0/g0;
.super Ljava/lang/Object;
.source "r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic b:Lw0/l0;

.field public final synthetic c:I

.field public final synthetic d:I

.field public final synthetic e:I


# direct methods
.method public synthetic constructor <init>(Lw0/l0;III)V
    .registers 5

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lw0/g0;->b:Lw0/l0;

    .line 5
    .line 6
    iput p2, p0, Lw0/g0;->c:I

    .line 7
    .line 8
    iput p3, p0, Lw0/g0;->d:I

    .line 9
    .line 10
    iput p4, p0, Lw0/g0;->e:I

    .line 11
    .line 12
    return-void
.end method


# virtual methods
.method public final run()V
    .registers 5

    .line 1
    iget v0, p0, Lw0/g0;->e:I

    .line 2
    .line 3
    add-int/lit8 v0, v0, 0x1

    .line 4
    .line 5
    iget-object v1, p0, Lw0/g0;->b:Lw0/l0;

    .line 6
    .line 7
    iget v2, p0, Lw0/g0;->c:I

    .line 8
    .line 9
    iget v3, p0, Lw0/g0;->d:I

    .line 10
    .line 11
    invoke-virtual {v1, v2, v3, v0}, Lw0/l0;->h0(III)V

    .line 12
    .line 13
    .line 14
    return-void
.end method
