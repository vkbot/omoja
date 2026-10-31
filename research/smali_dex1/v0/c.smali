.class public final Lv0/c;
.super Ljava/lang/Object;
.source "r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic b:[I

.field public final synthetic c:I

.field public final synthetic d:I

.field public final synthetic e:Landroid/widget/TextView;

.field public final synthetic f:Landroid/os/Handler;

.field public final synthetic g:I


# direct methods
.method public constructor <init>([IIILandroid/widget/TextView;Landroid/os/Handler;I)V
    .registers 7

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lv0/c;->b:[I

    .line 5
    .line 6
    iput p2, p0, Lv0/c;->c:I

    .line 7
    .line 8
    iput p3, p0, Lv0/c;->d:I

    .line 9
    .line 10
    iput-object p4, p0, Lv0/c;->e:Landroid/widget/TextView;

    .line 11
    .line 12
    iput-object p5, p0, Lv0/c;->f:Landroid/os/Handler;

    .line 13
    .line 14
    iput p6, p0, Lv0/c;->g:I

    .line 15
    .line 16
    return-void
.end method


# virtual methods
.method public final run()V
    .registers 7

    .line 1
    iget-object v0, p0, Lv0/c;->b:[I

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    aget v2, v0, v1

    .line 5
    .line 6
    iget v3, p0, Lv0/c;->c:I

    .line 7
    .line 8
    add-int/2addr v2, v3

    .line 9
    iget-object v4, p0, Lv0/c;->e:Landroid/widget/TextView;

    .line 10
    .line 11
    iget v5, p0, Lv0/c;->d:I

    .line 12
    .line 13
    if-lez v3, :cond_10

    .line 14
    .line 15
    if-gt v2, v5, :cond_14

    .line 16
    .line 17
    :cond_10
    if-gez v3, :cond_1e

    .line 18
    .line 19
    if-ge v2, v5, :cond_1e

    .line 20
    .line 21
    :cond_14
    aput v5, v0, v1

    .line 22
    .line 23
    invoke-static {v5}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    .line 24
    .line 25
    .line 26
    move-result-object v0

    .line 27
    invoke-virtual {v4, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 28
    .line 29
    .line 30
    return-void

    .line 31
    :cond_1e
    aput v2, v0, v1

    .line 32
    .line 33
    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    .line 34
    .line 35
    .line 36
    move-result-object v0

    .line 37
    invoke-virtual {v4, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 38
    .line 39
    .line 40
    iget v0, p0, Lv0/c;->g:I

    .line 41
    .line 42
    int-to-long v0, v0

    .line 43
    iget-object v2, p0, Lv0/c;->f:Landroid/os/Handler;

    .line 44
    .line 45
    invoke-virtual {v2, p0, v0, v1}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 46
    .line 47
    .line 48
    return-void
.end method
