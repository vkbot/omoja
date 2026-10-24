.class public final Ld2/e;
.super Lx/k;
.source "SourceFile"


# instance fields
.field public final synthetic a:Ld2/h;

.field public final synthetic b:Ld2/g;


# direct methods
.method public constructor <init>(Ld2/g;Ld2/h;)V
    .locals 0

    iput-object p1, p0, Ld2/e;->b:Ld2/g;

    iput-object p2, p0, Ld2/e;->a:Ld2/h;

    invoke-direct {p0}, Lx/k;-><init>()V

    return-void
.end method


# virtual methods
.method public final c(I)V
    .locals 2

    iget-object v0, p0, Ld2/e;->b:Ld2/g;

    const/4 v1, 0x1

    iput-boolean v1, v0, Ld2/g;->m:Z

    iget-object v0, p0, Ld2/e;->a:Ld2/h;

    invoke-virtual {v0, p1}, Ld2/h;->a(I)V

    return-void
.end method

.method public final d(Landroid/graphics/Typeface;)V
    .locals 2

    iget-object v0, p0, Ld2/e;->b:Ld2/g;

    iget v1, v0, Ld2/g;->c:I

    invoke-static {p1, v1}, Landroid/graphics/Typeface;->create(Landroid/graphics/Typeface;I)Landroid/graphics/Typeface;

    move-result-object p1

    iput-object p1, v0, Ld2/g;->n:Landroid/graphics/Typeface;

    const/4 p1, 0x1

    iput-boolean p1, v0, Ld2/g;->m:Z

    iget-object p1, v0, Ld2/g;->n:Landroid/graphics/Typeface;

    const/4 v0, 0x0

    iget-object v1, p0, Ld2/e;->a:Ld2/h;

    invoke-virtual {v1, p1, v0}, Ld2/h;->b(Landroid/graphics/Typeface;Z)V

    return-void
.end method
