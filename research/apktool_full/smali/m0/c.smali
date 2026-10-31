.class public final synthetic Lm0/c;
.super Ljava/lang/Object;
.source "r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75"

# interfaces
.implements Ljava/util/function/BiConsumer;


# instance fields
.field public final synthetic a:Lm0/i;

.field public final synthetic b:I

.field public final synthetic c:Landroid/content/Context;


# direct methods
.method public synthetic constructor <init>(Lm0/i;ILandroid/content/Context;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lm0/c;->a:Lm0/i;

    .line 5
    .line 6
    iput p2, p0, Lm0/c;->b:I

    .line 7
    .line 8
    iput-object p3, p0, Lm0/c;->c:Landroid/content/Context;

    .line 9
    .line 10
    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 6

    .line 1
    move-object v4, p1

    .line 2
    check-cast v4, Ljava/lang/Integer;

    .line 3
    .line 4
    move-object v5, p2

    .line 5
    check-cast v5, Ljava/lang/Integer;

    .line 6
    .line 7
    iget-object v1, p0, Lm0/c;->a:Lm0/i;

    .line 8
    .line 9
    iget-object p1, v1, Lm0/i;->g:Landroid/os/Handler;

    .line 10
    .line 11
    new-instance v0, Lm0/f;

    .line 12
    .line 13
    iget v2, p0, Lm0/c;->b:I

    .line 14
    .line 15
    iget-object v3, p0, Lm0/c;->c:Landroid/content/Context;

    .line 16
    .line 17
    invoke-direct/range {v0 .. v5}, Lm0/f;-><init>(Lm0/i;ILandroid/content/Context;Ljava/lang/Integer;Ljava/lang/Integer;)V

    .line 18
    .line 19
    .line 20
    invoke-virtual {p1, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 21
    .line 22
    .line 23
    return-void
.end method
