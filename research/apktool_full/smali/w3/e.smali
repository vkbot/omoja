.class public final Lw3/e;
.super Lw3/g;
.source "r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75"


# instance fields
.field public final synthetic a:Landroid/content/Context;

.field public final synthetic b:Landroid/text/TextPaint;

.field public final synthetic c:Lw3/g;

.field public final synthetic d:Lw3/f;


# direct methods
.method public constructor <init>(Lw3/f;Landroid/content/Context;Landroid/text/TextPaint;Lw3/g;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lw3/e;->d:Lw3/f;

    .line 5
    .line 6
    iput-object p2, p0, Lw3/e;->a:Landroid/content/Context;

    .line 7
    .line 8
    iput-object p3, p0, Lw3/e;->b:Landroid/text/TextPaint;

    .line 9
    .line 10
    iput-object p4, p0, Lw3/e;->c:Lw3/g;

    .line 11
    .line 12
    return-void
.end method


# virtual methods
.method public final a(I)V
    .locals 1

    .line 1
    iget-object v0, p0, Lw3/e;->c:Lw3/g;

    .line 2
    .line 3
    invoke-virtual {v0, p1}, Lw3/g;->a(I)V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public final b(Landroid/graphics/Typeface;Z)V
    .locals 3

    .line 1
    iget-object v0, p0, Lw3/e;->a:Landroid/content/Context;

    .line 2
    .line 3
    iget-object v1, p0, Lw3/e;->b:Landroid/text/TextPaint;

    .line 4
    .line 5
    iget-object v2, p0, Lw3/e;->d:Lw3/f;

    .line 6
    .line 7
    invoke-virtual {v2, v0, v1, p1}, Lw3/f;->f(Landroid/content/Context;Landroid/text/TextPaint;Landroid/graphics/Typeface;)V

    .line 8
    .line 9
    .line 10
    iget-object v0, p0, Lw3/e;->c:Lw3/g;

    .line 11
    .line 12
    invoke-virtual {v0, p1, p2}, Lw3/g;->b(Landroid/graphics/Typeface;Z)V

    .line 13
    .line 14
    .line 15
    return-void
.end method
