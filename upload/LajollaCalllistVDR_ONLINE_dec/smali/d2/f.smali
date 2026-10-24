.class public final Ld2/f;
.super Ld2/h;
.source "SourceFile"


# instance fields
.field public final synthetic a:Landroid/text/TextPaint;

.field public final synthetic b:Ld2/h;

.field public final synthetic c:Ld2/g;


# direct methods
.method public constructor <init>(Ld2/g;Landroid/text/TextPaint;Ld2/h;)V
    .locals 0

    iput-object p1, p0, Ld2/f;->c:Ld2/g;

    iput-object p2, p0, Ld2/f;->a:Landroid/text/TextPaint;

    iput-object p3, p0, Ld2/f;->b:Ld2/h;

    invoke-direct {p0}, Ld2/h;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(I)V
    .locals 1

    iget-object v0, p0, Ld2/f;->b:Ld2/h;

    invoke-virtual {v0, p1}, Ld2/h;->a(I)V

    return-void
.end method

.method public final b(Landroid/graphics/Typeface;Z)V
    .locals 2

    iget-object v0, p0, Ld2/f;->c:Ld2/g;

    iget-object v1, p0, Ld2/f;->a:Landroid/text/TextPaint;

    invoke-virtual {v0, v1, p1}, Ld2/g;->g(Landroid/text/TextPaint;Landroid/graphics/Typeface;)V

    iget-object v0, p0, Ld2/f;->b:Ld2/h;

    invoke-virtual {v0, p1, p2}, Ld2/h;->b(Landroid/graphics/Typeface;Z)V

    return-void
.end method
