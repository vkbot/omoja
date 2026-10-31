.class public final Lq4/a;
.super Ljava/lang/Object;
.source "r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75"


# instance fields
.field public final a:Ljava/util/HashMap;

.field public final b:Lk5/b;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lk5/b;)V
    .registers 3

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    new-instance p1, Ljava/util/HashMap;

    .line 5
    .line 6
    invoke-direct {p1}, Ljava/util/HashMap;-><init>()V

    .line 7
    .line 8
    .line 9
    iput-object p1, p0, Lq4/a;->a:Ljava/util/HashMap;

    .line 10
    .line 11
    iput-object p2, p0, Lq4/a;->b:Lk5/b;

    .line 12
    .line 13
    return-void
.end method
