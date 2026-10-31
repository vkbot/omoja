.class public final Le0/r3;
.super Landroid/os/CountDownTimer;
.source "r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75"


# instance fields
.field public final synthetic a:Lcom/example/navistart/punto;


# direct methods
.method public constructor <init>(Lcom/example/navistart/punto;)V
    .registers 6

    .line 1
    iput-object p1, p0, Le0/r3;->a:Lcom/example/navistart/punto;

    .line 2
    .line 3
    const-wide/32 v0, 0xea60

    .line 4
    .line 5
    .line 6
    const-wide/16 v2, 0x3e8

    .line 7
    .line 8
    invoke-direct {p0, v0, v1, v2, v3}, Landroid/os/CountDownTimer;-><init>(JJ)V

    .line 9
    .line 10
    .line 11
    return-void
.end method


# virtual methods
.method public final onFinish()V
    .registers 5

    .line 1
    iget-object v0, p0, Le0/r3;->a:Lcom/example/navistart/punto;

    .line 2
    .line 3
    iget-object v1, v0, Lcom/example/navistart/punto;->l:Landroid/widget/Button;

    .line 4
    .line 5
    invoke-virtual {v0}, Landroidx/appcompat/app/AppCompatActivity;->getResources()Landroid/content/res/Resources;

    .line 6
    .line 7
    .line 8
    move-result-object v2

    .line 9
    const v3, 0x7f1300db

    .line 10
    .line 11
    .line 12
    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    .line 13
    .line 14
    .line 15
    move-result-object v2

    .line 16
    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 17
    .line 18
    .line 19
    iget-object v0, v0, Lcom/example/navistart/punto;->l:Landroid/widget/Button;

    .line 20
    .line 21
    const/4 v1, 0x1

    .line 22
    invoke-virtual {v0, v1}, Landroid/view/View;->setEnabled(Z)V

    .line 23
    .line 24
    .line 25
    return-void
.end method

.method public final onTick(J)V
    .registers 7

    .line 1
    iget-object v0, p0, Le0/r3;->a:Lcom/example/navistart/punto;

    .line 2
    .line 3
    iget-object v0, v0, Lcom/example/navistart/punto;->l:Landroid/widget/Button;

    .line 4
    .line 5
    new-instance v1, Ljava/lang/StringBuilder;

    .line 6
    .line 7
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 8
    .line 9
    .line 10
    const-wide/16 v2, 0x3e8

    .line 11
    .line 12
    div-long/2addr p1, v2

    .line 13
    invoke-virtual {v1, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 14
    .line 15
    .line 16
    const/4 p1, 0x7

    .line 17
    new-array p1, p1, [B

    .line 18
    .line 19
    fill-array-data p1, :array_2c

    .line 20
    .line 21
    .line 22
    const/16 p2, 0x8

    .line 23
    .line 24
    new-array p2, p2, [B

    .line 25
    .line 26
    fill-array-data p2, :array_34

    .line 27
    .line 28
    .line 29
    invoke-static {p1, p2}, Le0/m;->h([B[B)Ljava/lang/String;

    .line 30
    .line 31
    .line 32
    move-result-object p1

    .line 33
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 34
    .line 35
    .line 36
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 37
    .line 38
    .line 39
    move-result-object p1

    .line 40
    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 41
    .line 42
    .line 43
    return-void

    .line 44
    nop

    .line 45
    :array_2c
    .array-data 1
        0x43t
        0x42t
        0x2ct
        0x1et
        -0x76t
        -0x20t
        -0x47t
    .end array-data

    .line 46
    .line 47
    .line 48
    .line 49
    .line 50
    .line 51
    .line 52
    .line 53
    :array_34
    .array-data 1
        0x63t
        -0x6dt
        -0x53t
        -0x32t
        0x3ft
        0x30t
        0x3t
        -0x28t
    .end array-data
.end method
