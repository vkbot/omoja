.class public final synthetic Li7/t;
.super Ljava/lang/Object;
.source "r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic b:I

.field public final synthetic c:Landroid/widget/SeekBar;

.field public final synthetic d:I

.field public final synthetic e:Landroid/widget/TextView;

.field public final synthetic f:I


# direct methods
.method public synthetic constructor <init>(Landroid/widget/SeekBar;ILandroid/widget/TextView;II)V
    .registers 6

    .line 1
    iput p5, p0, Li7/t;->b:I

    .line 2
    .line 3
    iput-object p1, p0, Li7/t;->c:Landroid/widget/SeekBar;

    .line 4
    .line 5
    iput p2, p0, Li7/t;->d:I

    .line 6
    .line 7
    iput-object p3, p0, Li7/t;->e:Landroid/widget/TextView;

    .line 8
    .line 9
    iput p4, p0, Li7/t;->f:I

    .line 10
    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 12
    .line 13
    .line 14
    return-void
.end method


# virtual methods
.method public final run()V
    .registers 6

    .line 1
    iget v0, p0, Li7/t;->b:I

    .line 2
    .line 3
    iget v1, p0, Li7/t;->f:I

    .line 4
    .line 5
    iget-object v2, p0, Li7/t;->e:Landroid/widget/TextView;

    .line 6
    .line 7
    iget v3, p0, Li7/t;->d:I

    .line 8
    .line 9
    iget-object v4, p0, Li7/t;->c:Landroid/widget/SeekBar;

    .line 10
    .line 11
    packed-switch v0, :pswitch_data_26

    .line 12
    .line 13
    .line 14
    sget-object v0, Lm0/y1;->e:Ljava/lang/String;

    .line 15
    .line 16
    invoke-virtual {v4, v3}, Landroid/widget/ProgressBar;->setProgress(I)V

    .line 17
    .line 18
    .line 19
    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    .line 20
    .line 21
    .line 22
    move-result-object v0

    .line 23
    invoke-virtual {v2, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 24
    .line 25
    .line 26
    return-void

    .line 27
    :pswitch_1a
    invoke-virtual {v4, v3}, Landroid/widget/ProgressBar;->setProgress(I)V

    .line 28
    .line 29
    .line 30
    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    .line 31
    .line 32
    .line 33
    move-result-object v0

    .line 34
    invoke-virtual {v2, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 35
    .line 36
    .line 37
    return-void

    .line 38
    nop

    .line 39
    :pswitch_data_26
    .packed-switch 0x0
        :pswitch_1a
    .end packed-switch
.end method
