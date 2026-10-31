.class public final Lt1/o;
.super Ljava/lang/Object;
.source "r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75"

# interfaces
.implements Landroid/widget/SeekBar$OnSeekBarChangeListener;


# instance fields
.field public final synthetic a:Z

.field public final synthetic b:Landroid/widget/TextView;

.field public final synthetic c:Lcom/example/navistart/mainview/YMovLay;


# direct methods
.method public constructor <init>(Lcom/example/navistart/mainview/YMovLay;ZLandroid/widget/TextView;)V
    .registers 4

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lt1/o;->c:Lcom/example/navistart/mainview/YMovLay;

    .line 5
    .line 6
    iput-boolean p2, p0, Lt1/o;->a:Z

    .line 7
    .line 8
    iput-object p3, p0, Lt1/o;->b:Landroid/widget/TextView;

    .line 9
    .line 10
    return-void
.end method


# virtual methods
.method public final onProgressChanged(Landroid/widget/SeekBar;IZ)V
    .registers 4

    .line 1
    iget-boolean p1, p0, Lt1/o;->a:Z

    .line 2
    .line 3
    iget-object p3, p0, Lt1/o;->c:Lcom/example/navistart/mainview/YMovLay;

    .line 4
    .line 5
    if-eqz p1, :cond_9

    .line 6
    .line 7
    iget p1, p3, Lcom/example/navistart/mainview/YMovLay;->r:I

    .line 8
    .line 9
    goto :goto_b

    .line 10
    :cond_9
    iget p1, p3, Lcom/example/navistart/mainview/YMovLay;->t:I

    .line 11
    .line 12
    :goto_b
    add-int/2addr p2, p1

    .line 13
    iget-object p1, p0, Lt1/o;->b:Landroid/widget/TextView;

    .line 14
    .line 15
    invoke-static {p2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    .line 16
    .line 17
    .line 18
    move-result-object p2

    .line 19
    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 20
    .line 21
    .line 22
    return-void
.end method

.method public final onStartTrackingTouch(Landroid/widget/SeekBar;)V
    .registers 2

    .line 1
    return-void
.end method

.method public final onStopTrackingTouch(Landroid/widget/SeekBar;)V
    .registers 6

    .line 1
    invoke-virtual {p1}, Landroid/widget/ProgressBar;->getProgress()I

    .line 2
    .line 3
    .line 4
    move-result p1

    .line 5
    iget-boolean v0, p0, Lt1/o;->a:Z

    .line 6
    .line 7
    iget-object v1, p0, Lt1/o;->c:Lcom/example/navistart/mainview/YMovLay;

    .line 8
    .line 9
    if-eqz v0, :cond_d

    .line 10
    .line 11
    iget v2, v1, Lcom/example/navistart/mainview/YMovLay;->r:I

    .line 12
    .line 13
    goto :goto_f

    .line 14
    :cond_d
    iget v2, v1, Lcom/example/navistart/mainview/YMovLay;->t:I

    .line 15
    .line 16
    :goto_f
    add-int/2addr p1, v2

    .line 17
    if-eqz v0, :cond_1c

    .line 18
    .line 19
    iget-object v2, v1, Lcom/example/navistart/mainview/YMovLay;->i:Lcom/google/android/material/textfield/TextInputEditText;

    .line 20
    .line 21
    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    .line 22
    .line 23
    .line 24
    move-result-object v3

    .line 25
    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 26
    .line 27
    .line 28
    goto :goto_25

    .line 29
    :cond_1c
    iget-object v2, v1, Lcom/example/navistart/mainview/YMovLay;->j:Lcom/google/android/material/textfield/TextInputEditText;

    .line 30
    .line 31
    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    .line 32
    .line 33
    .line 34
    move-result-object v3

    .line 35
    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 36
    .line 37
    .line 38
    :goto_25
    iget-object v1, v1, Lcom/example/navistart/mainview/YMovLay;->v:Lt1/p;

    .line 39
    .line 40
    if-eqz v1, :cond_2c

    .line 41
    .line 42
    invoke-interface {v1, p1, v0}, Lt1/p;->a(IZ)V

    .line 43
    .line 44
    .line 45
    :cond_2c
    return-void
.end method
