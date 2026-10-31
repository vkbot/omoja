.class public final Lw3/d;
.super Landroidx/core/content/res/ResourcesCompat$FontCallback;
.source "r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75"


# instance fields
.field public final synthetic a:Lw3/g;

.field public final synthetic b:Lw3/f;


# direct methods
.method public constructor <init>(Lw3/f;Lw3/g;)V
    .registers 3

    .line 1
    iput-object p1, p0, Lw3/d;->b:Lw3/f;

    .line 2
    .line 3
    iput-object p2, p0, Lw3/d;->a:Lw3/g;

    .line 4
    .line 5
    invoke-direct {p0}, Landroidx/core/content/res/ResourcesCompat$FontCallback;-><init>()V

    .line 6
    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public final onFontRetrievalFailed(I)V
    .registers 4

    .line 1
    iget-object v0, p0, Lw3/d;->b:Lw3/f;

    .line 2
    .line 3
    const/4 v1, 0x1

    .line 4
    iput-boolean v1, v0, Lw3/f;->n:Z

    .line 5
    .line 6
    iget-object v0, p0, Lw3/d;->a:Lw3/g;

    .line 7
    .line 8
    invoke-virtual {v0, p1}, Lw3/g;->a(I)V

    .line 9
    .line 10
    .line 11
    return-void
.end method

.method public final onFontRetrieved(Landroid/graphics/Typeface;)V
    .registers 4

    .line 1
    iget-object v0, p0, Lw3/d;->b:Lw3/f;

    .line 2
    .line 3
    iget v1, v0, Lw3/f;->d:I

    .line 4
    .line 5
    invoke-static {p1, v1}, Landroid/graphics/Typeface;->create(Landroid/graphics/Typeface;I)Landroid/graphics/Typeface;

    .line 6
    .line 7
    .line 8
    move-result-object p1

    .line 9
    iput-object p1, v0, Lw3/f;->p:Landroid/graphics/Typeface;

    .line 10
    .line 11
    const/4 v1, 0x1

    .line 12
    iput-boolean v1, v0, Lw3/f;->n:Z

    .line 13
    .line 14
    iget-object v0, p0, Lw3/d;->a:Lw3/g;

    .line 15
    .line 16
    const/4 v1, 0x0

    .line 17
    invoke-virtual {v0, p1, v1}, Lw3/g;->b(Landroid/graphics/Typeface;Z)V

    .line 18
    .line 19
    .line 20
    return-void
.end method
