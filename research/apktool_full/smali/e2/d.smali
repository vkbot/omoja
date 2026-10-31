.class public final Le2/d;
.super Ljava/lang/Object;
.source "r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75"


# instance fields
.field public final a:Landroid/support/v4/media/h;

.field public final b:La5/h;

.field public final c:Ljava/util/HashMap;


# direct methods
.method public constructor <init>(Landroid/content/Context;La5/h;)V
    .locals 1

    .line 1
    new-instance v0, Landroid/support/v4/media/h;

    .line 2
    .line 3
    invoke-direct {v0, p1}, Landroid/support/v4/media/h;-><init>(Landroid/content/Context;)V

    .line 4
    .line 5
    .line 6
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 7
    .line 8
    .line 9
    new-instance p1, Ljava/util/HashMap;

    .line 10
    .line 11
    invoke-direct {p1}, Ljava/util/HashMap;-><init>()V

    .line 12
    .line 13
    .line 14
    iput-object p1, p0, Le2/d;->c:Ljava/util/HashMap;

    .line 15
    .line 16
    iput-object v0, p0, Le2/d;->a:Landroid/support/v4/media/h;

    .line 17
    .line 18
    iput-object p2, p0, Le2/d;->b:La5/h;

    .line 19
    .line 20
    return-void
.end method
