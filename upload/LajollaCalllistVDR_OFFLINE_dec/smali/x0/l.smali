.class public final Lx0/l;
.super Landroid/graphics/drawable/Drawable$ConstantState;
.source "SourceFile"


# instance fields
.field public a:I

.field public b:Lx0/k;

.field public c:Landroid/content/res/ColorStateList;

.field public d:Landroid/graphics/PorterDuff$Mode;

.field public e:Z

.field public f:Landroid/graphics/Bitmap;

.field public g:Landroid/content/res/ColorStateList;

.field public h:Landroid/graphics/PorterDuff$Mode;

.field public i:I

.field public j:Z

.field public k:Z

.field public l:Landroid/graphics/Paint;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 13
    invoke-direct {p0}, Landroid/graphics/drawable/Drawable$ConstantState;-><init>()V

    const/4 v0, 0x0

    .line 14
    iput-object v0, p0, Lx0/l;->c:Landroid/content/res/ColorStateList;

    .line 15
    sget-object v0, Lx0/n;->j:Landroid/graphics/PorterDuff$Mode;

    iput-object v0, p0, Lx0/l;->d:Landroid/graphics/PorterDuff$Mode;

    .line 16
    new-instance v0, Lx0/k;

    invoke-direct {v0}, Lx0/k;-><init>()V

    iput-object v0, p0, Lx0/l;->b:Lx0/k;

    return-void
.end method

.method public constructor <init>(Lx0/l;)V
    .locals 3

    .line 1
    invoke-direct {p0}, Landroid/graphics/drawable/Drawable$ConstantState;-><init>()V

    const/4 v0, 0x0

    .line 2
    iput-object v0, p0, Lx0/l;->c:Landroid/content/res/ColorStateList;

    .line 3
    sget-object v0, Lx0/n;->j:Landroid/graphics/PorterDuff$Mode;

    iput-object v0, p0, Lx0/l;->d:Landroid/graphics/PorterDuff$Mode;

    if-eqz p1, :cond_2

    .line 4
    iget v0, p1, Lx0/l;->a:I

    iput v0, p0, Lx0/l;->a:I

    .line 5
    new-instance v0, Lx0/k;

    iget-object v1, p1, Lx0/l;->b:Lx0/k;

    invoke-direct {v0, v1}, Lx0/k;-><init>(Lx0/k;)V

    iput-object v0, p0, Lx0/l;->b:Lx0/k;

    .line 6
    iget-object v1, p1, Lx0/l;->b:Lx0/k;

    iget-object v1, v1, Lx0/k;->e:Landroid/graphics/Paint;

    if-eqz v1, :cond_0

    .line 7
    new-instance v1, Landroid/graphics/Paint;

    iget-object v2, p1, Lx0/l;->b:Lx0/k;

    iget-object v2, v2, Lx0/k;->e:Landroid/graphics/Paint;

    invoke-direct {v1, v2}, Landroid/graphics/Paint;-><init>(Landroid/graphics/Paint;)V

    iput-object v1, v0, Lx0/k;->e:Landroid/graphics/Paint;

    .line 8
    :cond_0
    iget-object v0, p1, Lx0/l;->b:Lx0/k;

    iget-object v0, v0, Lx0/k;->d:Landroid/graphics/Paint;

    if-eqz v0, :cond_1

    .line 9
    iget-object v0, p0, Lx0/l;->b:Lx0/k;

    new-instance v1, Landroid/graphics/Paint;

    iget-object v2, p1, Lx0/l;->b:Lx0/k;

    iget-object v2, v2, Lx0/k;->d:Landroid/graphics/Paint;

    invoke-direct {v1, v2}, Landroid/graphics/Paint;-><init>(Landroid/graphics/Paint;)V

    iput-object v1, v0, Lx0/k;->d:Landroid/graphics/Paint;

    .line 10
    :cond_1
    iget-object v0, p1, Lx0/l;->c:Landroid/content/res/ColorStateList;

    iput-object v0, p0, Lx0/l;->c:Landroid/content/res/ColorStateList;

    .line 11
    iget-object v0, p1, Lx0/l;->d:Landroid/graphics/PorterDuff$Mode;

    iput-object v0, p0, Lx0/l;->d:Landroid/graphics/PorterDuff$Mode;

    .line 12
    iget-boolean p1, p1, Lx0/l;->e:Z

    iput-boolean p1, p0, Lx0/l;->e:Z

    :cond_2
    return-void
.end method


# virtual methods
.method public getChangingConfigurations()I
    .locals 0

    iget p0, p0, Lx0/l;->a:I

    return p0
.end method

.method public final newDrawable()Landroid/graphics/drawable/Drawable;
    .locals 1

    .line 1
    new-instance v0, Lx0/n;

    invoke-direct {v0, p0}, Lx0/n;-><init>(Lx0/l;)V

    return-object v0
.end method

.method public final newDrawable(Landroid/content/res/Resources;)Landroid/graphics/drawable/Drawable;
    .locals 0

    .line 2
    new-instance p1, Lx0/n;

    invoke-direct {p1, p0}, Lx0/n;-><init>(Lx0/l;)V

    return-object p1
.end method
