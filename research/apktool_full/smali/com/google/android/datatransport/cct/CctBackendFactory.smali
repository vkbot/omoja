.class public Lcom/google/android/datatransport/cct/CctBackendFactory;
.super Ljava/lang/Object;
.source "r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75"


# annotations
.annotation build Landroidx/annotation/Keep;
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    return-void
.end method


# virtual methods
.method public create(Le2/c;)Le2/e;
    .locals 3

    .line 1
    new-instance v0, Lb2/c;

    .line 2
    .line 3
    check-cast p1, Le2/b;

    .line 4
    .line 5
    iget-object v1, p1, Le2/b;->a:Landroid/content/Context;

    .line 6
    .line 7
    iget-object v2, p1, Le2/b;->b:Lm2/a;

    .line 8
    .line 9
    iget-object p1, p1, Le2/b;->c:Lm2/a;

    .line 10
    .line 11
    invoke-direct {v0, v1, v2, p1}, Lb2/c;-><init>(Landroid/content/Context;Lm2/a;Lm2/a;)V

    .line 12
    .line 13
    .line 14
    return-object v0
.end method
