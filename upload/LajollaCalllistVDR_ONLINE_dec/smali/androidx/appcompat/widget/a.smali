.class public final Landroidx/appcompat/widget/a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lg0/w0;


# instance fields
.field public b:Z

.field public c:I

.field public final synthetic d:Landroidx/appcompat/widget/b;


# direct methods
.method public constructor <init>(Landroidx/appcompat/widget/b;)V
    .locals 0

    iput-object p1, p0, Landroidx/appcompat/widget/a;->d:Landroidx/appcompat/widget/b;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 p1, 0x0

    iput-boolean p1, p0, Landroidx/appcompat/widget/a;->b:Z

    return-void
.end method


# virtual methods
.method public final b()V
    .locals 2

    iget-boolean v0, p0, Landroidx/appcompat/widget/a;->b:Z

    if-eqz v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Landroidx/appcompat/widget/a;->d:Landroidx/appcompat/widget/b;

    const/4 v1, 0x0

    iput-object v1, v0, Landroidx/appcompat/widget/b;->g:Lg0/v0;

    iget v1, p0, Landroidx/appcompat/widget/a;->c:I

    invoke-static {v0, v1}, Landroidx/appcompat/widget/b;->b(Landroidx/appcompat/widget/b;I)V

    return-void
.end method

.method public final e(Landroid/view/View;)V
    .locals 0

    const/4 p1, 0x1

    iput-boolean p1, p0, Landroidx/appcompat/widget/a;->b:Z

    return-void
.end method

.method public final f()V
    .locals 1

    iget-object v0, p0, Landroidx/appcompat/widget/a;->d:Landroidx/appcompat/widget/b;

    invoke-static {v0}, Landroidx/appcompat/widget/b;->a(Landroidx/appcompat/widget/b;)V

    const/4 v0, 0x0

    iput-boolean v0, p0, Landroidx/appcompat/widget/a;->b:Z

    return-void
.end method
